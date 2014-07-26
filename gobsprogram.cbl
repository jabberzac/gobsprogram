IDENTIFICATION DIVISION.
PROGRAM-ID.  Gobs.
AUTHOR.  spyn.
* Gob's program in COBOL

DATA DIVISION.
WORKING-STORAGE SECTION.
01  Char               PIC X.
    88 ValidResponse  VALUE "y", "Y".

PROCEDURE DIVISION.
Begin.
    DISPLAY "Gob's Program: Y/N?".
    ACCEPT Char.
    PERFORM UNTIL NOT ValidCharacter
        EVALUATE TRUE
           WHEN ValidResponse 
              PERFORM UNTIL TRUE NOT TRUE
                DISPLAY "Penus "
              END-PERFORM
        END-EVALUATE
    END-PERFORM
STOP RUN.
