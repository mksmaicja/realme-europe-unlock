# Realme Europe bootloader unlock DO NOT USE THIS BRANCH! ITS WIP

WARNING! 
I tried it on realme 7, but it should work on other devices (only mediatek).

# PROCEDURE:

1. Download full repo

2. Navigate to the "MTK Drivers" folder, extract the files, and then install them. For ".inf" files: You must right-click, and then select "Install" from the drop-down menu. You may have to disable a Windows setting for this to work, however, as they are unsigned drivers. You can learn how to do this here: https://www.howtogeek.com/167723/how-to-disable-driver-signature-verification-on-64-bit-windows-8.1-so-that-you-can-install-unsigned-drivers/

3. Install Python if you haven't already. MAKE SURE TO ADD TO PATH. (i prefer 3.8/9)

4. Hold "shift" on your keyboard, and right-click on the Windows home-key. Click "Command Prompt (Admin)".

5. Type in the command "pip install pyusb pyserial json5", and then close your command prompt once it is done installing.

6. Extract the "Bypass Tools.zip" into a folder, and then navigate to the "Driver" folder within. Right-click on the file named "cdc-adm.inf" file, and select "Install". Wait for it to finish - though, it shouldn't take any longer than a second.

7. Install libUSB, and then open it. Power your phone off, and keep it that way. LibUSB should be called "Filter Wizard" in your start-menu. Right-click on it, and run it as an administrator. Have your RMX2155 and a trusty MTP cable on-hand. Click on "Install a device filter", then connect your Realme 7 with both volume-buttons pressed. Select and install the device that appears. It should have something like "MTK" in its name. Do this quickly, as it usually disappears after a few seconds. Once that is done: Unplug your phone.

8. Head to the folder with the bypass tools inside, and open "brom.bat". Connect your device with both volume buttons pressed. It should say something along the lines of: "Protection disabled" if it is successful. Disconnect your phone again.

9. Open the flash-tool folder, and launch the application inside. It is named: "flash_tool.exe". Select the scatter file inside the "OFP Contents" folder within the ROM folder(you need to download rom for your device from unlockable region)(need to be flashable via SP flash tool), and un-check the following boxes: "Opposerver 2", "Special preload", "My custom", and "Cdt engineering".

10. Make sure that the box above where it lists all those files says: "Download only". This is very important. After you've verified that those boxes are without check-marks, and that the method is "Download only": Press the "Download" button at the top, connect your phone, and then press the volume-buttons. Once your phone is done flashing and a green check-mark is displayed: It will then boot. If it doesn't boot automatically, wait a few more seconds, and then hold the power key until it turns on. Give it some time.

11. Once it starts, and after you've gone through the main set-up process, you'll need to change your region to "Vietnam". This is a very important step to get your bootloader unlocked. For the sake of making this short: Follow the link. It will take you to a guide that should work for all OPPO devices. Please, read it carefully. From top to bottom. https://forum.xda-developers.com/t/changing-a-region-of-a-device-for-example-change-a-europa-device-to-india-device-updated-instructions-now-working-again.4143415/ 
if link doesn't work run regiontuto.txt

12. Download and Move the Deep Test .APK file to your phone. Install it, and then open it. Submit your application, and wait. After: Just follow the directions given, and use ADB to unlock that bootloader. Use the following video to help you out if you don't already know how to unlock your bootloader with ADB! It also shows you how to flash a recovery, which will be useful if you wanna do that sorta stuff.
