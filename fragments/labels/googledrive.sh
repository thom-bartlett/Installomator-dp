googledrive|\
googledrivefilestream)
    # credit: Isaac Ordonez, Mann consulting (@mannconsulting)
    name="Google Drive File Stream"
    type="pkgInDmg"
    if [[ $(arch) == "arm64" ]]; then
       packageID="com.google.drivefs.arm64"
    elif [[ $(arch) == "i386" ]]; then
       packageID="com.google.drivefs.x86_64"
    fi
    appNewVersion=$(curl https://support.google.com/a/answer/7577057 | grep "Windows and macOS" | head -1 | sed -n 's/.*Version \([0-9]\{1,3\}\.[0-9]\{1,3\}\).*/\1/p')
    downloadURL="https://dl.google.com/drive-file-stream/GoogleDriveFileStream.dmg" # downloadURL="https://dl.google.com/drive-file-stream/GoogleDrive.dmg"
    blockingProcesses=( "Google Docs" "Google Drive" "Google Sheets" "Google Slides" )
    appName="Google Drive.app"
    expectedTeamID="EQHXZ8M8AV"
    ;;
