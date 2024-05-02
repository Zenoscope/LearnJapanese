@echo off
echo.
echo Add your commit comment:
set /p "Comment1=comment: "
@echo on
ECHO %Input1%


git add *
git commit -m "%Comment1%"
git push -u -f origin main
