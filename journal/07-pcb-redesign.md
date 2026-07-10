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
- [TF31-18S-0.5SH(800)](https://jlcpcb.com/partdetail/HRS_Hirose-TF31_18S_0_5SH_800/C3168422) (SELECTED)

Out of these 4 the most trusted companies are Molex (the first) and Hirose (the last). The last one is 1.75mm in thickness while the first one is 1.9mm in thickness. In addition the last one allows for an FFC design with a little lip so that it withstands more horizontal force than the first. I hope its vertical force performance is just as good, but it's worth checking before I commit. 

## Track width settings 

Now that I get to redesign the board I think I should pay more attention to things like track widths and whatnot. Before I just almost took things to be defaults, but honestly this time I might just use smaller ones. Like everything in say raspi pico has signal lines to be smaller than 1mm and I was kind of afraid to figure it out. Let's try something new now! 

Kicad has a [guide](https://docs.oshpark.com/design-tools/kicad/kicad-design-rules/) that talks about what kind of DRC is preferrable for this type of boards and how to figure out in one's particular case. I can use that. But I can't trust it. It needs to be specific to the RP2040.

The hardware design guide for the RP2040 does not say much about track widht, so we can check the Raspi Zero to see what's up. They have many differnet trace widths, but honestly for GPIO Pins the trace widths are roughly 0.2mm with 0.2 mm clearance at the DRC. I checked to see in JLC's manufacturing guidelines and it's well within limits. Actually, let's try 0.15 mm width and clearance because the pins in the RP2040 are so freaking dense, I am having issues hahahaa. Here are [JLC Manufacturing capabilities](https://jlcpcb.com/capabilities/Capabilities) 

For the QSPI pins though, it matters more. Impedance matching plays a crucial role there, but placing the flash memory close to the rp2040 kinda makes this less of a problem. [People recommend](https://pcbartists.com/design/embedded/rp2040-pcb-design/?srsltid=AfmBOopy-tV5PJuMK0xM9psxQ-cMWNzyJnGVsG-zoGCQsBFAAl-oED9d) a trace of around 0.15 mm with 0.2 mm clearance where none of the traces are more then 1 inch in length and the clock trace should be the longest. Another important consideration is to use a solid ground plane to connect the flash and microcontroller grounds.  

[This article](https://www.allpcb.com/blog/pcb-knowledge/the-ultimate-guide-to-pcb-trace-width-for-beginners.html) gives a cool introduction to figuring out how to select the correct trace dimensions. So we can use it for power. The maximum current we are ever expecting to draw would be around 40mA. In terms of temperature the blog suggests to account for 10 degrees above room temperature, so might as well do that. The thing is that the power consumption is so low, that whatever trace width I pick it won't matter. So might as well design it for 1A peak consumption just in case in the future I edit this to add a couple of LEDs. KiCad's calculator gives me a 0.3 mm trace width for these specifications, and 0.2 mm gaps. 

Now the hardest one to do is USB. We can use a calculator that exists in KiCad such that we achieve 90 Ω resistance. This is the **Transmision Line Calculator** I entered all the parameters of the board and I found out that it can't be set to 90 Ohms for a 2-layer board because the thickness is too small. A quick google search shows that we can't actually achieve USBC high speed at a 2-layer board anyway, so it is fine to go 20% over as we will still retain full speed. Doing this we get a 0.25 mm Width with 0.15 mm clearance at roughly 10 mm length for 115.5 Ω differential resistance. 

## Bending and angles

Another interesting thing is that apparently pcb cnc machines hate making sharp angles, even though in my understanding everything is a sharp angle in most PCBs I have seen. Let's explore what kind of angles we can put here. 

## New Buttons

I decided that the old buttons were too big and clunky and honestly there is no reason to make them accessible outside the keyboard now, so mught as well try for something smaller that can fit in a tinier board. Here is a new one from some known company [SKRPAME010](https://jlcpcb.com/partdetail/ALPSALPINE-SKRPAME010/C19724063).

