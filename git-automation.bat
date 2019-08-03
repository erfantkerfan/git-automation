@echo off
title git-automation By Erfan Gholizade erfantkerfan@github
:loop
echo -----------------------------------------
echo use one of the numbers for batch command
echo 1 . pull origin master
echo 2 . status
echo 3 . add .
echo 4 . commit -m "automated push"
echo 5 . push origin master
echo 0 . exit
echo.
set /p j=
cd ..
IF %j%==1 (
	@echo on
	for /d %%i in (*.*) do ( cd %%i & git pull origin master & cd.. )
	@echo off
)
IF %j%==2 (
	@echo on
	for /d %%i in (*.*) do ( cd %%i & git status & cd.. )
	@echo off
)
IF %j%==3 (
	@echo on
	for /d %%i in (*.*) do ( cd %%i & git add . & cd.. )
	@echo off
)
IF %j%==4 (
	@echo on
	for /d %%i in (*.*) do ( cd %%i & git commit -m "automated push" & cd.. )
	@echo off
)
IF %j%==5 (
	@echo on
	for /d %%i in (*.*) do ( cd %%i & git push origin master & cd.. )
	@echo off
)
IF %j%==0 (
	goto exit
)
cd git-automation
goto loop
:exit