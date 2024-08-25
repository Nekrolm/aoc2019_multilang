      * GCD is written in Cobol free-style
       Identification division.
       Function-id. GCD.
       Data division.
       
       WORKING-STORAGE SECTION.
       1 A pic 9(20).
       1 B pic 9(20).
       1 TEMP pic 9(20).
       
       Linkage section.
       1 Ain pic 9(20).
       1 Bin pic 9(20).
       1 res pic 9(20).
       Procedure division
           using by reference Ain Bin
           returning res.
           compute A = Ain.
           compute B = Bin.
           perform until B = 0
              compute TEMP = B
              compute B = function MOD (A, B)
              compute A = TEMP
           end-perform.
           move A to res.
       
           goback.
       End function GCD.
