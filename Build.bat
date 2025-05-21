
@echo off
REM build_deploy_itch.bat <yourversionstring>
REM https://gist.github.com/tredfern/3262609c65f8860381c18c98cb39f3e7


set igor="C:\ProgramData\GameMakerStudio2\Cache\runtimes\runtime-2024.11.0.226\bin\igor\windows\x64\Igor.exe"
set project="C:\Users\ryan\Downloads\LearnJapanese\LearnJapanese_v_4\LearnJapanese.yyp"
set runtimeVersion="C:\ProgramData\GameMakerStudio2\Cache\runtimes\runtime-2024.11.0.226"
REM either yyc or VM
set runtime=VM
set Win_target="C:\Users\ryan\Downloads\LearnJapanese\build\projectname-win-itch.exe"
set HTML5_target="C:\Users\ryan\Downloads\LearnJapanese\build\projectname-HTML5-itch.zip"
set config="default"
set Mac_target="C:\Users\ryan\Downloads\LearnJapanese\build\projectname-Mac-itch.zip"
set Linux_target="C:\Users\ryan\Downloads\LearnJapanese\build\projectname-Linux-itch.zip"
set Build_dir="C:\Users\ryan\Downloads\LearnJapanese\build\"
set user="%appdata%\GameMakerStudio2\zenoscope_3802076"
REM set itchpage=<youritchpage>
REM set version=%1

REM Clean
REM %igor% /project=%project% /rp=%runtimeVersion% /runtime=%runtime% /uf=%user% /tf=%target% /j=8 Windows Clean

REM  %igor% /project=%project% /rp=%runtimeVersion% /runtime=%runtime% /uf=%user% /tf=%Win_target% /config=%config% /uf=%user% /j=8 /of=%Win_target% -v Windows PackageZip

REM Run (Windows)
REM START "" %igor% /project=%project% /rp=%runtimeVersion% /runtime=%runtime% /uf=%user% /tf=%target% /j=8 Windows Run
REM SLEEP 3


REM Windows exe build
 %igor% /project=%project% /rp=%runtimeVersion% /runtime=%runtime% /uf=%user% /tf=%Win_target% /config=%config% /uf=%user% /j=8 /of=%Win_target% -v Windows PackageNsis
 
REM pygui here if it works.

REM python 
 
REM Windows Zip
REM %igor% /project=%project% /rp=%runtimeVersion% /runtime=%runtime% /uf=%user% /tf=%Win_target% /config=%config% /uf=%user% /j=8 /of=%Win_target% -v Windows PackageZip

REM HTML 5
REM %igor% /project=%project% /rp=%runtimeVersion% /runtime=%runtime% /uf=%user% /tf=%HTML5_target% /config=%config% /uf=%user% /j=8 /of=%HTML5_target% -v HTML5 Package

REM Linux build
REM %igor% /project=%project% /rp=%runtimeVersion% /runtime=%runtime% /uf=%user% /tf=%Linux_target% /config=%config% /uf=%user% /j=8 /of=%Linux_target% -v Linux Package

REM dir %Build_dir%