#!/bin/bash

# -----------------------------------------------------------------------------
# Info:
#   author:    Santhosh veer
#   file:      youtube-dl.sh
#   created:   18.09.2018
#   revision:  18.09.2018
#   version:   0.3
# -----------------------------------------------------------------------------
# Requirements:
#   Python, ffmpeg, cURL
# Description:
#   youtube-dl Downloader for Termux Terminal Emulator
#
# -----------------------------------------------------------------------------

## Update packages
echo "+++ Updating the Packages +++"
echo "+++ Running Command pkg up +++"

pkg up

echo -e "\\n"
echo "+++ Packages are Updated Successfully +++"
sleep 2;
echo -e "\\n"

## Install dependency packages
echo -e "+++ Install dependency packages +++"
sleep 2;
echo -e "\\n"

echo -e "+++ Install python +++"
echo -e "\\n"

pkg install python -y

sleep 2;

echo -e "+++ Install cURL +++"
echo -e "\\n"

pkg install curl -y

sleep 2;

echo -e "\\n"
echo -e "+++ install ffmpeg (For Audio Conversion) +++"
echo -e "\\n"

pkg install ffmpeg -y

sleep 2;

echo -e "\\n"
echo -e "+++ Successfully Installed the dependency packages +++"
sleep 2;

echo -e "\\n"

## Download Youtube-dl
echo -e "+++ Downloading Youtube-dl +++"
echo -e "+++ Please Wait +++"

curl -s -L https://yt-dl.org/downloads/latest/youtube-dl -o /data/data/com.termux/files/usr/bin/youtube-dl

sleep 2;
echo -e "+++ Youtube-dl Downloaded Successfully +++"

echo -e "\\n"

sleep 2;

## Set Permission
echo -e "+++ Set Permission to Execute the Script +++"

chmod a+rx /data/data/com.termux/files/usr/bin/youtube-dl

echo "+++ Permission Granted +++"

sleep 2;

echo -e "\\n"

## Verify the Installation
echo -e "+++ Verifiy Installation +++"

youtube-dl --version
command -v youtube-dl

sleep 2;

echo -e "\\n"

echo "+++ Installation completed successfully +++"
echo "+++ You can Now use Youtube-dl to download the Youtube Videos +++"