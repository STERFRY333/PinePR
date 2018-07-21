@echo off
echo reset password
timeout 1 > nul
set passset=n
(echo %passset%)> config.cdb
echo done
pause
exit