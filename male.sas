* Written by R;
*  write.foreign(male, "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/male.csv",  ;

PROC FORMAT;
value sex 
     1 = "1" 
;

DATA  rdata ;
LENGTH
 radflag $ 1
 race $ 1
 educ $ 1
 ssa82 $ 1
 vseos $ 1
 ethnic $ 9
 fjt $ 20
 ljt $ 20
 icda $ 4
 monplu $ 1
 isotope $ 1
 extmon $ 1
;

INFILE  "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/male.csv" 
     DSD 
     LRECL= 229 ;
INPUT
 radflag
 orauid
 sex
 race
 educ
 ssa82
 vseos
 ethnic
 fjt
 ljt
 bdate
 hiredate
 termdate
 dla
 dlwork
 duremp
 ddate
 icda
 monplu
 isotope
 numsamp
 valsamp
 fsamdate
 pposdate
 lsamdate
 nciyrs
 ncils
 nciyls
 prevbb
 curbb
 extmon
 fsdext
 fpsext
 d1ext
 d5ext
 d10ext
 cumext
 ltdate
 seq_no
;
FORMAT sex sex. ;
RUN;
