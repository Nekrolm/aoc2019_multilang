      * Sample COBOL program
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Day12.

       Environment division.
       Configuration section.
       Repository.
           function GCD.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       78 N-PLANETS VALUE 4.

       01 X-ARRAY.
          05 X        PIC S9(10) OCCURS N-PLANETS TIMES VALUE ZEROS.
          05 X-INIT   PIC S9(10) OCCURS N-PLANETS TIMES VALUE ZEROS.
          
          
       01 Y-ARRAY.
          05 Y        PIC S9(10) OCCURS N-PLANETS TIMES VALUE ZEROS.
          05 Y-INIT   PIC S9(10) OCCURS N-PLANETS TIMES VALUE ZEROS.
       
       01 Z-ARRAY.
          05 Z        PIC S9(10) OCCURS N-PLANETS TIMES VALUE ZEROS.
          05 Z-INIT   PIC S9(10) OCCURS N-PLANETS TIMES VALUE ZEROS.
       
       01 VX-ARRAY.
          05 VX        PIC S9(10) OCCURS N-PLANETS TIMES VALUE ZEROS.
          05 VX-INIT   PIC S9(10) OCCURS N-PLANETS TIMES VALUE ZEROS.
       
       01 VY-ARRAY.
          05 VY        PIC S9(10) OCCURS N-PLANETS TIMES VALUE ZEROS.
          05 VY-INIT   PIC S9(10) OCCURS N-PLANETS TIMES VALUE ZEROS.
       
       01 VZ-ARRAY.
          05 VZ        PIC S9(10) OCCURS 4 TIMES VALUE ZEROS.
          05 VZ-INIT   PIC S9(10) OCCURS 4 TIMES VALUE ZEROS.
       
       01 I PIC 9 VALUE 1.
       01 J PIC 9 VALUE 1.
       01 SIM-ITER PIC 9(7) VALUE ZERO.

       01 STEPS-PASSED PIC 9(7) VALUE ZERO.
       01 LOOP-FOUND PIC 9 VALUE ZERO.
       
       01 X-LOOP PIC 9(20) VALUE ZERO.
       01 Y-LOOP PIC 9(20) VALUE ZERO.
       01 Z-LOOP PIC 9(20) VALUE ZERO.
       01 ANSWER-LOOP PIC 9(20) VALUE ZERO.
       

       01 DIF-X PIC S9(10) VALUE ZERO.
       01 DIF-Y PIC S9(10) VALUE ZERO.
       01 DIF-Z PIC S9(10) VALUE ZERO.
       
       01 SIG-X PIC S9 VALUE ZERO.
       01 SIG-Y PIC S9 VALUE ZERO.
       01 SIG-Z PIC S9 VALUE ZERO.
       
       01 ENERGY.
           05 P-ENERGY PIC 9(10) OCCURS N-PLANETS TIMES VALUE ZERO.
           05 K-ENERGY PIC 9(10) OCCURS N-PLANETS TIMES VALUE ZERO.

       01 TOTAL-ENERGY PIC 9(10) VALUE ZERO.

       PROCEDURE DIVISION.
      * <x=14, y=4, z=5>
           MOVE 14  TO X-INIT(1).
           MOVE 4   TO Y-INIT(1).
           MOVE 5   TO Z-INIT(1).
      * <x=12, y=10, z=8>
           MOVE 12  TO X-INIT(2).
           MOVE 10  TO Y-INIT(2).
           MOVE 8   TO Z-INIT(2).
      * <x=1, y=7, z=-10>
           MOVE 1   TO X-INIT(3).
           MOVE 7   TO Y-INIT(3).
           MOVE -10 TO Z-INIT(3).
      * <x=16, y=-5, z=3>
           MOVE 16  TO X-INIT(4).
           MOVE -5  TO Y-INIT(4).
           MOVE 3   TO Z-INIT(4).

           PERFORM INIT-POSITIONS.

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

      *    Dx + CycleX * I = Dy + CycleY * J = Dz + CycleZ * K
      *    Dx = Ans mod CycleX
      *    Dy = Ans mod CycleY
      *    Dz = Ans mod CycleZ

      * 327636285682704
           PERFORM VARYING SIM-ITER FROM 1 BY 1 UNTIL SIM-ITER > 500000
               PERFORM UPDATE-VELOCITY
               PERFORM APPLY-VELOCITY
               COMPUTE STEPS-PASSED = SIM-ITER
               PERFORM CHECK-SIMULATION-LOOPS
           END-PERFORM.
           
           PERFORM COMPUTE-KINETIC-ENERGY.
           PERFORM COMPUTE-POTENTIAL-ENERGY.
           PERFORM COMPUTE-TOTAL-ENERGY.
          
           DISPLAY TOTAL-ENERGY.
       
           COMPUTE ANSWER-LOOP = X-LOOP * Y-LOOP / 
      -                FUNCTION GCD (X-LOOP, Y-LOOP).
           COMPUTE ANSWER-LOOP = ANSWER-LOOP * Z-LOOP / 
      -                FUNCTION GCD (ANSWER-LOOP, Z-LOOP).
           
           DISPLAY ANSWER-LOOP.

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
       
       INIT-POSITIONS.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N-PLANETS
               COMPUTE X(I) = X-INIT(I)
               COMPUTE Y(I) = Y-INIT(I)
               COMPUTE Z(I) = Z-INIT(I)
               COMPUTE VX(I) = VX-INIT(I)
               COMPUTE VY(I) = VY-INIT(I)
               COMPUTE VZ(I) = VZ-INIT(I)
           END-PERFORM.

       CHECK-SIMULATION-LOOPS.
           MOVE 1 TO LOOP-FOUND.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N-PLANETS
               IF (LOOP-FOUND = 1)      AND 
      -           (X(I) = X-INIT(I))    AND 
      -           (VX(I) = VX-INIT(I))
                  CONTINUE
               ELSE
                   MOVE 0 TO LOOP-FOUND
               END-IF
           END-PERFORM.

           IF (LOOP-FOUND = 1) AND (X-LOOP = 0)
               DISPLAY 'X Loop Length ' STEPS-PASSED 
               COMPUTE X-LOOP = STEPS-PASSED
           END-IF.

           MOVE 1 TO LOOP-FOUND.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N-PLANETS
               IF (LOOP-FOUND = 1)      AND 
      -           (Y(I) = Y-INIT(I))    AND 
      -           (VY(I) = VY-INIT(I))
                  CONTINUE
               ELSE
                   MOVE 0 TO LOOP-FOUND
               END-IF
           END-PERFORM.

           IF (LOOP-FOUND = 1) AND (Y-LOOP = 0)
               DISPLAY 'Y Loop Length ' STEPS-PASSED 
               COMPUTE Y-LOOP = STEPS-PASSED
           END-IF.

           MOVE 1 TO LOOP-FOUND.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N-PLANETS
               IF (LOOP-FOUND = 1)      AND 
      -           (Z(I) = Z-INIT(I))    AND 
      -           (VZ(I) = VZ-INIT(I))
                  CONTINUE
               ELSE
                   MOVE 0 TO LOOP-FOUND
               END-IF
           END-PERFORM.

           IF (LOOP-FOUND = 1) AND (Z-LOOP = 0)
               DISPLAY 'Z Loop Length ' STEPS-PASSED 
               COMPUTE Z-LOOP = STEPS-PASSED
           END-IF.

       UPDATE-VELOCITY.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N-PLANETS
           PERFORM VARYING J FROM 1 BY 1 UNTIL J > N-PLANETS
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
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N-PLANETS
               COMPUTE X(I) = X(I) + VX(I)
               COMPUTE Y(I) = Y(I) + VY(I)
               COMPUTE Z(I) = Z(I) + VZ(I)
           END-PERFORM.

       COMPUTE-POTENTIAL-ENERGY.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N-PLANETS
               COMPUTE P-ENERGY(I) = P-ENERGY(I) + FUNCTION ABS (X(I))
               COMPUTE P-ENERGY(I) = P-ENERGY(I) + FUNCTION ABS (Y(I))
               COMPUTE P-ENERGY(I) = P-ENERGY(I) + FUNCTION ABS (Z(I))
           END-PERFORM.

       COMPUTE-KINETIC-ENERGY.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N-PLANETS
               COMPUTE K-ENERGY(I) = K-ENERGY(I) + FUNCTION ABS (VX(I))
               COMPUTE K-ENERGY(I) = K-ENERGY(I) + FUNCTION ABS (VY(I))
               COMPUTE K-ENERGY(I) = K-ENERGY(I) + FUNCTION ABS (VZ(I))
           END-PERFORM.

       COMPUTE-TOTAL-ENERGY.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N-PLANETS
               COMPUTE TOTAL-ENERGY = TOTAL-ENERGY +
      -            K-ENERGY(I) * P-ENERGY(I)            
           END-PERFORM.

       SIGN-OF-DIFF.
           COMPUTE SIG-X = FUNCTION SIGN (DIF-X).
           COMPUTE SIG-Y = FUNCTION SIGN (DIF-Y).
           COMPUTE SIG-Z = FUNCTION SIGN (DIF-Z).
