---
title: "Wave for Music"
description: ""
created_at: "2020-10-07T16:14:46Z"
updated_at: "2023-10-31T11:55:36Z"
---

### I can't turn my Wave on. No LEDs light up.

Check if Wave can be discovered by your computer. If your computer indicates that it's connected, please disconnect and wait two minutes. Then try powering Wave on again.

:::caution
If your computer can't discover Wave, please try charging it for at least 20 minutes and try powering it on again. If the problem persists, please reach out to us via [email](mailto:wave@genkiinstruments.com).
:::

### Wave is connected to my computer, but Softwave does not recognize it.

1. Disconnect Wave from Softwave by navigating to Menu-&gt;Connect Bluetooth devices and press the "x" behind the connected Wave.
2. Restart the computer.
3. Then reconnect Wave.

### How can I minimize the latency?

If using Softwave, head to Menu → Audio/MIDI Settings and reduce the audio buffer size.

:::tip
A smaller value will result in lower overall latency.
Setting this value too low can cause audio distortion.
Most DAWs have a setting for this in their preferences as well.
:::

### I can't update the firmware of my Wave through Softwave.

Make sure you have the latest version of Softwave. If the firmware update repeatedly fails, you can perform the update manually via Android/iOS.

##### Manual Firmware Update (iOS)

- **To begin, get nRF Toolbox for your iOS device**
  [nRF Toolbox for iOS](https://apps.apple.c/src/app/nrf-toolbox/id820906058)
- Now download [this firmware zip package](https://github.com/genkiinstruments/releases/releases/tag/wave_firmware) to your iOS device. Select "Open in nRF Toolbox".
- Turn Wave on, find it and select it in the list of devices in nRF Toolbox.
- Tap "wave_firmware.zip".
- Press "Update".
- Wait for the update to complete, Wave should restart automatically.

##### Manual Firmware Update (Android)

- Before you start, please download [this firmware zip package](https://github.com/genkiinstruments/releases/releases/tag/wave_firmware) to your Android or iOS device.
- **To begin, get nRF Toolbox for your Android device**
  [nRF Toolbox for Android](https://play.google.com/store/apps/details?id=no.nordicsemi.android.nrftoolbox&hl=en&gl=US)

**Then follow these steps**

1. Open nRF Toolbox
2. Tap "DFU"
3. Tap "Select File" and load the zip file you downloaded. If you're prompted, select "Distribution packet (ZIP)".
4. Select "Application only" and press OK
5. Tap "Select Device" and look under "Available Devices"
6. Find Wave and select it
7. Tap "Upload" and wait for the update to finish

![](/images/article_360014089577_image_0.jpg)

### One or more functions in my preset are not working.

Make sure the function is not muted and no other functions in the preset are soloed [-&gt; see instructions](/wave-for-music/functions/overview/).

### I have multiple Waves, but my DAW can only see one of them.

This might happen due to naming conflicts.

1. Use Softwave to give each Wave a unique name (gear icon in the top left corner behind each connected Wave).
2. Disconnect your Waves from Softwave by navigating to Menu-&gt;Connect Bluetooth Devices and press the "x" behind the connected Waves.
3. Turn the rings off and back on, then reconnect them in Softwave. They should now have unique names.

## Windows

### Wave is not listed as a MIDI input in DAWs on my Windows 10 machine.

Softwave uses virtual MIDI driver software provided by [loopMIDI](https://www.tobias-erichsen.de/software/loopmidi.html). To use Wave as a MIDI device in your DAW, you need to install loopMIDI - if you haven't already. The software is free, and has proven to be very reliable.

**Note that your browser may prompt a warning when trying to download loopMIDI, but we assure you that it's completely safe.**

##### Troubleshooting virtual MIDI

In Softwave, go to Menu → About and check that Virtual MIDI driver version is 1.3.0.43.

1. If you don’t see the driver version, please install [loopMIDI](https://www.tobias-erichsen.de/software/loopmidi.html) and restart Softwave. Note: You don’t need to interact in any other way with loopMIDI, it is just required for the MIDI driver.
2. If you have an earlier version of the driver, please uninstall **loopMIDI** and the **teVirtualMIDI - Vidrual MIDI Driver x64** from Device Manager. Then restart your computer and install loopMIDI from the step above.

![](/images/article_360014089577_image_1.jpg)

### Wave gets in a strange connect/disconnect loop with the system (lights flashing on/off).

This seems to happen if you've previously paired Wave through Windows's system settings. Pairing is not necessary, and removing Wave through the system's Bluetooth settings will fix the issue. You can still connect through Softwave just fine.

### I'm experiencing a slow or jittery connection.

If you're experiencing a slow or jittery connection, that might be due to old or outdated Bluetooth drivers. Make sure you have the latest drivers installed for your system. If the drivers are up to date and you still experience issues, consider using an external USB dongle instead. We've found [this dongle](https://www.iogear.com/product/GBU521/) to work best in our tests.

## macOS

### There is no sound coming from Softwave.

1. Head to Menu → Audio/MIDI Settings... and make sure the correct audio output is selected.
2. Hit "Test" and you should hear a test tone to confirm.
3. You can play the built-in sound engine (SynthWave) with your computer's keyboard (keys W-P and A-L).
4. Make sure the window has focus by clicking anywhere inside and then press a key.
5. You should hear sound.
6. You can also use an external MIDI controller (just make sure it's selected as a MIDI input in Audio/MIDI Settings).

### I can't connect Wave to my macOS device.

I get an error saying: MIDI over Bluetooth is not available because it requires MIDI services to operate in 64-bit mode.

Remove any drivers listed in the error message and restart the computer. If you get a message saying "The 32-bit driver list is unavailable".

1. Open Finder, click "Go" in the menubar, then hold the Option key down. You should see a folder called "Library". Open that folder.
2. Navigate to ~/Library/Audio/Midi Drivers
3. Open Finder, click "Go" in the menubar, then select "Computer".
4. Navigate to Macintosh HD/Library/Audio/MIDI Drivers
5. If there are any files in these directories, try removing them (or moving them to a temporary folder if you don't want to lose them).
6. Then restart the computer and see if you can connect Wave.

### I'm having Bluetooth connection issues.

Try deleting any Bluetooth Property List files that might be corrupted. To remove the .plist files:

1. Turn Bluetooth off in your computer
2. Choose Go from the Finder menu at the top of your screen ➙ Go to Folder
3. Type in: /Library/Preferences
4. Find the com.apple.Bluetooth.plist file and delete it
5. Go back to Go in the Finder Menu ➙ Go to Folder
6. Type in: ~/Library/Preferences/ByHost
7. Find com.apple.Bluetooth.xxx.plist file and delete it
8. Turn Bluetooth on in your computer
