# Realme Europe bootloader unlock 

WARNING! 
It was tested on RMX3301, but you can try it on other models.

If your build is lower than RMX####_11_A.14, or higher than RMX####_11_A.21, you need to downgrade/upgrade your rom by OTA package!

# PROCEDURE:

1. Make sure under Developer options you have OEM unlocking and USB debugging enabled
2.  Download and extract repository
3. Open a terminal in the folder of the extracted files
4. Connect the phone to the PC and select the File transfer option
5. Run the script:
  On Windows, type run.bat and press enter
  On Linux, type ./run.sh and press enter
6. Now the phone is temporarily rooted and the phone model is changed to RMX3301. Do not reboot or you will lose this status.

   
At this point you can follow the procedure on the official forum to unlock the bootloader of the global model. If you already have the Deeptesting app installed, clear its data to make sure it will update.

Deeptest apk also included in repo!


# UNLOCK USING DEEPTEST APP

1. Change region to vietnam(or any with supported bootloader unlock) and install deeptest.apk
2. Crear data for installed app
3. Run deeptest application and wait for it to complete
4. Start in-depth test
5. Your phone should reboot to bootloader, connect it to pc and type in cmd: fastboot flashing unlock  (you need to have platform tools and fastboot drivers installed!)
6. Bootloader Unlocked!
