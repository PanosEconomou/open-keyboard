# Picking a PCB

Having decided on the Planck layout there are a couple of things to consider a bout PCBs. 

- Solder or Hot swap. Turns out one doesn't have to solder switches in place if they don't want to by getting special pcbs with recepticles in them. Thing is because I haven't heard what different switches sound like and I would like to have mine be quiet, I might need to iterate on the swtitches so having to solder everything over and over again seems like a bummer. 
- Custom or kit. I would love to design one from scratch but this seems that it would take years to do hehehe. 
- Connectivity. I do want usb-C everything and given that custom keyboarding is dead as a hobby worldwide since before usb-c-ing the world it could be hard to find a nice USB. 
- Microcontroller. TURNS OUT YOU CAN DO THIS WITH A PRO MICRO?! That's awesome! I can write everything in an arduino IDE, or use qmk which apparently works.

[Here](https://www.reddit.com/r/olkb/comments/rh9r3n/planck_pcb_options/) is a thread of people talking about options for a planck pcb like 4 years ago. 
Also, [this](https://customkbd.com/collections/complete-kits/products/contra-40-keyboard-kit) seems to still be available as a kit, which is quite encouraging. I can use whatever microcontroller I want, but I would have to solder all the switches there. Here is another [similar option](https://kprepublic.com/collections/daisy-40/products/jj40-v1-5-40-custom-keyboard-pcb-similar-with-planck).

There is [this article](https://www.reddit.com/r/MechanicalKeyboards/comments/5a399o/guide_how_to_make_your_pcb_hotswappable/) on reddit 10 years ago that teaches you how to turn a pcb into hotswap.

Honestly the more I think about it, the easier it might be to design my own pcb and then send it to JLC or something to cut. Since I don't have to worry too much about the microconstroller, it might actually be just fine, plus apparently the switches can just be wired together in some matrix without any pullups or complicated stuff to figure out. I just have to be careful about how diodes are wired.
Here is a [guide](https://github.com/ruiqimao/keyboard-pcb-guide) which is 10 years old but it doesn't matter! 
Plus if I get the arduino itself, I won't even have to work out clocks and decoupling and all that stuff that I never really wanted to figure out.

You know what? Let's try it out!

## First Attempt

OK! Let's try this. We are going to use ki-cad which is open source, and apparently 10 years ago a bunch of people made the footprints needed for all the components for ki-cad. So this is great. 

There is a nice component library that I can use that is not that outdated right [here](https://github.com/ai03-2725/MX_V2)
