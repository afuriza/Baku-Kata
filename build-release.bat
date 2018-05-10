set Path=%PATH%;C:\lamw-data\apache-ant-1.9.7\bin
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_112
cd C:\Users\masdi\Documents\lamw-prj\baku_kata
call ant clean release
if errorlevel 1 pause
