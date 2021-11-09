/*Read in female data*/	

DATA  female ;
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

INFILE  "/home/u54012782/sasuser.v94/Project1/female.csv" 
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



/*Read in male data*/


DATA  male ;
LENGTH
 sex $ 4
 race $ 1
 educ $ 1
 icda $ 4
 ethnic $ 1
 monplu $ 1
 isotope $ 1
 extmon $ 1
 cvseos83 $ 1
 mil $ 1
;

INFILE  "/home/u54012782/sasuser.v94/Project1/male.csv" 
     DSD 
     LRECL= 493 ;
INPUT
 id
 bdate
 sex
 race
 educ
 hiredate
 termdate
 dla
 ddate
 icda
 p29date
 p59date
 p109date
 p28date
 p58date
 p108date
 ethnic
 monplu
 nciyrs
 lsamdate
 curbb
 isotope
 fsamdate
 extmon
 fsdext
 fpsext
 d1ext
 d5ext
 d10ext
 cumext
 cvseos83
 mil
 extrad43
 extrad44
 extrad45
 extrad46
 extrad47
 extrad48
 extrad49
 extrad50
 extrad51
 extrad52
 extrad53
 extrad54
 extrad55
 extrad56
 extrad57
 extrad58
 extrad59
 extrad60
 extrad61
 extrad62
 extrad63
 extrad64
 extrad65
 extrad66
 extrad67
 extrad68
 extrad69
 extrad70
 extrad71
 extrad72
 extrad73
 extrad74
 extrad75
 extrad76
 extrad77
 extrad78
 extrad79
 extrad80
 extrad81
 extrad82
 extrad83
 extrad84
 extrad85
 extrad86
 extrad87
 extrad88
 extrad89
 extrad90
 seq_no
;
RUN;


/*Combine data set*/

data combined; 
SET female male; 
run;
	

/*Descriptive statistics on demographics*/

Proc freq data=combined;
Tables educ*sex/ NOPERCENT NOCUM;
Run;

Proc freq data=combined;
Tables race*sex;
Run;

Proc freq data=combined;
Tables ethnic*sex;
Run;

	

	
/*Statistical tests*/	
examine differences between males and females for the following variables 

ncils
nciyls
nciyrs
prevbb

radflag