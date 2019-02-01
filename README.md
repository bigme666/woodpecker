# woodpecker
A simple VBA script that prevents your screen to lock on Windows systems.

This script sends the {NUMLOCK}{NUMLOCK} keyboard code every 60 seconds so that your screen is kept alive and does not lock.
To stop the script is sufficient to delete the text file Woodpecker_ON.txt that the script itself creates in the C:/TEMP folder.

Be careful because the use of this script might break your Corporation security policies.

While testing, use the provided kill.vbs script to kill all vbs scripts without having to delete the Woodpecker_ON.txt file.

