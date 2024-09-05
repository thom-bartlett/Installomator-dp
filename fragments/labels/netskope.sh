netskope)
    name="Netskope Client"
    type="pkg"
    downloadURL="https://download-dailypay.goskope.com/dlr/mac/get"
    # if [[ -n $customURL ]]; then
    #     downloadURL="https://download-dailypay.goskope.com/dlr/mac/get"
    # else
    #     localPKG=$(find "/Library/Application Support/JAMF/Waiting Room/" -iname "NSClient*.pkg" | head -n1)
    #     if [[ -f $localPKG ]]; then
    #     downloadURL="file://${localPKG// /%20}"
    #     fi
    # fi
    expectedTeamID="24W52P9M7W"
    Company="Netskope"
    if [[ -z $downloadURL ]]; then
        printlog "downloadURL variable not set" ERROR
        printlog "################## End $APPLICATION \n\n" INFO
        exit 99
    fi
    NOTIFY=silent
    ;;
