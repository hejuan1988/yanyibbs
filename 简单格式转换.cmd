@echo off
color 0a
cls
mode con cols=120 lines=35
echo                                   ********************************************************
echo                                   *           简单格式转换              By: 风莲素还真  *
echo                                   ********************************************************
echo.
echo.
echo 请输入要转换格式的视频(如:C:\Users\Administrator\Desktop\record.flv):
set /p filename=""
echo 请输入转换后的文件名称(如:exchange):
set /p savename=""
echo 请输入要转换后的格式(如:mp4):
set /p ext=""
ffmpeg  -i  "%filename%" "%savename%.%ext%"
echo.
echo.
echo 格式转换完成，按任意键退出！！
pause >nul

