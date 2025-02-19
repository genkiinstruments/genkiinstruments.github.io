---
title: "Traktor Pro 3"
description: ""
created_at: "2021-11-30T13:16:05Z"
updated_at: "2021-11-30T13:53:04Z"
zendesk: 4412314296977
---

To make sure Wave works with Traktor Pro 3, navigate to the top left corner of your screen to Preferences → Audio Setup. Make sure you've selected an audio device.

## Mapping movements
1. To map Wave to a slider or a knob in Traktor Pro 3 navigate to Traktor's Preferences -&gt; Controller Manager.
2. Under Device, select Add -&gt; Generic MIDI
3. In Softwave solo the function you want to map (the "S"). Make sure your function has a dedicated CC number.
4. Navigate back to Traktor's Controller Manager. Click "Add In..." and select the effect you'd like to assign (e.g. Dry/Wet Adjust or X-fader position).
5. Click "Learn" and move Wave accordingly to make the link.
6. You should now see the MIDI CC change next to the Learn button. Press "Learn" again when finished to disable the learning mechanism.
7. In Softwave de-solo the function (the "S"). Now you've mapped a movement function to a parameter in Traktor Pro 3 successfully.

## Mapping the Click function
1. To map Wave to a button in Traktor Pro 3 navigate to Traktor's Preferences -&gt; Controller Manager.
2. Under Device, select Add -&gt; Generic MIDI
3. Click "Add In..." and select the button you'd like to assign (e.g. Play or FX unit 1 on).
4. In Softwave add a "Click" function and give it a MIDI CC number.
5. You need to specify in both Softwave and Traktor Pro 3 what type of button interaction you want to use:
  - **For a "Click" function (to toggle buttons on/off):**
    - In Softwave make sure the action is set to "Click" and the type is set to "Trigger" (lower left corner of the function window).
    - In Traktor's Controller Manager select "Toggle" under "Interaction Mode".
  - **For a "Hold" function (to activate while pressing the button):**
    - In Softwave make sure the action is set to "Momentary".
    - In Traktor's Controller Manager select "Hold" under "Interaction Mode".

6. Click "Learn" and press the button on Wave (the one you chose in Softwave) to make the link.
7. You should now see the MIDI CC change next to the Learn button. Press "Learn" again when finished to disable the learning mechanism.
8. Now you've mapped one of Wave's buttons to a function in Traktor Pro 3 successfully.

:::tip
In order to map functions from Softwave to Traktor Pro 3 you need to attach a MIDI CC number to the function.

You can assign any CC number, but make sure each function has an individual number.
Softwave uses this number to communicate with your DAW.

Additionally you can assign:
1. PB (Pitchbend) to Tilt, Pan, Roll and Vibrato.
2. Notes (C, C#, D, E, F etc.) when using the Tap function.
3. Notes and Key commands/Shortcuts (cmd+T, R, f12 etc.) when using the Click function.

![](/src/assets/images/article_4412314296721_image_0.gif)
:::
