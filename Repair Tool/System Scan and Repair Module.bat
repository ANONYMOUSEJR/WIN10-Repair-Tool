@echo off

@title System Scan and Repair Module

color a

cls

@echo This batch file will scan your system for corrupt files and attempt to fix them (Please run as an Admin).

@echo Note: to fullscreen the window press alt + enter.

pause

@echo Great, now let the boyo do its thing.

timeout /T 5

# "/NOBREAK" ignores the users key presses to skip.

cls

sfc /scannow

@echo Now the module will attempt to repair the system using the internet, please stand by:

DISM /Online /Cleanup-Image /CheckHealth

DISM /Online /Cleanup-Image /ScanHealth

DISM /Online /Cleanup-Image /RestoreHealth

@echo I hope my little script has repaired your computer, thank you for using it and have a loveley day!

pause
