       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB07.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = COMANDOS IF / ELSE
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1      PIC 9(02)     VALUE ZEROS.
       77 WRK-NOTA2       PIC 9(02)     VALUE ZEROS.       
       77 WRK-MEDIA       PIC 9(02)V9     VALUE ZEROS.
        PROCEDURE DIVISION.
           DISPLAY 'DIGITE A PRIMEIRA NOTA..... : '.
             ACCEPT WRK-NOTA1.
           DISPLAY 'DIGITE A SEGUNDA NOTA...... : '.
             ACCEPT WRK-NOTA2.
           DISPLAY  '--------- SAIDA DE DADOS ------------'.
             DISPLAY 'NOTA 1. : ' WRK-NOTA1.
             DISPLAY 'NOTA 2. : ' WRK-NOTA2.

      *********** OPERACAO MEDIA - COMANDO COMPUTE *************   
             COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) /  2.
             DISPLAY '== MEDIA DO ALUNO ======  ' WRK-MEDIA.
             
      *********** DEFINIR STATUS - COMANDO IF *******************
             IF WRK-MEDIA >= 06 
                DISPLAY 'APROVADO' 
                  ELSE  
                      IF WRK-MEDIA >= 02 
                          DISPLAY 'RECUPERACAO'  
                      ELSE 
                          DISPLAY 'REPROVADO'  
                      END-IF
              END-IF.
            
           STOP RUN.
