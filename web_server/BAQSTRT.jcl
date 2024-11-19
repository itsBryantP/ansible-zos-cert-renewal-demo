//BAQSTRT  PROC PARMS='SERVER1 --CLEAN'                              
//*                                                                  
//* z/OS Connect Enterprise Edition 3.0.24                           
//*                                                                  
//*                                                                  
//* Licensed Materials - Property of IBM                             
//*                                                                  
//* Restricted Materials of IBM                                      
//*                                                                  
//* 5655-CE3                                                         
//*                                                                  
//* (C) Copyright IBM Corp. 2015, 2017                               
//*                                                                  
//* US Government Users Restricted Rights - Use, duplication or      
//* disclosure restricted by GSA ADP Schedule Contract with          
//* IBM Corp.                                                        
//*------------------------------------------------------------------
//* This proc may be overwritten by product maintenance.             
//* You must copy to another location before customizing.            
//*------------------------------------------------------------------
//* PARMS   - server name followed by options e.g. --clean           
//* ZCONHOME- the z/OS UNIX path to the z/OS Connect EE install.     
//*           This path is used to find the product code.            
//*------------------------------------------------------------------
//* JAVA_HOME must define the z/OS UNIX path up to, but not          
//* including, the "bin" directory. e.g. /usr/lpp/java/J8.0_64       
//* JVM_OPTIONS can be used to specify JVM options.                  
//* WLP_USER_DIR define the directory where user's servers are       
//*              stored, but not including the 'servers' directory,  
//*              e.g. /u/userid/zosconnect or /var/zosconnect2       
//* _CEE_RUNOPTS can be used to specify Language Environment runtime 
//*              options. The current options will enable the heap   
//*              pools algorithms for heap storage management.       
//*------------------------------------------------------------------
//* Start the Liberty server                                         
//*                                                                  
//* STDOUT  - Destination for stdout (System.out)                    
//* STDERR  - Destination for stderr (System.err)                    
//* STDENV  - Initial z/OS UNIX environment for the specific         
//*           server being started                                   
//* _CEE_RUNOPTS=HEAPPOOLS(ON),HEAPPOOLS64(ON)                       
//*                                                                  
// SET ZCONHOME='/usr/lpp/IBM/zosconnect/v3r0'                       
//*                                                                  
//ZCON     EXEC PGM=BPXBATSL,REGION=0M,MEMLIMIT=4G,                  
//         PARM='PGM &ZCONHOME./bin/zosconnect run &PARMS.'          
//STDOUT   DD   SYSOUT=*                                             
//STDERR   DD   SYSOUT=*                                             
//STDIN    DD   DUMMY                                                
//STDENV   DD   *                                                    
_BPX_SHAREAS=YES                                                     
JAVA_HOME=/usr/lpp/java/J8.0_64                                      
WLP_USER_DIR=/var/zosconnect2                              
//* JVM_OPTIONS=-Xoptionsfile=/var/zosconnect/angel.properties
//*                                                       
// PEND                                                   
//                                                        