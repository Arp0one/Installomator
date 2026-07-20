arxonebackup)
    name="ArxOne Backup"
    type="pkg"
    packageID="com.arxone.backup"

    downloadURL="$(curl -fsI \
        -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)" \
        -H "Accept: text/html" \
        "https://get.arx.one/backup" \
        | awk -F': ' '/^[Ll]ocation:/ {print $2}' \
        | tr -d '\r')"

    downloadURL="https://get.arx.one${downloadURL}"
    downloadURL="${downloadURL// /%20}"

    appNewVersion="$(echo "$downloadURL" | grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+')"

    expectedTeamID="4P2P42JL2Y"
    blockingProcesses=( NONE )
    ;;   
