@echo off
pipenv run pyinstaller -F -d all -i icon.ico game.py
echo.
echo ���ѯ�����ļ�(F)����Ŀ¼(D)��ѡ��Ŀ¼(D)
echo.
xcopy imgs dist\imgs /s /y
echo.
echo �����ɹ�
dist\game.exe
pause