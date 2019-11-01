#!/usr/bin/env bash

set -e

echo "Building and Running..."

echo "Stopping..." && \
	adb shell am force-stop com.qualcomm.ftcrobotcontroller
echo "Building..." && \
	./gradlew assembleDebug && \
echo "Running..." && \
	adb install -r TeamCode/build/outputs/apk/TeamCode-debug.apk && \
echo "Launching..." && \
	adb shell am start -n com.qualcomm.ftcrobotcontroller/org.firstinspires.ftc.robotcontroller.internal.FtcRobotControllerActivity && \
sleep 3 && \
echo "Done!"
