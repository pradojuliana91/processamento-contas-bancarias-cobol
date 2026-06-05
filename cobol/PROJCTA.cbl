       IDENTIFICATION DIVISION.                    
       PROGRAM-ID. PROJCTA.                        
       ENVIRONMENT DIVISION.                       
       INPUT-OUTPUT SECTION.                       
       FILE-CONTROL.                               
           SELECT ARQ-CONTAS ASSIGN TO UT-S-CONTAS.
       DATA DIVISION.                              
       FILE SECTION.                               
       FD  ARQ-CONTAS                              
           LABEL RECORDS ARE STANDARD              
           BLOCK CONTAINS 0 RECORDS                
           DATA RECORD IS REG-CONTA.               
       01  REG-CONTA.                              
           05 NUM-CONTA        PIC 9(08).          
           05 NOME-CLIENTE     PIC A(30).          
           05 AGENCIA          PIC 9(04).          
           05 TIPO-CONTA       PIC A(01).          
           05 SALDO            PIC S9(09)V99.      
           05 FILLER           PIC X(26).          
       WORKING-STORAGE SECTION.
       77  WRK-FIM              PIC X VALUE 'N'.          
       77  WRK-TOTAL-CONTAS     PIC 9(05) VALUE ZEROS.    
       77  WRK-SALDO-TOTAL      PIC S9(12)V99 VALUE ZEROS.
       77  WRK-SALDO-ED         PIC ZZZZZZ999999.         
       PROCEDURE DIVISION.                                
       MAIN-PROCEDURE.                                    
           PERFORM INICIALIZA.                            
           PERFORM LER-ARQUIVO.                           
           PERFORM PROCESSA-ARQUIVO UNTIL WRK-FIM = 'S'.  
           PERFORM EXIBE-TOTAIS.                          
           PERFORM FINALIZA.                              
           STOP RUN.                                      
       INICIALIZA.                                        
           OPEN INPUT ARQ-CONTAS.                         
       LER-ARQUIVO.                                       
           READ ARQ-CONTAS                                
               AT END                                     
                   MOVE 'S' TO WRK-FIM.                   
       PROCESSA-ARQUIVO.                                  
           DISPLAY 'CONTA...: ' NUM-CONTA.                
            DISPLAY 'CLIENTE.: ' NOME-CLIENTE.             
            DISPLAY 'AGENCIA.: ' AGENCIA.                  
            DISPLAY 'TIPO....: ' TIPO-CONTA.               
            DISPLAY 'SALDO...: ' SALDO.                    
            DISPLAY ' '.                                   
            ADD 1 TO WRK-TOTAL-CONTAS.                     
            ADD SALDO TO WRK-SALDO-TOTAL.                  
            PERFORM LER-ARQUIVO.                           
        EXIBE-TOTAIS.                                      
            MOVE WRK-SALDO-TOTAL TO WRK-SALDO-ED           
            DISPLAY 'TOTAL DE CONTAS: ' WRK-TOTAL-CONTAS.  
            DISPLAY 'SALDO TOTAL....: ' WRK-SALDO-ED.      
        FINALIZA.                                          
            CLOSE ARQ-CONTAS.                              		   