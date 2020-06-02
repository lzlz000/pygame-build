cp -f game.py game.pyw
pipenv run pyinstaller -F -i icon.ico game.pyw
cp -rf ./assets ./dist/assets
rm -f game.pyw
