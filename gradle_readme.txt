 
 
HOW TO use "gradle.build" file
 
       ::by jmpessoa
 
references:
   http://spring.io/guides/gs/gradle-android/
   https://paulemtz.blogspot.com.br/2013/04/automating-android-builds-with-gradle.html
 
   WARNING: you will need INTERNET CONNECTION!!
 
***SYSTEM INFRASTRUCTURE
 
(1) Look for the highest "...\sdk\build-tools" version
        The table point out gradle and "sdk\build-tools" versions compatibility
 
        plugin [in classpath]           gradle        sdk\build-tools
                   2.0.0                2.10          21.1.2
                   2.2.0                2.14.1        23.0.2
                   2.3.3                3.3           25.0.3
                   3.0.1                4.1           26.0.2
 
        Note 1. You can interpolate to some value other than these.
        Ex. If in your system the highest "sdk\build-tools" is "22.0.1", so downloaded/Installed gradle 2.1.0, etc..
 
        Note 2. In "build.gradle" file, the gradle version is set to be compatible with the highest "sdk\build-tools" found in your system
        as a consequence, it is this version of gradle that you must download/install.
 
        reference:
           https://developer.android.com/studio/releases/gradle-plugin.html#2-3-0
           https://gradle.org/releases/
           Hint: downloading just "binary-only" is OK!
 
        Note 3. You should set the gradle path in Lazarus menu "Tools --> LAMW --> Paths Settings..."
 
        Note 4. If your connection has a proxy, edit the "gradle.properties" file content. Example: 
 
             systemProp.http.proxyHost=10.0.16.1
             systemProp.http.proxyPort=3128
             systemProp.https.proxyHost=10.0.16.1
             systemProp.https.proxyPort=3128
 
        Note 5. Java Jdk 1.8, Android SDK "platform" 25 [or up],  "build-tools" 25.0.3, Android SDK Extra "support library/repository" and "Gradle 4.1" are "must have" to support AppCompat material theme in LAMW 0.8.
 
 
***SETTING ENVIRONMENT VARIABLES...
 
[windows] cmd line prompt:
set Path=%PATH%;C:\lamw-data\android-sdk-windows\platform-tools
set GRADLE_HOME=C:\lamw-data\gradle-4.7
set PATH=%PATH%;%GRADLE_HOME%\bin
 
[linux] cmd line prompt:
export PATH=/lamw-data/android-sdk-windows/platform-tools:$PATH
export GRADLE_HOME=/lamw-data/gradle-4.7
export PATH=$PATH:$GRADLE_HOME/bin
source ~/.bashrc
 
WARNING: The following tasks assume that you have:
         .Internet connection;
         .Set the environment variables;
         .Installed gradle version compatible with your highest "sdk\build-tools"
 
***BUILDING AND RUNNING APK ....
 
.METHOD - I.
    Running installed local version of gradle
 
    ::Go to your project folder....
 
[windows] cmd line prompt:
set Path=%PATH%;C:\lamw-data\android-sdk-windows\platform-tools
set GRADLE_HOME=C:\lamw-data\gradle-4.7
set PATH=%PATH%;%GRADLE_HOME%\bin
 
[windows] cmd line prompt:
gradle clean build --info
gradle run
 
 
[linux] cmd line prompt:
export PATH=/lamw-data/android-sdk-windows/platform-tools:$PATH
export GRADLE_HOME=/lamw-data/gradle-4.7
export PATH=$PATH:$GRADLE_HOME/bin
source ~/.bashrc
 
[linux] cmd line prompt:
gradle clean build --info
gradle run
 
Congratulation!
 
    :: Where is my Apk? here: "C:\Users\masdi\Documents\lamw-prj\baku_kata\build\outputs\apk"!
 
hint: you can try edit and run:
[windows] "gradle_local_build.bat"
[linux] "gradle_local_build.sh"
[windows] "gradle_local_run.bat"
[linux] "gradle_local__run.sh"
 
 
.METHOD - II.
 
(1) Making "gradlew" (gradle wrapper) available for building your project
    ::Go to your project folder....
 
[windows] cmd line prompt:
gradle wrapper
 
[linux] cmd line prompt:
./gradle wrapper
 
hint: you can try edit and run:
[windows] "gradle_making_wrapper.bat"
[linux] "gradle_making_wrapper.sh"
 
(2) Building your project with "gradlew"
 
[windows] cmd line prompt:
gradlew build
 
[linux] cmd line prompt:
./gradlew build
 
hint: you can try edit and "build" with gradle wrapper:
[windows] "gradle_w_build.bat"
[linux] "gradle_w_build.sh"
 
(3) Installing and Runing Apk
 
[windows] cmd line prompt:
gradlew install
 
[linux] cmd line prompt:
./gradlew run
 
Congratulation!
 
    :: Where is my Apk? here: "C:\Users\masdi\Documents\lamw-prj\baku_kata\build\outputs\apk"!
 
hint: you can try edit and "run" with gradle wrapper:
[windows] "gradle_w_run.bat"
[linux] "gradle_w_run.sh"
 
 
