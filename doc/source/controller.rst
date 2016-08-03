Controller
==========

The most important part of the project is the controller. For pragmatic reasons a simple to program controller was needed that is cheap and widely availabe as well. It soon appeared that an `Arduino UNO`_ is very suitable for the task. 

  .. image:: ../images/ArduinoUNO.jpg
     :scale: 50 %
  
The Arduino Uno is an 8-bit microcontroller board based on the ATmega328P. It has 14 digital input/output pins (of which 6 can be used as PWM outputs) and 6 analog inputs. It basically contains everything needed to support the microcontroller; simply connect it to a computer with a USB cable or power it with a AC-to-DC adapter or battery to get started. The Arduino is programmed via the Arduino IDE in C. 

Getting started in programming the Arduino is very straightforward and intuitive. Basically the Arduino project consists of two void functions called *setup* and *loop* conveniently.

  .. image:: ../images/ArduinoIDE.png

The nice thing about the Arduino is that is has a big community and a large number of libraries and hardware supported. You can litterally find anything if you put some time and effort into it.

Officially the Arduino UNO costs about 20EUR excl. VAT, this is a low price for what you get and at the same time you support the Arduino community. I must also note that, because of the open hardware, there are also quite some cheaper alternatives. Sites like `MiniInTheBox.com`_ and `dx.com`_ sell Arduino UNO clones for around 7EUR incl. VAT.
  
Additionally two press buttons were purchased as well as a 2x16 LCD. 2x16 stands for two lines with 16 characters. Although small, it is actually more than enough for this purpose. There is really a abundance of information to be found on the internet how to program this LCD and it is actually surprisingly simple to do so. The nice thing about Arduino is that the libraries are available out of the box. No need to search and install special libraries.
  
.. _Arduino UNO: https://www.arduino.cc/en/Main/ArduinoBoardUno
.. _MiniInTheBox.com: http://www.miniinthebox.com
.. _dx.com: http://dx.com