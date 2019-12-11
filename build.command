#!/bin/bash

BASEDIR="$(cd "$(dirname "$0")" && pwd)"
cd $BASEDIR

echo "----------------------------------------"
echo "Building editors"
echo "----------------------------------------"

cd mobile-apps/ios/Vendor/ONLYOFFICE
sh build-sdk.command
cd $BASEDIR

echo "----------------------------------------"
echo "Building for mobile"
echo "----------------------------------------"

cd mobile-apps/ios/Vendor/ONLYOFFICE
sh build-sdk-js.command
cd $BASEDIR

echo "----------------------------------------"
echo "Building and upload app"
echo "----------------------------------------"

cd mobile-apps/ios
fastlane beta
cd $BASEDIR

echo "----------------------------------------"
echo "Done"
echo "----------------------------------------"
