@echo off
color 0a
cls
mode con cols=120 lines=35
echo                                   ********************************************************
echo                                   *           �򵥸�ʽת��              By: �����ػ���  *
echo                                   ********************************************************
echo.
echo.
echo ������Ҫת����ʽ����Ƶ(��:C:\Users\Administrator\Desktop\record.flv):
set /p filename=""
echo ������ת������ļ�����(��:exchange):
set /p savename=""
echo ������Ҫת����ĸ�ʽ(��:mp4):
set /p ext=""
ffmpeg  -i  "%filename%" "%savename%.%ext%"
echo.
echo.
echo ��ʽת����ɣ���������˳�����
pause >nul

