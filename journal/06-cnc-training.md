# CNC Training

To buld this case I need to get trained on how to use a Tormach CNC machine! So here are some notes I needed for all that.

## Vocabulary

1. Stock: The block
2. Part: The part (lol)
3. Tool path: The instructions to cut the stock into a part.
4. G-code: The programming language for toolpaths
5. Conversational: A part of the machine's software that generates G-code.

Tool types of the Tormach
1. two flute endmills
2. four flute endmills
3. edge finder
4. spot drill
5. drill bits 

Tool holders are
1. collet holder
2. set screw holder
3. drill chuck

*(Milling should not be done with drill tools)*

## Cool facts.

The tormach can machine
1. Aluminum
2. Steel
3. Wax
aka not wood

Some simple tool paths are:
1. Face 
2. Pocket 
3. Engrave (for text and stuff)
4. Drill

They have a guide book that contains a bunch of information for how to use the machine. From generating paths with conversational to safety checks and whatnot.


## Safety & SOP 
How to turn on this cool machine. 
1. Wear **safety goggles** and **NOT** gloves. 
2. Close the doors when it's spinning 
3. Check the computer and monitor are on
4. Engage emergency stop. 
5. Turn on the main switch.
6. Release the emergency stop and push the green button.
7. Click the rest button on the computer. 


How to set up a part. 
1. Starting with **z-axis** reference all the axes. 
2. There is a controller that lets you choose an axis and move it manually. 
3. Tighten the stock into the vice using parallel sets. 

Loading a tool
1. Place it in the tool holder
2. Undo the latch at the top door of the machine
3. Engage the spinde lock
4. Push the tool holder up on the tormach
5. Tighten the spindle
6. Remove the pindle lock and close the door. 

*(Sometimes when removing a tool one could require to tap the wrench on the spindle lock on top of the machine to loose the tool. Yet make sure to hold the chuck.)*

Zeroing
1. Load the edge finder
2. Move it towards the stock until it rotates slightly off center. 

The z-axis is zeroed using a drill bit. 

Cutting
1. Make sure to use coolant
2. Use the sanity checks in the back of the tormach guide to check if the cnc is set up correctly. 
3. Load the tool path

Shutting Down
1. Use G30 to push the tool all the way up
2. Engage emergency stop
3. Turn off the main power switch
4. Remove the part
5. Remove the tool and put it back
6. Vaccum the inside of the machine
7. Turn off the air compressor, and release extra stored air from it 



## Some eazy G-code commands
The settings tag on the tormach computer has a full list of commands. 
- G0: Go to 
- G30: Go to max z height

