observeai)
    name="Observe.AI Screen Recorder"
    type="pkg"
    if [[ $(arch) == "arm64" ]]; then
        downloadURL=$(getJSONValue "$(curl -fsL https://kong.observe.ai/v1/screen-recording/app-versions/latest-mac)" "arm64_pkg_download_url" )
    elif [[ $(arch) == "i386" ]]; then
        downloadURL=$(getJSONValue "$(curl -fsL https://kong.observe.ai/v1/screen-recording/app-versions/latest-mac)" "x64_pkg_download_url" )
    fi
    appNewVersion=$(getJSONValue "$(curl -fsL https://kong.observe.ai/v1/screen-recording/app-versions/latest-mac)" "app_version_number" | cut -c2- )
    expectedTeamID="377DKSV63J"
    ;;
