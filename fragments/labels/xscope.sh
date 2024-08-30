xscope)
    name="Xscope"
    type="zip"
    downloadURL=$(curl -fLs xscopeapp.com | grep "https://downloads.iconfactory.com/xscope" | awk -F 'href="' '{print $2}' | awk -F '"' '{print $1}')
    appNewVersion=$(curl -fLs xscopeapp.com | grep "https://downloads.iconfactory.com/xscope" | awk -F 'xScope-' '{print $2}' | awk -F '+' '{print $1}')
    expectedTeamID="RYQWBTQRPT  "
    ;;
