Software
========

The software is kept as simple as possible. In principle there are four modes in which the software can be in. The next diagram displays how it works.

  .. image:: ../images/software_flow_diagram.png
     :scale: 50 %

Step 0
------
When in step 0, the system is in standby. This means that the LCD screen is turned of to indicate standby (save some power and lifetime of the LCD). Meanwhile the actual pressure of the system is read and stored as *zeropressure*. This *zeropressure* variable is actually the actual outside pressure. When inflating, the target pressure is set relative to the outside pressure. So therefore the *zeropressure* is determined to compensate for it. At the same time the state of the press buttons are determined. If one of the buttons is pressed then the system will activate the LCD screen and go to step 1.

Step 1
------
Once the software is in step 1, the user can switch pre-selects. There are a number of them hardcoded in the software. Any button push will increase the preselect index, until the maximum is reached and the index is reset to 0. A push of both buttons at the same time will trigger the software to go to step 2. There is also a timer started in this step that will put the system to standby after 1 minute being idle.

Step 2
------
The object to be inflated is expected to be already connected to the device in step 1. The software will now check if the objects needs to be deflated, if so it will open the correct valve. Once done a similar check for inflation is performed. This deflate / inflate cycle is repeated once just to be sure. In between the inflate and deflate steps there is a one second delay to stabilize the pressure measurement. Also in this step there is an idle timer of one minute started.

Step 3
------
Once done, the software progresses to step 3, where the user can decide to either re-run using the same parameters, but possibly a different object, or to select a new target pressure and goto step 1. If the system remains idle for one minute it will return to step 0.