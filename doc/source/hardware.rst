Hardware
========
Based upon the design two air valves are needed. One to control the compressed air and one to deflate when needed. 

  .. image:: ../images/solenoid_valve.jpg
     :scale: 25 %
  
The valves are normally closed and need 12V to be opened. The Arduino UNO is not capable of controlling 12V @6.5W directly, to be able to acomplish this one needs a relay. A relay is an electrically controlled mechanic switch. This means that with a 5V pin from the Arduino you can switch a larger voltage. The relay was purchased via `MiniInTheBox.com`_.

  .. image:: ../images/relay.jpg

The first relay purchased did not have optocouplers. These components transfer the electrical signals coming from the Arduino to another isolated circuit by using light. Optocouplers prevent high voltages from affecting the system receiving the signal. In the first setup, repeated switching of the relay would mess up the LCD screen caused by a voltage drop. The result was an unreadable LCD that could not be reset unless a complete reboot of the system was performed.

The next item to be bought was a pressure transducer (PT). A PT is a device that converts pressures (in this case 0 to 100PSI) to an electrical signal (0.5 to 4.5V for this item). 

  .. image:: ../images/pressure_transducer.jpg
     :scale: 50 %

  .. image:: ../images/pressure_transducer_2.jpg
     :scale: 50 %

The electrical signal can be read by the Arduino UNO directly as it is between 0 to 5V. When reading the analog input the Arduino will return a value ranging from 0 to 1023 that represents the voltage of 0 to 5 V. This all needs to be taken into consideration and a regression line was formed to go directly from analog input to the actual pressure. See the graph below.

  .. image:: ../images/PT_conversion.png

On the x-axis one finds the analog value read in by the Arduino AD (analog to digital) converter and on the y-axis the actual pressure is shown.

.. _MiniInTheBox.com: http://www.miniinthebox.com