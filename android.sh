#Author : Rajesh Khetan
#script to create android.jar to access hidden apis in Android Studio.
mkdir -p android
cd android
unzip -uo ../out/target/common/obj/JAVA_LIBRARIES/framework_intermediates/classes.jar
unzip -uo ../out/target/common/obj/JAVA_LIBRARIES/core-libart_intermediates/classes.jar
cd ..
mkdir -p tmp
cd tmp
unzip -uo ../out/target/common/obj/JAVA_LIBRARIES/android_stubs_current_intermediates/classes.jar
cp -r java javax res assets AndroidManifest.xml resources.arsc junit ../android
cd ..
jar -cvf android.jar -C android .
rm -r android tmp
