/*Read in female data*/	

DATA  female ;
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

INFILE  "/home/u54012782/sasuser.v94/Project1/female.csv" 
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
RUN;


/*Read in male data*/

DATA  male ;
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

INFILE  "/home/u54012782/sasuser.v94/Project1/male.csv" 
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
RUN;

/*Combine data set*/

data combined; 
SET female male; 
run;
	

/*Descriptive statistics*/
proc summary data=combined nway ;
  class sex;
  var prevbb ;
  output out=means mean=mean_amt ;
run;
	
	
	
/*Statistical tests*/	
