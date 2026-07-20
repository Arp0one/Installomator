ganttproject)
    name="GanttProject"
    type="dmg"
    appNewVersion="$(versionFromGit bardsoftware ganttproject)"
    if [[ $(arch) == "arm64" ]]; then
        archiveName="ganttproject-${appNewVersion}-silicon.dmg"
    elif [[ $(arch) == "i386" ]]; then
        archiveName="ganttproject-${appNewVersion}-intel.dmg"
    fi
    downloadURL="$(downloadURLFromGit bardsoftware ganttproject)"
    expectedTeamID="QDCH4KTVP7"
    ;;
