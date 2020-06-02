@echo off
copy game.py game.pyw
pipenv run pyinstaller -F -i icon.ico game.pyw
echo.
echo 如果询问是文件(F)还是目录(D)请选择目录(D)
echo.
xcopy imgs dist\imgs /s /y
del game.pyw
echo.
echo 构建成功
echo. & pause