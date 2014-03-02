commonqt-installer
==================

NullSoft Installer for CommonQt on Windows

# Installer Executable
A pre-built installer is included with the name CommonQt Installer.exe. Please use this 
if you would like to install CommonQt. Make sure you have Qt version 4.8.5 installed first. 

# Build instructions 

The source code is found in commonqt-installer.nsi. The following folders are included: 
* CommonQt dlls : The dll files needed for CommonQt. 
* NSH Dependencies : The .nsh files that commonqt-installer.nsi depends upon. The only one
  not installed with NSIS by default is EnvVarUpdate.nsh. 
* NSIS Special Build - Large Strings : The special build of NSIS used to build this file. 

To build the file, make sure all of the dll files, dependencies, and the special build are 
in the same directory as the source code. Run: 

   makensis.exe commonqt-installer.nsi
   
This should create a file CommonQt Installer.exe in the same directory. 

# Credits + Acknowledgements 

* The CommonQt project, from which these dll files were taken, can be found here: 
  https://github.com/stassats/commonqt 
* The .nsh files and NSIS special build were downloaded from the NSIS website. 
