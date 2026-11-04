#!/bin/sh
# Usage: tools/screenshot.sh NAME   (saves docs/img/NAME.png from the running emulator)
set -e
ADB=${ADB:-$HOME/Android/Sdk/platform-tools/adb}
"$ADB" exec-out screencap -p > "$(dirname "$0")/../docs/img/$1.png"
