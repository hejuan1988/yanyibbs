:start
@echo off
color 0a
cls
mode con cols=120 lines=35
echo                                   ********************************************************
echo                                   *   ������¼��ֱ�� (��Q�˳�����) By: �����ػ���   *
echo                                   ********************************************************
echo.
echo.
echo ������ֱ��������ַ��
set /p pushStream=""
if  %pushStream%��=="" goto tip
:tip
msg "%username%" ������������ַ
goto start
:startlive
echo ֱ����ʼ.....
echo.
echo �벻Ҫ�رձ����򴰿�
ffmpeg -f dshow -i video="screen-capture-recorder" -f dshow -i audio="virtual-audio-capturer" -vcodec libx264 -preset:v ultrafast -pix_fmt yuv420p -acodec aac -f flv "%pushStream%"
:exit
echo.
echo.
cls
echo ֱ����������������˳�����
pause >nul

