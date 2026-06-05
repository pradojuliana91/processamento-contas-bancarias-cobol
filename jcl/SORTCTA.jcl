//HERC01XX JOB (SORT),                       
//             'ORDENA CONTAS',              
//             CLASS=A,                      
//             MSGCLASS=H,                   
//             REGION=8M,TIME=1440,          
//             MSGLEVEL=(1,1),               
//             NOTIFY=HERC01                 
//STEP01   EXEC PGM=SORT                     
//SORTIN   DD DSN=HERC01.HERC01.CONTAS.TXT,  
//             DISP=SHR                      
//SORTOUT  DD DSN=HERC01.HERC01.CONTAS.SORT, 
//             DISP=OLD                      
//SORTLIB  DD DSN=SYS1.SORTLIB,DISP=SHR      
//SYSOUT   DD SYSOUT=*                       
//SYSIN    DD *                              
  SORT FIELDS=(39,4,CH,A)                    
/*                                           