# AndroidJar
Create android.jar with hidden apis to use in Android Studio

Execute the script from the root of your AOSP code .

This script take the contents of framework and core_libart and copies/replaces them in android.jar , so that all hidden apis which are not present in android.jar by default can be used in Android Studio for building applications for your platform .
