      * Sample COBOL program
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Day10.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 X-ARRAY.
          05 X   PIC S9(10) OCCURS 4 TIMES VALUE ZEROS.
          
       01 Y-ARRAY.
          05 Y   PIC S9(10) OCCURS 4 TIMES VALUE ZEROS.
       
       01 Z-ARRAY.
          05 Z   PIC S9(10) OCCURS 4 TIMES VALUE ZEROS.
       
       01 VX-ARRAY.
          05 VX  PIC S9(10) OCCURS 4 TIMES VALUE ZEROS.
       
       01 VY-ARRAY.
          05 VY  PIC S9(10) OCCURS 4 TIMES VALUE ZEROS.
       
       01 VZ-ARRAY.
          05 VZ  PIC S9(10) OCCURS 4 TIMES VALUE ZEROS.
       
       01 I PIC 9 VALUE 1.
       01 J PIC 9 VALUE 1.
       01 SIM-ITER PIC 9(4) VALUE ZERO.
       
       01 DIF-X PIC S9(10) VALUE ZERO.
       01 DIF-Y PIC S9(10) VALUE ZERO.
       01 DIF-Z PIC S9(10) VALUE ZERO.
       
       01 SIG-X PIC S9 VALUE ZERO.
       01 SIG-Y PIC S9 VALUE ZERO.
       01 SIG-Z PIC S9 VALUE ZERO.
       
       01 ENERGY.
           05 P-ENERGY PIC 9(10) OCCURS 4 TIMES VALUE ZERO.
           05 K-ENERGY PIC 9(10) OCCURS 4 TIMES VALUE ZERO.

       01 TOTAL-ENERGY PIC 9(10) VALUE ZERO.

       PROCEDURE DIVISION.
      * <x=14, y=4, z=5>
           MOVE 14  TO X(1).
           MOVE 4   TO Y(1).
           MOVE 5   TO Z(1).
      * <x=12, y=10, z=8>
           MOVE 12  TO X(2).
           MOVE 10  TO Y(2).
           MOVE 8   TO Z(2).
      * <x=1, y=7, z=-10>
           MOVE 1   TO X(3).
           MOVE 7   TO Y(3).
           MOVE -10 TO Z(3).
      * <x=16, y=-5, z=3>
           MOVE 16  TO X(4).
           MOVE -5  TO Y(4).
           MOVE 3   TO Z(4).

      * <x=-1, y=0, z=2>
      *    MOVE -1  TO X(1).
      *    MOVE 0   TO Y(1).
      *    MOVE 2   TO Z(1).
      * <x=2, y=-10, z=-7>
      *    MOVE 2  TO X(2).
      *    MOVE -10   TO Y(2).
      *    MOVE -7   TO Z(2).
      * <x=4, y=-8, z=8>
      *    MOVE 4  TO X(3).
      *    MOVE -8   TO Y(3).
      *    MOVE 8   TO Z(3).
      * <x=3, y=5, z=-1>
      *    MOVE 3  TO X(4).
      *    MOVE 5   TO Y(4).
      *    MOVE -1   TO Z(4).

           PERFORM VARYING SIM-ITER FROM 1 BY 1 UNTIL SIM-ITER > 1000
               PERFORM UPDATE-VELOCITY
               PERFORM APPLY-VELOCITY
           END-PERFORM.
           
           PERFORM COMPUTE-KINETIC-ENERGY.
           PERFORM COMPUTE-POTENTIAL-ENERGY.
           PERFORM COMPUTE-TOTAL-ENERGY.
          
           DISPLAY TOTAL-ENERGY.

      *    DISPLAY "Updated".
      *        
      *    DISPLAY 'VX: ' VX(1) VX(2) VX(3) VX(4).
      *    DISPLAY 'VY: ' VY(1) VY(2) VY(3) VY(4).
      *    DISPLAY 'VZ: ' VZ(1) VZ(2) VZ(3) VZ(4).

      *    PERFORM APPLY-VELOCITY.
           
      *    DISPLAY "MOVED".


      *    DISPLAY 'X: ' X(1) X(2) X(3) X(4).
      *    DISPLAY 'Y: ' Y(1) Y(2) Y(3) Y(4).
      *    DISPLAY 'Z: ' Z(1) Z(2) Z(3) Z(4).


           STOP RUN.
       
       UPDATE-VELOCITY.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 4
           PERFORM VARYING J FROM 1 BY 1 UNTIL J > 4
               COMPUTE DIF-X = X(J) - X(I)
               COMPUTE DIF-Y = Y(J) - Y(I)
               COMPUTE DIF-Z = Z(J) - Z(I)               
               PERFORM SIGN-OF-DIFF
               COMPUTE VX(I) = VX(I) + SIG-X
               COMPUTE VY(I) = VY(I) + SIG-Y
               COMPUTE VZ(I) = VZ(I) + SIG-Z
               CONTINUE
           END-PERFORM
           END-PERFORM.
       
       APPLY-VELOCITY.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 4
               COMPUTE X(I) = X(I) + VX(I)
               COMPUTE Y(I) = Y(I) + VY(I)
               COMPUTE Z(I) = Z(I) + VZ(I)
           END-PERFORM.

       COMPUTE-POTENTIAL-ENERGY.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 4
               COMPUTE P-ENERGY(I) = P-ENERGY(I) + FUNCTION ABS (X(I))
               COMPUTE P-ENERGY(I) = P-ENERGY(I) + FUNCTION ABS (Y(I))
               COMPUTE P-ENERGY(I) = P-ENERGY(I) + FUNCTION ABS (Z(I))
           END-PERFORM.

       COMPUTE-KINETIC-ENERGY.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 4
               COMPUTE K-ENERGY(I) = K-ENERGY(I) + FUNCTION ABS (VX(I))
               COMPUTE K-ENERGY(I) = K-ENERGY(I) + FUNCTION ABS (VY(I))
               COMPUTE K-ENERGY(I) = K-ENERGY(I) + FUNCTION ABS (VZ(I))
           END-PERFORM.

       COMPUTE-TOTAL-ENERGY.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 4
               COMPUTE TOTAL-ENERGY = TOTAL-ENERGY +
      -            K-ENERGY(I) * P-ENERGY(I)            
           END-PERFORM.

       SIGN-OF-DIFF.
           IF DIF-X = 0
               MOVE 0 TO SIG-X
           ELSE IF DIF-X > 0
               MOVE 1 TO SIG-X
           ELSE 
               MOVE -1 TO SIG-X
           END-IF.
           IF DIF-Y = 0
               MOVE 0 TO SIG-Y
           ELSE IF DIF-Y > 0
               MOVE 1 TO SIG-Y
           ELSE 
               MOVE -1 TO SIG-Y
           END-IF.
           IF DIF-Z = 0
               MOVE 0 TO SIG-Z
           ELSE IF DIF-Z > 0
               MOVE 1 TO SIG-Z
           ELSE 
               MOVE -1 TO SIG-Z
           END-IF.
