capcut)
    name="CapCut"
    appName="CapCut.app"
    type="dmg"
    downloadURL=$(curl -sL "https://www.capcut.com" | sed -n 's/.*href="\([^"]*\.exe\)".*Download for Windows.*/\1/p' | sed 's/\.exe/\.dmg/')
    installerTool="CapCut-Downloader.app"
    CLIInstaller="CapCut-Downloader.app/Contents/MacOS/CapCut-Downloader"
    expectedTeamID="22MMUN2RN5"
    CLIArguments=(--mode=silent)
    appCustomVersion() { echo "$(defaults read /Applications/CapCut.app/Contents/Info.plist CFBundleShortVersionString)" }
    ;;
