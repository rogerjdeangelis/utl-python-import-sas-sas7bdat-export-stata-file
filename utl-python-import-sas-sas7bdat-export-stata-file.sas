Python import sas sas7bdat export stata file                                                                 
                                                                                                             
Win 7 64bit SAS 9.4M2 64 bit                                                                                 
                                                                                                             
github                                                                                                       
https://tinyurl.com/y8cmjr7s                                                                                 
https://github.com/rogerjdeangelis/utl-python-import-sas-sas7bdat-export-stata-file                          
                                                                                                             
Some notes (why I used stata as an output file - looks like Python is well behind R)                         
                                                                                                             
  1. Although SAS can read MS Access tables without the MS Access component,                                 
     you have to install 32 bit Python(to read/write 32/64bit ms access).                                    
     I already have two versions of python 2.7 and python 3.5.                                               
  2. Could not get SPSS to work, this would be better because SAS has a libname engine for SPSS              
  3. Stata is lossless on windows but unfortunately I have to use the clumssy proc import.                   
  4. Could only get V5 transport files to work with pyhon dictionaries not panda dataframes.                 
                                                                                                             
                                                                                                             
Repository macros                                                                                            
https://tinyurl.com/y9nfugth                                                                                 
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories                   
                                                                                                             
see github - importing/exporting to ms access without the SAS Access component;                              
https://tinyurl.com/ydasg996                                                                                 
https://github.com/rogerjdeangelis?utf8=%E2%9C%93&tab=repositories&q=ms+access+in%3Aname&type=&language=     
                                                                                                             
macro library                                                                                                
                                                                                                             
                                                                                                             
INPUT                                                                                                        
=====                                                                                                        
                                                                                                             
 SD1.CLASS total obs=19                                                                                      
                                                                                                             
  NAME       SEX    AGE    HEIGHT    WEIGHT                                                                  
                                                                                                             
  Alfred      M      14     69.0      112.5                                                                  
  Alice       F      13     56.5       84.0                                                                  
  Barbara     F      13     65.3       98.0                                                                  
  Carol       F      14     62.8      102.5                                                                  
  Henry       M      14     63.5      102.5                                                                  
  James       M      12     57.3       83.0                                                                  
  Jane        F      12     59.8       84.5                                                                  
  Janet       F      15     62.5      112.5                                                                  
 ...                                                                                                         
                                                                                                             
EXAMPLE OUTPUT  (Stata file)                                                                                 
============================                                                                                 
                                                                                                             
 d:/dta/class.dta                                                                                            
                                                                                                             
 --- Record Number ---  1   ---  Record Length ---- 80                                                       
r...............................................................................                             
1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...8                             
70000010000000000000000000000000000000000000000000000000000000000000000000000000                             
22106030000000000000000000000000000000000000000000000000000000000000000000000000                             
                                                                                                             
                                                                                                             
 --- Record Number ---  2   ---  Record Length ---- 80                                                       
...........15 Oct 2018 10:57.......index............................NAME........                             
1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...8                             
00000000000332467233332333330F00FFF666670000000000000000000000000000444400000000                             
00000000000150F3402018010A570D71FFF9E4580000000000000000000000000000E1D500000000                             
                                                                                                             
                                                                                                             
 --- Record Number ---  3   ---  Record Length ---- 80                                                       
.....................SEX..............................AGE.......................                             
1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...8                             
00000000000000000000054500000000000000000000000000000044400000000000000000000000                             
00000000000000000000035800000000000000000000000000000017500000000000000000000000                             
                                                                                                             
                                                                                                             
 --- Record Number ---  4   ---  Record Length ---- 80                                                       
.......HEIGHT...........................WEIGHT..................................                             
1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...8                             
00000004444450000000000000000000000000005444450000000000000000000000000000000000                             
00000008597840000000000000000000000000007597840000000000000000000000000000000000                             
                                                                                                             
                                                                                                             
 --- Record Number ---  5   ---  Record Length ---- 80                                                       
.......%12.0g...........................................%7s.....................                             
1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...8                             
00000002332360000000000000000000000000000000000000000000237000000000000000000000                             
0000000512E070000000000000000000000000000000000000000000573000000000000000000000                             
                                                                                                             
                                                                                                             
<class 'pandas.core.frame.DataFrame'>                                                                        
RangeIndex: 19 entries, 0 to 18                                                                              
Data columns (total 5 columns):                                                                              
NAME      19 non-null object                                                                                 
SEX       19 non-null object                                                                                 
AGE       19 non-null float64                                                                                
HEIGHT    19 non-null float64                                                                                
WEIGHT    19 non-null float64                                                                                
dtypes: float64(3), object(2)                                                                                
memory usage: 832.0+ bytes                                                                                   
                                                                                                             
Note python creates an extra INDEX variable                                                                  
                                                                                                             
         Alphabetic List of Variables and Attributes                                                         
                                                                                                             
#    Variable    Type    Len    Format    Informat    Label                                                  
                                                                                                             
