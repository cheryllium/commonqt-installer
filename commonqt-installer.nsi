; CommonQt Installer v1.0
; C. Yang (cherie@cmu.edu)
; 
; Note: build with the "large string" special build of nsis.
; Known Issue: this script will overwrite system Path instead of 
; appending if Path is greater than 8192 bytes. (It is unlikely, 
; though, for a user's Path to be that long.)

; Includes function for updating PATH
!include "EnvVarUpdate.nsh"

; Installer's name
Name "CommonQt Installer"

; File name of installer
Outfile "CommonQt Installer.exe"

; Where the files will be installed
InstallDir $PROGRAMFILES\CommonQt

; Text prompting user to enter a directory
DirText "This installer will install CommonQt on your computer."

Section

; Set output path to installation directory
SetOutPath $INSTDIR

; Put all of these files there
File commonqt.dll
File msvcp120.dll
File msvcr120.dll
File smokebase.dll
File smokeqtcore.dll
File smokeqtdeclarative.dll
File smokeqtgui.dll
File smokeqthelp.dll
File smokeqtmultimedia.dll
File smokeqtnetwork.dll
File smokeqtopengl.dll
File smokeqtscript.dll
File vccorlib120.dll

; Add this directory to the PATH

${EnvVarUpdate} $0 "PATH" "P" "HKLM" $INSTDIR

SectionEnd