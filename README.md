# VSC-Nordic-example

This repo contains Visual Studio Code configuration for ble_app_blinky example from Nordic SDK 15. It supports:
 - IntelliSense
 - building the app (using gcc compiler)
 - flashing the app and the softdevice (using nrfjprog)
 - source-level debugging (using gdb/mi and JLink gdb server)
 - SDK configuraion (using CMSIS Configuration Wisard included with the Nordic SDK)

The repo contains configurations for PCA10056(nRF52840) and PCA10040(nRF52832) dev boards.
Only Windows is currently supported.

__Tools required:__
 - [Visual Studio Code](https://code.visualstudio.com/)
 - [C/C++ for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
 - [Nordic SDK v15.0.0](http://infocenter.nordicsemi.com/topic/com.nordic.infocenter.sdk/keydef/PLUGINS_ROOT/com.nordic.infocenter.sdk5.v15.0.0/index.html?cp=4_0_0)
 - [nRF5x Commanfd Line Tools](http://infocenter.nordicsemi.com/topic/com.nordic.infocenter.tools/dita/tools/nrf5x_command_line_tools/nrf5x_command_line_tools_lpage.html?cp=5_1)
 - [Segger JLink tools](https://www.segger.com/downloads/jlink/)
 - [GCC Cross-compiler/debugger](https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads)
 - [GNU Build tools](https://github.com/gnu-mcu-eclipse/windows-build-tools/releases)
 - [Java](https://java.com/en/)
 
 __Setup__
 - Clone this repo
 - edit the ble_app_blinky\vscode.bat and adjust all paths to match your configuration
 - set PCAXXXXX_SN variable to serial numbers of your dev boards
 - edit gcc compiler settings in nRF5_SDK_15.0.0_a53641a\components\toolchain\gcc\Makefile.windows
  
__Running the Visual Studio Code__
Run the ble_app_blinky\vscode.bat. It opens VcCode workspace containing three folders - the root folder of the app (containing main.c)
and two hw-specific folders PCA10040 and PCA10056.

Open the main.c and verify that IntelliSense has found all header files. Go though the file and verify that you can follow
definitios etc. Note that there are two IntelliSense configurations, one per each hw variant. 

There are five tasks configured in each hw-specific folder:
 - build
 - clean
 - flash
 - flash_softdevice
 - sdk-config
 
 Connect your dev board, run tasks and monitor the console window to ensure they work.
 
 There is separate debugger configuration per each hw variant. To start the debugger, first ensure that your board flashed ok and the blinky
 app works. Switch to VcCode Debugger window, select correct configuration and start debugger. The debugger should connect to the board,
 reset it, and break at main(). Ensure that IntelliSense configuration matches the HW you debug.
 
