:Y
@echo off
color 0a
cls
mode con cols=120 lines=35
echo                                   *********************************************
echo                                   *   ����Ƶ�����������ļ�  By: �����ػ���  *
echo                                   *********************************************
echo ��������Ƶ��Դ(��:E:\FilmSources\������\������.mp4����https://video.letv-cdn.com/20180122/IJfCJyiE/index.m3u8):
set /p videoSource=""
echo ��������Ƶ��ʼʱ��(��:00:20:15):
set /p stratTime=""
echo ��������Ƶ����ʱ��(��:00:25:15):
set /p endTime=""
echo ��������Ƶ��������(��:testcut.mp4)
set /p saveName=""
@ffmpeg  -ss %stratTime% -to %endTime% -accurate_seek -i "%videoSource%" -vcodec libx264 -acodec aac  %saveName% -y
echo.
echo.
set /p jx="�Ƿ��������������Ƶ(Y/N):"
goto %jx%
:N
cls
echo ллʹ�ã�
pause>nul