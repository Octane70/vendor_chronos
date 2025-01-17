[Chronos Open Source Project]
====================================


Download the source
--------------

Please read the [AOSP building instructions](http://source.android.com/source/index.html) before proceeding.

Initialize:

Init core trees without any device/kernel/vendor :

    $ repo init -u https://github.com/ChronosRom/platform_manifest.git -b kitkat

Init repo with all devices, kernels and vendors supported by cosp :

    $ repo init -u https://github.com/ChronosRom/platform_manifest.git -b kitkat -g all,kernel,device,vendor

Init repo only for a particular device

    $ repo init -u https://github.com/ChronosRom/platform_manifest.git -b kitkat -g all,-notdefault,<devicename>,<vendorname>

for example, to init only trees needed to build jfltecan

    $ repo init -u https://github.com/ChronosRom/platform_manifest.git -b kitkat -g all,-notdefault,jfltecan,samsung

sync repo

    $ repo sync

***

Building
--------

After the sync is finished, please read the [instructions from the Android site](http://s.android.com/source/building.html) on how to build.

    . build/envsetup.sh && time brunch jfltecan


You can also build (and see how long it took) for specific devices like this:
    
    chmod 755 build.sh
    ./build.sh -d jfltecan

Remember to `make clobber` every now and then!
