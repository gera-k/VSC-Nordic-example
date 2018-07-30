rem Location of Nordic SDK
set NRF_SDK=V:/Nordic/nRF5_SDK_15.0.0_a53641a

rem Location of Nordic Command Line tools (nrfjprog) 
set NRF_TOOLS=C:/Program Files (x86)/Nordic Semiconductor/nrf5x/bin

rem location of GCC Cross-compiler https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads
set GNU_GCC=V:/Nordic/gcc-arm-none-eabi-7-2018-q2-update-win32/bin

rem Location of Gnu Tools (make) https://github.com/gnu-mcu-eclipse/windows-build-tools/releases
set GNU_TOOLS=V:/Nordic/GNU/Tools/2.11-20180428-1604/bin

rem Location of SEGGER JLink tools
set SEGGER_TOOLS=C:/Program Files (x86)/SEGGER/JLink_V620i

rem Serial numbers of nRF development boards
set PCA10056_SN=683798348
set PCA10040_SN=682645815

"C:/Program Files/Microsoft VS Code/Code.exe" ble_app_blinky.code-workspace
