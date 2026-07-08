# PCB Redesign

After realizing that I prefer gasket mounting one problem became clear: If the USB is mounted on top of the board, then it would move as the keyboard flexes when I type. That sounds horrible. People usually fix this by introducing daugher boards, that put the connectors in a different place than the main pcb and connect them via some sort of cable. Let's try and design something.

## Daugher Board

My original plan was to create a small usb daugher board, mount it on the case, and then use some kind of 4 pin connector to mount the usb signal to the main board. There are some standards even for these types of daughter boards, but honestly I quickly realized something. The original schematic is very compact. Honestly having a connector that will hit the USB port that will then have to pass under a couple of scanning signals in a 2-Board PCB might not be the wisest option to consider. So thne I thought, why not kill two birds with one stone by moving all the active parts in the "daughter board," including the microcontroller and so on and then connect the keyboard matrix with some sort of ffc cable like a laptop keyboard?

This way we can have a low profile board, with short USB connection and everything else, accompanied by a simple keyboard matrix that lies on the gaskets. Let's try to build that.

## FFC Connectors

While looking things up I found out [this guide](https://vistarelectronics.com/how-to-select-the-right-fpc-ffc-connector/) for how to pick the right FFC type connector for the job, and [this one](https://www.digikey.gr/en/blog/ffc-fpc-connector-and-cable-compatibility-basics) for how to pick the right cable. So here is the verdict:

1. **Pitch:** 0.5 mm. It's the modern standard I have no reason to use something crazy, plus JLC can do this NO PROBLEM. Why make it harder for them?
2. **Actuator Type:** ZIF (Zero input force). This is the one that actively clasps the cable in place. It's much better since I will probably clasp and unclasp it a bunch. Plus there are some really low profile ZIF connectors anyway so I am not that concerned. 
3. **Contact Direction:** Bottom. I mean it gives lower profile overall, idk it sounds so much more reasonable than top. This is also the most common choice for connecting daughterboards and whatnot.

Let's assemble some candidates
- [5051101892](https://jlcpcb.com/partdetail/MOLEX-5051101892/C3036269)
- [AFC01-S18FCA-00](https://jlcpcb.com/partdetail/JUSHUO-AFC01_S18FCA00/C262666)
- [XW05200-18](https://jlcpcb.com/partdetail/MINTRON-XW0520018/C376063)
- [TF31-18S-0.5SH(800)](https://jlcpcb.com/partdetail/HRS_Hirose-TF31_18S_0_5SH_800/C3168422)


## Track width settings 

Now that I get to redesign the board I think I should pay more attention to things like track widths and whatnot. Before I just almost took things to be defaults, but honestly this time I might just use smaller ones. Like everything in say raspi pico has signal lines to be smaller than 1mm and I was kind of afraid to figure it out. Let's try something new now! 

## Bending and angles

Another interesting thing is that apparently pcb cnc machines hate making sharp angles, even though in my understanding everything is a sharp angle in most PCBs I have seen. Let's explore what kind of angles we can put here. 
