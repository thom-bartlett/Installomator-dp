oktaverify)
    name="Okta Verify"
    type="pkg"
    if [[ -z $oktaTenant ]]; then
         oktaTenant=okta.okta.com
    fi
    downloadURL="https://$oktaTenant/api/v1/artifacts/OKTA_VERIFY_MACOS/download?releaseChannel=GA"
    appNewVersion=$(curl -is "$downloadURL" | grep ocation: | grep -o "OktaVerify.*pkg" | cut -d "-" -f 2)
    expectedTeamID="B7F62B65BN"
    ;;
    