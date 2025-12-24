@echo off
echo 🚀 Installing UDT (Universal Device Translator)...

echo.
echo 📦 Installing Backend Core...
cd Backend\core && yarn install && cd ..\..

echo.
echo 📦 Installing Modbus Adapter...
cd Backend\adapters\modbus && yarn install && cd ..\..\..

echo.
echo 📦 Installing BACnet Adapter...
cd Backend\adapters\bacnet && pip install -r requirements.txt && cd ..\..\..

echo.
echo 📦 Installing Frontend...
cd Frontend && yarn install && cd ..

echo.
echo ✅ Installation complete!
echo.
echo 🎯 To start all services, run: pm2 start ecosystem.config.cjs

