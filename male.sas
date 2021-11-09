* Written by R;
*  write.foreign(male, "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/male.csv",  ;

DATA  rdata ;
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

INFILE  "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/male.csv" 
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
