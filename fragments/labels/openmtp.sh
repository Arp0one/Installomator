openmtp)
    name="OpenMTP"
    type="dmg"
    if [[ $(arch) == "arm64" ]]; then
        archiveName="openmtp-[0-9.]*-mac-arm64.dmg"
    elif [[ $(arch) == "i386" ]]; then
        archiveName="openmtp-[0-9.]*-mac-x64.dmg"
    fi
    downloadURL="$(downloadURLFromGit ganeshrvel openmtp)"
    appNewVersion="$(versionFromGit ganeshrvel openmtp)"
    expectedTeamID="6UR4H85SA2"
    ;;
