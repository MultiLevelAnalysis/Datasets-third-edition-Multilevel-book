* intercept only model.
MIXED achiev
  /METHOD=ML  /PRINT=SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(pschool) COVTYPE(VC)
  /RANDOM=INTERCEPT | SUBJECT(sschool) COVTYPE(VC) .

* pupil level variables.
MIXED achiev WITH pupsex pupses pdenom sdenom
  /FIXED=pupsex pupses | SSTYPE(3)
  /METHOD=ML   /PRINT=SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(pschool) COVTYPE(VC)
  /RANDOM=INTERCEPT | SUBJECT(sschool) COVTYPE(VC) .

* school level variables .
MIXED achiev WITH pupsex pupses pdenom sdenom
  /FIXED=pupsex pupses  pdenom sdenom| SSTYPE(3)
  /METHOD=ML   /PRINT=SOLUTION TESTCOV
  /RANDOM=INTERCEPT | SUBJECT(pschool) COVTYPE(VC)
  /RANDOM=INTERCEPT | SUBJECT(sschool) COVTYPE(VC) .

* ses random aat primary school level .
MIXED achiev WITH pupsex pupses pdenom sdenom
  /FIXED=pupsex pupses  pdenom sdenom| SSTYPE(3)
  /METHOD=ML   /PRINT=SOLUTION TESTCOV
  /RANDOM=INTERCEPT pupses | SUBJECT(pschool) COVTYPE(UN)
  /RANDOM=INTERCEPT | SUBJECT(sschool) COVTYPE(VC) .
