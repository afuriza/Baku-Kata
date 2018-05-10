set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_112
set PATH=%JAVA_HOME%\bin;%PATH%
set JAVA_TOOL_OPTIONS=-Duser.language=en
cd C:\Users\masdi\Documents\lamw-prj\baku_kata
keytool -genkey -v -keystore baku_kata-release.keystore -alias baku_kataaliaskey -keyalg RSA -keysize 2048 -validity 10000 < C:\Users\masdi\Documents\lamw-prj\baku_kata\keytool_input.txt
