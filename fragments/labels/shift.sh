shift)
    name="Shift"
    type="dmg"
    if [[ $(arch) == "arm64" ]]; then
        URL=$(curl -fs https://shift.com/download/ | grep 'https://updates.tryshift.com/' | sed -n 's/.*\(https:\/\/updates.tryshift.com\/[^"]*stable-x64\.dmg\).*/\1/p')
        downloadURL=$(echo "$URL" | sed 's/x64/arm64/')
    elif [[ $(arch) == "i386" ]]; then
        downloadURL=$(curl -fs https://shift.com/download/ | grep 'https://updates.tryshift.com/' | sed -n 's/.*\(https:\/\/updates.tryshift.com\/[^"]*stable-x64\.dmg\).*/\1/p')
    fi
    appNewVersion=$(echo "$downloadURL" | grep -o 'v[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+' | sed 's/v//')
    expectedTeamID="TYR24A9JU5"
    ;;
