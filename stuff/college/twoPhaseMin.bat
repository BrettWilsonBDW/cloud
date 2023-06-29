@echo off
@REM echo calc --var 2 --const 5 --round false
set /p var="num of obj func vars: "
set /p const="num of constraints: "
set roundVal="false"
set /p round="round(y/n): "
if "%round%" == "y" (
    set /p roundVal="num of dec places: "
)
if %roundVal% NEQ "false" (
    java -jar simplex-calc.jar calc --var %var% --const %const% --round %roundVal% --min true
)
if "%round%" == "n" (
    java -jar simplex-calc.jar calc --var %var% --const %const% --round false
)
pause
