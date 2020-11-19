:start
@echo off
color 0a
cls
mode con cols=120 lines=35
echo                                   ********************************************************
echo                                   *   命令行录屏直播 (按Q退出推流) By: 风莲素还真   *
echo                                   ********************************************************
echo.
echo.
echo 请输入直播推流地址：
set /p pushStream=""
if  %pushStream%”=="" goto tip
:tip
msg "%username%" 请输入推流地址
goto start
:startlive
echo 直播开始.....
echo.
echo 请不要关闭本程序窗口
ffmpeg -f dshow -i video="screen-capture-recorder" -f dshow -i audio="virtual-audio-capturer" -vcodec libx264 -preset:v ultrafast -pix_fmt yuv420p -acodec aac -f flv "%pushStream%"
:exit
echo.
echo.
cls
echo 直播结束，按任意键退出！！
pause >nul

