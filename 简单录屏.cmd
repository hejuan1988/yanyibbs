@echo off
color 0a
cls
mode con cols=120 lines=35
echo                                   ********************************************************
echo                                   *            ��¼�� (��Q�˳�¼��)    By: �����ػ���  *
echo                                   ********************************************************
echo.
echo.
echo �����뱣���ļ�����(��:record):
set /p filename=""
ffmpeg -f dshow -i video="screen-capture-recorder" -f dshow -i audio="virtual-audio-capturer" -vcodec libx264 -preset:v ultrafast -pix_fmt yuv420p -acodec aac -f flv  "%filename%".flv
echo.
echo.
echo ¼����ɣ���������˳�����
pause >nul

