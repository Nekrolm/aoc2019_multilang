with Ada.Text_IO;         use Ada.Text_IO;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Unbounded.Text_IO; use Ada.Strings.Unbounded.Text_IO;

with Ada.Containers; use Ada.Containers;
with Ada.Containers.Vectors;
with Ada.Containers.Ordered_Sets;
with Ada.Containers.Indefinite_Ordered_Maps;

with Ada.Numerics.Elementary_Functions;
use  Ada.Numerics.Elementary_Functions;

procedure day10 is 

   type Point is record 
      X, Y : Integer;
   end record;

   type PolarAngle is record 
      Angle: Float;
      Index: Natural;
   end record;

   function "<"(Left, Right : PolarAngle) return Boolean is
   begin 
      return Left.Angle > Right.Angle;
   end;
   

   function "<"(Left, Right : Point) return Boolean is
   begin
      -- First compare the X coordinates
      if Left.X < Right.X then
         return True;
      elsif Left.X > Right.X then
         return False;
      else
         -- If X coordinates are equal, compare Y coordinates
         return Left.Y < Right.Y;
      end if;
   end "<";

   package Meteors is new Ada.Containers.Vectors (Element_Type => Point, Index_Type => Natural);

   package Angles is new Ada.Containers.Vectors (Element_Type => PolarAngle, Index_Type => Natural);
   package Angles_Sorting is
     new Angles.Generic_Sorting;

   subtype Meteors_Vector is Meteors.Vector;

   package Directions is new Ada.Containers.Ordered_Sets (Element_Type => Point);

   package Visible is new Ada.Containers.Indefinite_Ordered_Maps (
      Key_Type => Point,
      Element_Type => Point
   );

   subtype Directions_Set is Directions.Set; 
   subtype Visible_Map is Visible.Map;

   function GCD(A, B: Natural ) return Natural is 
   begin
      if B = 0 then 
         return A;
      else 
         return GCD(B, A mod B); 
      end if;
   end; 

   procedure TryMeteor(P, T: Point; D: in out Directions_Set) is
   begin
      if T.X = P.X and T.Y = P.Y then
         return;
      end if;

      declare 
         DX: Integer := T.X - P.X;
         DY: Integer := T.Y - P.Y;
         NORM: Natural := GCD(ABS(DX), ABS(DY));
         Dir: Point := (X => DX / NORM, Y => DY / NORM);
      begin 
         D.Include(Dir);
      end;
   end; 


   procedure TryMeteorVisible(P, T: Point; D: in out Visible_Map) is
   begin
      if T.X = P.X and T.Y = P.Y then
         return;
      end if;

      declare 
         DX: Integer := T.X - P.X;
         DY: Integer := T.Y - P.Y;
         NORM: Natural := GCD(ABS(DX), ABS(DY));
         Dir: Point := (X => DX / NORM, Y => DY / NORM);
         Temp: Point;
         TDX: Integer;
         TDY: Integer;
      begin 
         if D.Contains(Dir) then
            Temp := D(Dir);
            TDX := Temp.X - P.X;
            TDY := Temp.Y - P.Y;
            if TDX * TDX + TDY * TDY > DX * DX + DY * DY then 
               D.replace(Dir, T);
            end if;
         else 
            D.include(Dir, T);
         end if;
      end;
   end; 

   function CountVisibleFrom(P: Point; M: Meteors_Vector) return Natural is
      Dirs: Directions_Set;
   begin 
      for T of M loop 
         TryMeteor(P, T, Dirs);      
      end loop;

      return Natural(Dirs.Length);
   end;

   function FindVisibleFrom(P: Point; M: Meteors_Vector) return Meteors_Vector is
      Dirs: Visible_Map;
      Result: Meteors_Vector;
   begin 
      for T of M loop 
         TryMeteorVisible(P, T, Dirs);      
      end loop;

      for D in Dirs.Iterate loop 
         Result.Append(Dirs(D));
      end loop;
      return Result; 
   end;

   function AngleOf(X, Y: Integer) return Float is
   begin
      if X = 0 then 
         if Y < 0 then 
            return 360.0;
         else 
            return 180.0;
         end if;
      end if; 

      if Y = 0 then
         if X < 0 then 
            return 90.0;
         else 
            return 270.0;
         end if; 
      end if;

      declare
         A : Float := Arctan( Float(ABS(X)) / Float(ABS(Y)), 360.0 );
      begin
         if Y < 0 and X < 0 then 
            return A;
         end if;

         if Y < 0 and X > 0 then 
            return 360.0 - A;
         end if;

         if Y > 0 and X < 0 then
            return 180.0 - A;
         end if;

         return 180.0 + A; 
      end;
   end;

   function MakeAnglesAround(P: Point; M: Meteors_Vector) return Angles.Vector is 
      A: Angles.Vector;
   begin
      for I in M.First_Index .. M.Last_Index loop
      declare
         DX : Integer := M(I).X - P.X;
         DY : Integer := M(I).Y - P.Y;
         AngV : Float := AngleOf(DX, DY);
         Ang : PolarAngle := (Angle =>  AngV, Index => I);
      begin
         A.Append(Ang);
      end;
      end loop;
      return A;
   end;

   procedure AppendMeteors(Y : Integer; Line: Unbounded_String; M: in out Meteors_Vector) is
      C : Character;
   begin
      for X in 1 .. Length(Line) loop 
         C := Element(Line, X);
         if C = '#' then 
         declare 
            P : Point := (X => X, Y => Y);
         begin
            M.Append(P);
         end;
         end if;
      end loop;
   end;

   -- Function to read all lines from a file into an array of strings and build the grid
   function Read_Grid_From_File(File_Name : String) return Meteors_Vector is
      File        : File_Type;
      M           : Meteors_Vector;   -- Initial empty array for lines
      Buffer      : Unbounded_String;
      Y: Integer  := 0;
   begin
      -- Open the file for reading
      Open (File, In_File, File_Name);

      -- First, read all lines into the Lines array
      while not End_Of_File(File) loop
         Get_Line (File, Buffer);
         AppendMeteors(Y, Buffer, M);
         Y := Y + 1;
      end loop;

      -- Close the file after reading all lines
      Close (File);

     return M;

   end Read_Grid_From_File;


   function FindOptimalPosition(M: Meteors_Vector) return Point is
      MaxV: Natural := 0;
      V: Natural;
      R: Point := (X => 0, Y => 0);
   begin 
      for P of M loop
         V := CountVisibleFrom(P, M);
         if V > MaxV then 
            MaxV := V;
            R := P;
         end if;   
      end loop;
      return R;
   end; 

   M: Meteors_Vector;
   Answer: Natural := 0;
begin
      -- Call the function to read the grid from a file named "grid.txt"
   M := Read_Grid_From_File("grid.txt");



   for P of M loop
      Answer := Natural'Max(CountVisibleFrom(P, M), Answer);   
   end loop;

   Put(Natural'Image(Answer));
   New_Line;
   declare 
        Opt : Point := FindOptimalPosition(M);
        Visible : Meteors_Vector := FindVisibleFrom(Opt, M);
        A : Angles.Vector := MakeAnglesAround(Opt, Visible);
        ResIdx : Integer;
        P: Point;
   begin
        Angles_Sorting.Sort (A);
        ResIdx := A(199).Index;
        P := Visible(ResIdx);
        Put(Integer'Image(P.X));
        New_Line;
        Put(Integer'Image(P.Y)); 
   end;
end day10;