1    INDEX       Num       8                          index                                                  
2    NAME        Char      7    $7.       $7.         NAME                                                   
3    SEX         Char      1    $1.       $1.         SEX                                                    
4    AGE         Num       8                          AGE                                                    
5    HEIGHT      Num       8                          HEIGHT                                                 
6    WEIGHT      Num       8                          WEIGHT                                                 
                                                                                                             
                                                                                                             
Up to 40 obs from work.mdata total obs=19                                                                    
                                                                                                             
Obs    INDEX    NAME       SEX    AGE    HEIGHT    WEIGHT                                                    
                                                                                                             
  1       0     Alfred      M      14     69.0      112.5                                                    
  2       1     Alice       F      13     56.5       84.0                                                    
  3       2     Barbara     F      13     65.3       98.0                                                    
  4       3     Carol       F      14     62.8      102.5                                                    
  5       4     Henry       M      14     63.5      102.5                                                    
                                                                                                             
                                                                                                             
PROCESS                                                                                                      
=======                                                                                                      
                                                                                                             
%utlfkil(d:/dta/class.dta);                                                                                  
%utl_submit_py64("                                                                                           
import numpy as np;                                                                                          
import pandas as pd;                                                                                         
from sas7bdat import SAS7BDAT;                                                                               
with SAS7BDAT('d:/sd1/class.sas7bdat') as m:;                                                                
.   mdata = m.to_data_frame();                                                                               
mdata.info();                                                                                                
mdata.to_stata('d:/dta/class.dta');                                                                          
");                                                                                                          
                                                                                                             
                                                                                                             
OUTPUT                                                                                                       
======                                                                                                       
                                                                                                             
see hex dump above                                                                                           
                                                                                                             
<class 'pandas.core.frame.DataFrame'>                                                                        
RangeIndex: 19 entries, 0 to 18                                                                              
Data columns (total 5 columns):                                                                              
NAME      19 non-null object                                                                                 
SEX       19 non-null object                                                                                 
AGE       19 non-null float64                                                                                
HEIGHT    19 non-null float64                                                                                
WEIGHT    19 non-null float64                                                                                
dtypes: float64(3), object(2)                                                                                
memory usage: 832.0+ bytes                                                                                   
                                                                                                             
From Python                                                                                                  
                                                                                                             
Note python creates an extra INDEX variable                                                                  
                                                                                                             
         Alphabetic List of Variables and Attributes                                                         
                                                                                                             
#    Variable    Type    Len    Format    Informat    Label                                                  
                                                                                                             
1    INDEX       Num       8                          index                                                  
2    NAME        Char      7    $7.       $7.         NAME                                                   
3    SEX         Char      1    $1.       $1.         SEX                                                    
4    AGE         Num       8                          AGE                                                    
5    HEIGHT      Num       8                          HEIGHT                                                 
6    WEIGHT      Num       8                          WEIGHT                                                 
                                                                                                             
                                                                                                             
Up to 40 obs from work.mdata total obs=19                                                                    
                                                                                                             
Obs    INDEX    NAME       SEX    AGE    HEIGHT    WEIGHT                                                    
                                                                                                             
  1       0     Alfred      M      14     69.0      112.5                                                    
  2       1     Alice       F      13     56.5       84.0                                                    
  3       2     Barbara     F      13     65.3       98.0                                                    
  4       3     Carol       F      14     62.8      102.5                                                    
  5       4     Henry       M      14     63.5      102.5                                                    
                                                                                                             
*                _               _       _                                                                   
 _ __ ___   __ _| | _____     __| | __ _| |_ __ _                                                            
| '_ ` _ \ / _` | |/ / _ \   / _` |/ _` | __/ _` |                                                           
| | | | | | (_| |   <  __/  | (_| | (_| | || (_| |                                                           
|_| |_| |_|\__,_|_|\_\___|   \__,_|\__,_|\__\__,_|                                                           
                                                                                                             
;                                                                                                            
                                                                                                             
                                                                                                             
options validvarname=upcase;                                                                                 
libname sd1 "d:/sd1";                                                                                        
data sd1.class;                                                                                              
  set sashelp.class;                                                                                         
run;quit;                                                                                                    
                                                                                                             
*_                     _                                                                                     
| |__   _____  __   __| |_   _ _ __ ___  _ __                                                                
| '_ \ / _ \ \/ /  / _` | | | | '_ ` _ \| '_ \                                                               
| | | |  __/>  <  | (_| | |_| | | | | | | |_) |                                                              
|_| |_|\___/_/\_\  \__,_|\__,_|_| |_| |_| .__/                                                               
                                        |_|                                                                  
;                                                                                                            
                                                                                                             
%utlrulr(                                                                                                    
       uinflt =d:/dta/class.dta,                                                                             
       uprnlen =80,                                                                                          
       ulrecl  =80,                                                                                          
       urecfm   =f,                                                                                          
       uobs = 5,                                                                                             
       uotflt =d:/dta/classx.txt                                                                             
);                                                                                                           
