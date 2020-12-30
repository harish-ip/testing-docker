# spinning up the docker containers which incluedes testing-server
docker-compose down; docker-compose up -d --build
# To installing apk file to emulator
adb -s emulator-5554 install -r 'Sprint_5_demo.apk'
# kills appium before starting it.
taskkill /im node.exe /t /f
# for install or update appium
npm -g update appium
appium  