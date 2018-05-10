export JAVA_HOME=/Program Files/Java/jdk1.8.0_112
cd /Users/masdi/Documents/lamw-prj/baku_kata
keytool -genkey -v -keystore baku_kata-release.keystore -alias baku_kataaliaskey -keyalg RSA -keysize 2048 -validity 10000 < /Users/masdi/Documents/lamw-prj/baku_kata/baku_katakeytool_input.txt
