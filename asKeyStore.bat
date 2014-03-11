@ECHO OFF
cd jdk1.6.0_26
cd bin
set /p keyStore="Enter KeyStore Name:"
keytool -genkey -v -keystore ..\..\%keyStore%.keystore -alias %keyStore% -keyalg RSA -keysize 2048 -validity 10000
cd ..\..
pause
