---
title: "Configuring MIDI"
description: ""
created_at: "2020-10-15T15:05:55Z"
updated_at: "2023-10-31T11:57:46Z"
zendesk: 360029138637
sidebar:
  order: 7
---

Wavefront is configured to route fixed MIDI messages to each output.

![](../../../assets/images/article_360014342377_image_0.jpg)

Wavefront is capable of receiving 14-bit MIDI CC values. The controller numbers are fixed at 16-21.

When sending 14-bit messages, the MSB is sent as usual and the LSB should follow in a message where the controller number offset by 32.

Standard 7-bit MIDI messages work just as well.

### Outputs

The first four outputs (16-19) are connected to a 16-bit DAC and have a range of +/- 5V.

The last two outputs (20 and 21) can only be toggled high/low. CC messages with a value of 64 and higher will set the output to 5V.

In addition to these fixed controller values, Wavefront also listens to note on/off messages, pitchbend and channel pressure.

### Gate

The Gate output is toggled high for any note on events, and low once all notes are released.

### MIDI Note

MIDI note numbers are translated to 1V/octave CV and routed to the Tilt output, and the note velocity is routed to Pan.

### Channel Pressure

Channel pressure messages are routed to the Roll output.

### Pitchbend

Pitchbend messages get routed to the Vibrato output.
