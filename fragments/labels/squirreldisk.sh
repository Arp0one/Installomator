squirreldisk)
    name="SquirrelDisk"
    type="dmg"
    downloadURL=$(downloadURLFromGit adileo squirreldisk)
    appNewVersion=$(versionFromGit adileo squirreldisk)
    expectedTeamID=""
    blockingProcesses=( "SquirrelDisk" )
    ;;
