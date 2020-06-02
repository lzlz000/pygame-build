pipenv run pyinstaller -F -d all -i icon.ico game.py
cp -rf ./assets ./dist/assets
./dist/game
