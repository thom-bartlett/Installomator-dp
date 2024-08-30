globalprotect)
    name="globalprotect"
    type="pkg"
    appNewVersion=$(curl -fs https://pan-gp-client.s3.amazonaws.com/ | xpath '//ListBucketResult/Contents[last()]/Key' 2>/dev/null | sed -n 's/.*<Key>\([0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\)-.*/\1/p')
    rawURL=$(curl -fs https://pan-gp-client.s3.amazonaws.com/ | xpath '//ListBucketResult/Contents/Key[contains(., ".pkg")]' 2>/dev/null | sed -e 's/<Key>//g' -e 's/<\/Key>//g' | sort -V | tail -n 1)
    downloadURL="https://pan-gp-client.s3.amazonaws.com/${rawURL}"
    expectedTeamID="PXPZ95SK77"
    blockProcesses="GlobalProtect"
    packageID="come.paloaltonetworks.globalprotect.pkg"
    ;;