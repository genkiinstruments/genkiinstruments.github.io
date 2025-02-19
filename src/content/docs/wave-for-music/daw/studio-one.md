---
title: "Studio One"
description: ""
created_at: "2020-10-26T09:56:36Z"
updated_at: "2020-10-29T14:09:04Z"
zendesk: 360029881277
---

1. To make sure Wave works with Presonus' Studio One, navigate to File → Preferences → External Devices. Click "Add...". Select "New Control Surface" from the list on the left. Rename "Device Name" to "Wave" or similar. Under "Receive From" choose "G1W1 Bluetooth". Click "OK".
2. In Softwave make sure every function you want to map over to Studio One has a dedicated CC number or Note ([→ see Functions](/wave-for-music/functions/tilt-pan-roll/)).
3. In Studio One open the Mix console by pressing "Mix" in the lower right corner. Then press "External" on the other side of the screen, in the lower left corner.
4. On the list that opens press the arrow beside the name of your Control Surface ("Wave") and select "Edit...". The External Devices window opens up.
5. Press "MIDI Learn". All of Softwave's functions that are active at that given time will be recognised in Studio One. Depending on which of Wave's functions you are mapping, move, tap or click on Wave to make the link. Disable "MIDI Learn".
6. In Softwave solo the function you want to map.
7. Next Right-click a parameter in Studio One and select "Assign parameter name to Control# on Wave".
8. Now De-Solo the function in Softwave. The function should be mapped to Studio One.
9. When you link Tap and Click to Studio One the MIDI message for these functions will be registered as a Knob. With "MIDI Learn" enabled right click each Knob you want to change and select Button. Then right click again and select "Assign Command...". From the list select the command you want to assign.
10. Repeat for other functions.
