Electrical system
=================
The electrical system is also kept as simple as possible. First a proof of concept was made by using a breadboard to connect all the elements and test the software. A breadboard is very easy to use as it comes with a number of wires that can be used to connect electronic components to the Arduino.

  .. image:: ../images/breadboard.jpg

Once the schematic is determined and tested, it is time to create a printed circuit board (PCB). To do this, there are a number of possibilities and software available. I have used `Fritzing`_, but unfortunately this software was a bit unstable on my computer. Fritzing is very nice to use IDE (integrated development environment). It has a lot of built in functionality and you can actually rebuild your breadboard in it, while it will convert it to a schematic for you. Another nice feature of Fritzing is that you can order your PCB right from the software.

For this project I have used `KiCAD`_ instead. KiCAD is a lot more difficult to use than Fritzing, however it's also more powerfull and versatile.

KiCAD
-----
KiCad is an open-source software tool for the creation of electronic schematic diagrams and PCB artwork. The learning curve for KiCAD is a bit steep at first but once you get a hang of it, it actually works pretty effectively. The strange thing about KiCAD is that it is a suite built up around a number of stand alone tools. This means that you need to switch quite a lot between applications (unlike Fritzing) and that you need to manually create temporary files to go from one application to the other. This is somewhat annoying, but you get used to it.
The first step you need to take in KiCAD is to create a new project and start working on the schematics. You can take the notes you made when working on the breadboard or, like I did, take the breadboard apart again one wire at a time and document that in the schematics editor of KiCAD.




.. _Fritzing: http://fritzing.org
.. _KiCAD: http://kicad-pcb.org
