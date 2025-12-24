#!/bin/bash

echo "🚀 Installing UDT (Universal Device Translator)..."

echo "\n📦 Installing Backend Core..."
cd Backend/core && yarn install && cd ../..

echo "\n📦 Installing Modbus Adapter..."
cd Backend/adapters/modbus && yarn install && cd ../../..

echo "\n📦 Installing BACnet Adapter..."
cd Backend/adapters/bacnet && pip3 install -r requirements.txt && cd ../../..

echo "\n📦 Installing Frontend..."
cd Frontend && yarn install && cd ..

echo "\n✅ Installation complete!"
echo "\n🎯 To start all services, run: pm2 start ecosystem.config.cjs"


