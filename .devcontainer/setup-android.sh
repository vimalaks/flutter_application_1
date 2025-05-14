#!/bin/bash

set -e

echo "Installing Java (required for Android SDK)... and #To install following run the below command:
    #ninja — required build system
    #clang — C/C++ compiler
    #cmake — the build generator Flutter uses
    #libgtk-3-dev — needed for GUI apps on Linux"
sudo apt update
sudo apt install -y build-essential clang cmake ninja-build pkg-config libgtk-3-dev openjdk-11-jdk unzip wget

#sudo apt install build-essential clang cmake ninja-build pkg-config libgtk-3-dev

echo "Downloading Android SDK command-line tools..."
mkdir -p $HOME/Android/Sdk/cmdline-tools/latest
cd $HOME/Android/Sdk/cmdline-tools/latest
wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -O sdk-tools.zip
unzip sdk-tools.zip
rm sdk-tools.zip

# Fix folder structure if needed
if [ -d "$HOME/Android/Sdk/cmdline-tools/latest/cmdline-tools" ]; then
    mv $HOME/Android/Sdk/cmdline-tools/latest/cmdline-tools/* $HOME/Android/Sdk/cmdline-tools/latest/
    rm -r $HOME/Android/Sdk/cmdline-tools/latest/cmdline-tools
fi

echo "Accepting licenses and installing platform-tools, build-tools, platforms..."
yes | $HOME/Android/Sdk/cmdline-tools/latest/bin/sdkmanager --licenses
$HOME/Android/Sdk/cmdline-tools/latest/bin/sdkmanager \
    "platform-tools" \
    "platforms;android-33" \
    "build-tools;33.0.2"

echo "✅ Android SDK setup complete."
