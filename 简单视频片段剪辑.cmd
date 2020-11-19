:Y
@echo off
color 0a
cls
mode con cols=120 lines=35
echo                                   *********************************************
echo                                   *   简单视频剪辑批处理文件  By: 风莲素还真  *
echo                                   *********************************************
echo 请输入视频来源(如:E:\FilmSources\祥云寺\祥云寺.mp4或者https://video.letv-cdn.com/20180122/IJfCJyiE/index.m3u8):
set /p videoSource=""
echo 请输入视频开始时间(如:00:20:15):
set /p stratTime=""
echo 请输入视频结束时间(如:00:25:15):
set /p endTime=""
echo 请输入视频保存名称(如:testcut.mp4)
set /p saveName=""
@ffmpeg  -ss %stratTime% -to %endTime% -accurate_seek -i "%videoSource%" -vcodec libx264 -acodec aac  %saveName% -y
echo.
echo.
set /p jx="是否继续剪辑其它视频(Y/N):"
goto %jx%
:N
cls
echo 谢谢使用！
pause>nul