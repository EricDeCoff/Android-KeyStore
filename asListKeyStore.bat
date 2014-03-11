@ECHO OFF
set /p KeyStoreName="Enter KeyStoreName: "
IF [%KeyStoreName%]==[] GOTO HELP
:CHECK
if NOT exist %KeyStoreName%.keystore GOTO FILE_NOT_EXISTS
cd jdk1.6.0_26
cd bin
keytool -list -v -keystore ..\..\%KeyStoreName%.keystore
pause
cd ..\..
GOTO ENDIT
:FILE_NOT_EXIST
echo *** WARNING THIS IS USED TO LIST YOUR KeyStore File ***
:HELP
echo      usage: 
echo                   listKeyStore YOUR_KEYSTORE_NAME
pause
:ENDIT

