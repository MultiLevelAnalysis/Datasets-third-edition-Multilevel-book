*  intercept only model .
MIXED
  rating  BY sender receiver  WITH agesend sexsend agerec sexrec grsize
  /FIXED = | SSTYPE(3)
  /METHOD = REML  /PRINT = SOLUTION TESTCOV
 /RANDOM INTERCEPT sender receiver  | SUBJECT(group) COVTYPE(VC) .

* adding predictor variables with sex of sender random at group level.
MIXED
  rating  BY sender receiver  WITH agesend sexsend agerec sexrec grsize
  /FIXED = agesend sexsend agerec sexrec grsize | SSTYPE(3)
  /METHOD = REML  /PRINT = SOLUTION TESTCOV
 /RANDOM sender receiver  | SUBJECT(group) COVTYPE(VC)
 /RANDOM INTERCEPT sexsend  | SUBJECT(group) COVTYPE(UN) .

* adding interaction .
MIXED
  rating  BY sender receiver  WITH agesend sexsend agerec sexrec grsize
  /FIXED = agesend sexsend agerec sexrec grsize sexsend*sexrec| SSTYPE(3)
  /METHOD = REML  /PRINT = SOLUTION TESTCOV
 /RANDOM sender receiver  | SUBJECT(group) COVTYPE(VC)
 /RANDOM INTERCEPT sexsend  | SUBJECT(group) COVTYPE(UN) .
