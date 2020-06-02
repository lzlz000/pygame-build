@echo off
pipenv run pyinstaller -F -d all -i icon.ico game.py
echo.
echo 如果询问是文件(F)还是目录(D)请选择目录(D)
echo.
xcopy imgs dist\imgs /s /y
echo.
echo 构建成功
dist\game.exe
pause