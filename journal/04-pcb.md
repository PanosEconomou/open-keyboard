# PCB

Now that we have a schematic time to convert it to a PCB at least in the computer. Thankfully kicad has a bunch of the footprints here, so there is no reason to worry too much. Anyway this pcb will be only a test of the connections as the overall shape will be determined by the case that we will design later in cad.  

## Switches

An important consideration are the footprints. There are open source libraries that can be used to provide MX hotswap footprints but A LOT of them are outdated. [Here](https://github.com/ebastler/marbastlib) is a relatively recent one, i.e. open source but 2-3 years ago.

Another one recommended is [Kiswitch](https://github.com/kiswitch/kiswitch), but it's updated 5 years ago, and I am not really sure. Let's go with the first one.

One decision we need to make is that there seem to be two types of hotswap sockets. One is called [Kailh](https://jlcpcb.com/partdetail/Kailh-CPG151101S111/C5184526) and the other is called [Gateron](https://www.gateron.com/products/gateron-hot-swap-pcb-socket?VariantsId=10170&srsltid=AfmBOoq75fFklwptPVN-7YJxoOHdFLyLkHdQvc5Ir6BjIF6kV_oOds0wL24). Both seem good for what they do but after a couple of quick searches it seems that Kailh is so incredibly widely used that pcb manufacturers actually stock it directly, so we will go with that.

Another important thing to consider is how to orient the switches. Here is the [datasheet](https://cherry.saas.contentserv.com/admin/rest/document/56?ContextIDs=30118&Language=36) of the switch I find most appealing. It is a terrible datasheet. Anyway, [this discussion](https://geekhack.org/index.php?topic=72713.0) basically lands on the fact that the LED orientation won't matter. I would like it to be top facing because even though I am not wiring them, it creates more space for the USB-C connector on the top.


## Diodes

I just realized I didn't set up anything at all! Let's figure it out. The overwhelming majority of people on [reddit](https://www.reddit.com/r/MechanicalKeyboards/comments/6oyxqt/which_diodes_can_i_use_help/) swear by [1N4148](https://www.vishay.com/docs/86455/1n4148ws.pdf) so why meddle with perfection. That said we might have to change the package based on the outline lead time and availability, but we'll see.

## USB-C 

For USB-C we can go with a nice terminal that isn't too crazy. Turns out [this](https://jlcpcb.com/partdetail/Korean_HropartsElec-TYPE_C_31_M12/C165948) is a commonly used one. 

It would be nice to place the microcontroller further away from the USB-C port, but for that we need to know what the best practices are for designing long USB-C trails. The [hardware design guideline](https://www.allpcb.com/blog/pcb-assembly/usb-c-connectors.html) can be helpful in that.

## Capacitors & Resistors

One main thing here is footprint. I would like the smallest possible footprint in order to place them close to the microcotroller and other components. 

For the resistor power rating we don't need much, so something around 60-100 mW should be waaaay more than enough.

1. 1k [CRCW04021K00FKED](https://jlcpcb.com/partdetail/VishayIntertech-CRCW04021K00FKED/C71623)
2. 5.1k [CRCW04025K10JNED](https://jlcpcb.com/partdetail/VishayIntertech-CRCW04025K10JNED/C482289)
3. 10k [CRCW040210K0FKEDC](https://jlcpcb.com/partdetail/VishayIntertech-CRCW040210K0FKEDC/C844714)
4. 27 [CRCW040227R0FKED](https://jlcpcb.com/partdetail/VishayIntertech-CRCW040227R0FKED/C482122)

I also found budget options for JLC's maufacturing

1. 1k [0402WGF1001TCE](https://jlcpcb.com/partdetail/12256-0402WGF1001TCE/C11702)
2. 5.1k [0402WGF5101TCE](https://jlcpcb.com/partdetail/26648-0402WGF5101TCE/C25905)
3. 10k [0402WGF1002TCE](https://jlcpcb.com/partdetail/26487-0402WGF1002TCE/C25744)
3. 33 (it needs to be between 27 and 44) [0402WGF330JTCE](https://jlcpcb.com/partdetail/25848-0402WGF330JTCE/C25105)

For the capacitors I want to also pick 0402 packaging here are the ones I found

1. 100n [0402B104J160CT](https://jlcpcb.com/partdetail/Walsin_TechCorp-0402B104J160CT/C387940)
2. 15p [GRM1555C1H150FA01D](https://jlcpcb.com/partdetail/172911-GRM1555C1H150FA01D/C161530)
3. 1u [GRM155Z71A105KE01D](https://jlcpcb.com/partdetail/548880-GRM155Z71A105KE01D/C528974)

the budget options are

1. 100n [CL05B104KO5NNNC](https://jlcpcb.com/partdetail/1877-CL05B104KO5NNNC/C1525)
2. 15p [0402CG150J500NT](https://jlcpcb.com/partdetail/1900-0402CG150J500NT/C1548)
3. 1u [CL05A105KA5NQNC](https://jlcpcb.com/partdetail/53938-CL05A105KA5NQNC/C52923)
4. 10u [CL10A106MA8NRNC](https://jlcpcb.com/partdetail/97651-CL10A106MA8NRNC/C96446)

## PCB Pushbuttons 

We need some cool buttons to reset and program! I honestly want something that feels cool and premium. Unironically this [Ebay Seller](https://www.ebay.com/itm/335354104894) is showing them off. Though these may be too big.


## Dimensions and such

Another place where I got inspiration from was the [latest planck pcb](https://imgur.com/a/planck-pcb-rev-6-8gn3UQs) mostly to know how close I can really place the components to the margins of the board before having issues.


## Daughter Board

I have been thinking a lot about using a daughter board so that I create a gasket mount keyboard. This effectively means that the ESD protection circuit is going to be on a separate board that will be connected through some kind of connector to the main one. There is a [standard](https://unified-daughterboard.github.io/#/?id=unified-daughterboard) for designing these. One thing we need to figure out is a connector. 

For the connector we can pick [this one](https://www.tti.com/content/ttiinc/en/apps/part-detail.html?partsNumber=78171-0004&mfgShortname=MOL&utm=PNC2024&utm_term=78171-0004&gad_source=1&gad_campaignid=20878198023&gbraid=0AAAAADvyBAaEv3iyJDeA7ds4Y9j64nk2-&gclid=Cj0KCQjw0JnRBhDJARIsALobnXbR0HXZ9DC4Zgl9cE6z_M0I0OIV1WpRK8HaF-ypCOaf_nP40Ch_FPUaAkOzEALw_wcB) which is low profile and admitted by the standard we were talking about. 

In fact I think I will just fork the universal repo and see.  



