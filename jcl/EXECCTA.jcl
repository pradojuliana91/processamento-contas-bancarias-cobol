//HERC01XX JOB (PROJCTA),                           
//             'EXECUTA PROJCTA',                   
//             CLASS=A,                             
//             MSGCLASS=H,                          
//             REGION=8M,TIME=1440,                 
//             MSGLEVEL=(1,1),                      
//             NOTIFY=HERC01                        
//STEP01   EXEC PGM=PROJCTA                         
//STEPLIB  DD DSN=HERC01.PRIVLIB.LOAD,DISP=SHR      
//CONTAS   DD DSN=HERC01.HERC01.CONTAS.TXT,DISP=SHR 
//SYSOUT   DD SYSOUT=*                              