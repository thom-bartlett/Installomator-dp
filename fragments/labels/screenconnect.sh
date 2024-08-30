screenconnect)
    name="Screens Connect"
    type="zip"
    downloadURL=$(curl -fs https://updates.edovia.com/com.edovia.screens.connect.mac/appcast.xml | xpath '//rss/channel/item[1]/enclosure/@url' | cut -d '"' -f 2)
    appNewVersion=$(curl -fs https://updates.edovia.com/com.edovia.screens.connect.mac/appcast.xml | xpath '//rss/channel/item[1]/enclosure/@sparkle:shortVersionString' 2>/dev/null | cut -d '"' -f 2)
    expectedTeamID="F69M46B76S"
    ;;
