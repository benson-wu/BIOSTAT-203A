* Written by R;
*  write.foreign(female, "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/female.csv",  ;

DATA  rdata ;
LENGTH
 radflag $ 1
 sex $ 6
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

INFILE  "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/female.csv" 
     DSD 
     LRECL= 236 ;
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
RUN;
