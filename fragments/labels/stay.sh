stay)
    name="Stay"
    type="dmg"
    downloadURL=$(curl -s "https://cordlessdog.com/stay/" | grep -o '/stay/versions/Stay%20[0-9]\+\.[0-9]\+\.dmg' | sort -V | tail -n 1 | sed 's|^|https://cordlessdog.com|')
    appNewVersion=$(echo "$downloadURL" | grep -o 'Stay%20[0-9]\+\.[0-9]\+' | sed 's/Stay%20//')
    expectedTeamID="N87J278237"
    ;;
