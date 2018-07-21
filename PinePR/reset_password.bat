@echo off
echo reset password
timeout 1 > nul
set passset=n
(echo %passset%)> config.txt
echo done
pause
exit