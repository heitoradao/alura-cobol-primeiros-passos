       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRGCOB08.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO DO PROGRAMA = COMANDO EVALUATE
      ***   AUTOR: HEITOR JR
      ***   DATA : 10/10/2024
      ******************************************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-PRODUTO     PIC X(20)     VALUE SPACES.
       77  WRK-VALOR       PIC 9(06)V99  VALUE ZEROS.
       77  WRK-UF          PIC X(02)     VALUE 'SP'.
       77  WRK-FRETE       PIC 9(04)V99  VALUE ZEROS.

       77  WRK-VALOR-ED    PIC $ZZZ.ZZ9,99.

       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO COMPRADO..... : '
               WITH NO ADVANCING
           ACCEPT WRK-PRODUTO
           MOVE FUNCTION UPPER-CASE(WRK-PRODUTO) TO WRK-PRODUTO

           DISPLAY 'VALOR DO PRODUTO...... : '
               WITH NO ADVANCING
           ACCEPT WRK-VALOR
           MOVE WRK-VALOR TO WRK-VALOR-ED

           DISPLAY 'ESTADO DE ENTREGA (SP/RJ/MG).. : '
           ACCEPT WRK-UF
           MOVE FUNCTION UPPER-CASE(WRK-UF) TO WRK-UF

           DISPLAY  '--------- SAIDA DE DADOS --------------------'
           DISPLAY 'PRODUTO... : ' WRK-PRODUTO
           DISPLAY 'VALOR..... : ' WRK-VALOR-ED
           DISPLAY 'ESTADO.... : ' WRK-UF

      *********** OPERACAO CALCULO FRETE - COMANDO EVALUATE ***********
           EVALUATE WRK-UF
               WHEN 'SP'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,10
               WHEN 'RJ'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,15
               WHEN 'MG'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,20
               WHEN OTHER
                       DISPLAY 'NAO PODEMOS ENTREGAR NESSE ESTADO'
           END-EVALUATE

           DISPLAY '==================================='
           IF WRK-FRETE NOT EQUAL 0
               MOVE WRK-FRETE TO WRK-VALOR-ED
               DISPLAY 'VALOR DO PRODUTO COM FRETE: ' WRK-VALOR-ED
           END-IF
           DISPLAY '==================================='

           STOP RUN
           .

