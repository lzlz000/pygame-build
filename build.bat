@echo off
copy game.py game.pyw
pipenv run pyinstaller -F -i icon.ico game.pyw
echo.
echo ���ѯ�����ļ�(F)����Ŀ¼(D)��ѡ��Ŀ¼(D)
echo.
xcopy imgs dist\imgs /s /y
del game.pyw
echo.
echo �����ɹ�
echo. & pause