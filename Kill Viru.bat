@echo off
color f0
mode con cols=65 lines=20
title U盘病毒查杀 by佳音
echo 查杀FakeFolder病毒  制作 by佳音
echo 警告！仅限杨村一中内部使用，错误使用造成的数据丢失制作者概不负责
goto aa

:aa
color f0
set /p driverName="请输入U盘盘符(教室电脑请输入F)，并按下回车:"
if /i "%driverName%"=="C" cls&goto wn
cls
color a
goto de

:de
del %driverName%:\*.exe
cls
goto rc

:rc
for /f "delims=" %%a in ('dir /ah /s/b %driverName%:') do attrib "%%a" -s -r -a -h /d /s
cls
goto ed

:ed
cls
echo 杀毒完成
pause
exit

:wn
color 4
echo 警告！仅限于U盘杀毒，请勿用于C盘！！
pause
cls
goto aa