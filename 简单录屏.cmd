@echo off
color 0a
cls
mode con cols=120 lines=35
echo                                   ********************************************************
echo                                   *            简单录屏 (按Q退出录制)    By: 风莲素还真  *
echo                                   ********************************************************
echo.
echo.
echo 请输入保存文件名称(如:record):
set /p filename=""
ffmpeg -f dshow -i video="screen-capture-recorder" -f dshow -i audio="virtual-audio-capturer" -vcodec libx264 -preset:v ultrafast -pix_fmt yuv420p -acodec aac -f flv  "%filename%".flv
echo.
echo.
echo 录屏完成，按任意键退出！！
pause >nul

