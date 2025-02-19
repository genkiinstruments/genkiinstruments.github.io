---
title: "Tilt, Pan and Roll"
description: ""
created_at: "2020-09-25T10:17:07Z"
updated_at: "2022-01-24T11:48:58Z"
zendesk: 360027335297
sidebar:
  order: 3
---

![](/images/article_360013644897_image_0.png)

Tilt, Pan and Roll allow you to control parameters in a new way. Tilt is the orientation of Wave vertically, Pan horizontally and Roll the rolling of Wave to its side. These movements can easily replace sliders and rotary knobs, allowing you to control all three axes of Wave at the same time.The current state of a movement is indicated by the brown circle on each slider.

<details>
<summary>Movement Range</summary>

You can control the range of each movement by moving the white ticks at each end of the slider. Moving the ticks closer together makes each movement more sensitive while moving them further apart makes the movement less so. A full range is 180°.

![](/images/article_360013644897_image_1.gif)

</details>
<details>
<summary>Movement's starting point</summary>

The default starting point for each movement is in the center of the slider. You can change it by moving the small brown tick, as long as the preset is set to Relative. This is the value the movement jumps to when you Reset the movements (long press on Middle button).

![](/images/article_360013644897_image_2.gif)

</details>
<details>
<summary>Movement direction</summary>

If you press the Direction Arrow the parameter will move in the opposite direction of your movement.

![](/images/article_360013644897_image_3.gif)

</details>
<details>
<summary>MIDI map movement: Pitch Bend and CC</summary>

To map a movement to your DAW you need to tie a MIDI message to each function. Press the MIDI icon to select Pitch Bend, CC or Note.

When mapping, Solo the function you want to map in order for Softwave to only send the signal for that particular function to your DAW. When a parameter you want to map has been selected in your DAW, move Wave in order for the MIDI message to register.

If you select Pitch Bend the function will map to a pitch bend parameter in your DAW.

![](/images/article_360013644897_image_4.gif)

</details>
<details>
<summary>Movement curve: Linear, Quadratic and Cubic</summary>

For an advanced control of each movement you can change the Movement Curve. Select from Linear, Quadratic or Cubic for varied control.

![](/images/article_360013644897_image_5.gif)

Moving the points on the horizontal axis affects the input range - moving them closer together equals a smaller range, which equals a more sensitive movement. In a similar fashion, the points on the vertical axis affects the output range of the parameter.

**Linear**: The end points can be adjusted. The parameter has a linear relationship to the movement.

![](/images/article_360013644897_image_6.gif)

**Quadratic**: You can drag the center of the curve around, allowing varying amounts of exponential or logarithmic mapping.

![](/images/article_360013644897_image_7.gif)

**Cubic**: You can create a s-shape of the curve allowing you to create a variety in the sensitivity of the movement.

![](/images/article_360013644897_image_8.gif)

</details>
