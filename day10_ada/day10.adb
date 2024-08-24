with Ada.Text_IO;         use Ada.Text_IO;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Unbounded.Text_IO; use Ada.Strings.Unbounded.Text_IO;

with Ada.Containers; use Ada.Containers;
with Ada.Containers.Vectors;
with Ada.Containers.Ordered_Sets;


procedure day10 is 

  
   type Point is record 
      X, Y : Integer;
   end record;

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

   subtype Meteors_Vector is Meteors.Vector;

   package Directions is new Ada.Containers.Ordered_Sets (Element_Type => Point);

   subtype Directions_Set is Directions.Set; 

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

   function CountVisibleFrom(P: Point; M: Meteors_Vector) return Natural is
      Dirs: Directions_Set;
   begin 
      for T of M loop 
         TryMeteor(P, T, Dirs);      
      end loop;

      return Natural(Dirs.Length);
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


   M: Meteors_Vector;
   Answer: Natural := 0;
begin
      -- Call the function to read the grid from a file named "grid.txt"
   M := Read_Grid_From_File("grid.txt");



   for P of M loop
      Answer := Natural'Max(CountVisibleFrom(P, M), Answer);   
   end loop;

   Put(Natural'Image(Answer));

end day10;