       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB18.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = PERFORM COM REPETICOES CONTROLADAS
      ***                            POR SAIDA FORCADA (UNTIL)
      ***                            USANDO BOOK 
      ***   AUTOR: IVAN
      ***   DATA : XX/XX/20XX
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'BOOK.COB'.   
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
            PERFORM 0100-INICIALIZAR.
             IF WRK-VENDAS GREATER 0 
               PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
            END-IF.  
           PERFORM 0300-FINALIZAR.
           STOP RUN.
      
       0100-INICIALIZAR.     
            DISPLAY 'DIGITE O NUMERO..... : '.
            ACCEPT WRK-VENDAS.
      
       0200-PROCESSAR.
             ADD 1 TO WRK-QT.
             ADD WRK-VENDAS TO WRK-ACUM.
              PERFORM 0100-INICIALIZAR.
            
       0300-FINALIZAR.     
             DISPLAY  '---------------------'.
              DISPLAY 'TOTAL DAS VENDAS     ' WRK-ACUM.
              DISPLAY 'QUANTIDADE DE VENDAS ' WRK-QT.
              DISPLAY ' FIM DE PROCESSAMENTO '.
