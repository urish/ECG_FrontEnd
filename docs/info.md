<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements an ecg front end (front end for measure of electrocardiogram) using a folded cascode based architecture

## How to test

To test the ecg front-end, connect the input signal from the elctrode (ecg singal) to the INp and INm analog pins (ua[5] and ua[4] respectively). Ensure ref (ua[1]) and Vref (ua[2]) are properly biased at 0.9V or at the output of a offset compensation circuit. Observe the output signal at the OUT pin (ua[3]) connecting  OUTDRL (ua[0]) a the right leg of the body using another electrode. 
## External hardware

Oscilloscope
