#!/bin/bash

echo -e "\e[1;34mClone LineageOS 16 kernel for jf device...\e[0m"
git clone -b lineage-16.0 https://github.com/LineageOS/android_kernel_samsung_jf.git

echo -e "\e[1;34mClone Google armeabi 4.8 toolchain...\e[0m"
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8 toolchain

echo -e "\e[1;34mClone Kali NetHunter...\e[0m"
git clone -b 2019.4 https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-project.git

echo -e "\e[1;34mBootstrap Nethunter...\e[0m"
./kali-nethunter-project/nethunter-installer/bootstrap.sh

echo -e "\e[1;32m[+] Bootstrap completed succesfully!\e[0m"