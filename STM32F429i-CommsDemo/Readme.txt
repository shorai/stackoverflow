STM32F429I Discovery Comms Canonical Example
============================================


Almost alwayts, when we build systems for the 429i Discovery, we want to communicate to other devices.

Today (2016) we normally use serial comms to talk between devices
- They are adequately fast for most purposes
- They require as little as two wires (ground and signal)
- They effectively 'expand' the number of connections we can make
- They make our device and data on it more easy to interact with

The 429i itself has a wide variety of comms possibilities including

    - USB Virtual Comms port, HID
	- UART5
	- USART1
	- SPI
	- I2C
	- The serial debugger
	
We are going to start with the first 4 devices for the simple reason that we are building from scratch and initially need to see if our device is operational and debug our code.

These devices are relatively easy to get working.

In order to get a little more interest in our device, we will put up a Free RTOS with two tasks.
	
	Please take a look at http://stackoverflow.com/questions/34938261 which prompted this exercise.
	
	A few days later I found this http://stackoverflow.com/questions/35043482
	
	You are not alone
	
	=======================================================================================
	The rest of this readme documents the type of trouble we all had with STMCube and associated tools prior to 2016.
	
	After deleting and re-installing my entire STM toolchain, everything magically worked, first time out the box.
	
	You may get some idea of the frustrations people have reported in the past
	=======================================================================================

STM32 Cube
----------
To get the maximum value from the toolchain that STM provide us, we are going to use the STM Cue toolchain.

Download it from STM and select the .ioc file in the download for this project.

You now get a great view of all the pins available to you on the Disco. Additionally there are pins that are preassigned to the hardware onboard the device as it ships from the factory. 

You will see the devices I have just spoken about have been preconfigured.

Go to the configuration tab, and see that I have configured interrupthandling (NVIC) and DMA on most of the peripherals.

DMA is your friend, and should be used in most cases, certainly on output. DMA provides an additional processor that can take care of the transfer of large blocks of data for us, and allow us to use the CPU for other tasks such as video and graphics processing.

My embedded (though we didn't call it that back in 79) lecturer used to say "The only good microprocessor is one that is sleeping". He encouraged us back then to use the interrupt and DMA capabilities of whatever devices we were using. 

It was thus a difficult challenge to move to the PC environment wher eMicrosoft did not use the IRQ capabilities of the parallel port until well into the 1990s. DMA, if it is present, came a lot later. A pity, but good for our 429 since we will be able to do things with it that are very difficult or impossible on a PC or Raspberry.

Browse all the tabs and see how the device has been set up, and what sort of options are available. Don't worry too much about the valuse that have been selected, we'll come back to that later as we go through each peripheral we use.

Notice also the code generator that can create code for a variety of tool chains. My preferred tool chan generators were not wirking properly on the dya I generated this example. No doubt ST will correct this.


NB The version of STM HAL libs I have (26 Jan 2016) Is not generating for MDK, or SW4STM(AC6), The EWARM does however appear to work. This reflects atrocious quality control at ST.

Eclipse SW4STM
--------------

This, I can see, is going to become my favorite IDE alongside Embitz. Finally, in 2016, ST have relented and realised that compilers have become freeware, and that significant sales volumes will come from the IOT. The IOT is in the domain of individuals and small groups solving local problems.

Very few, in or outside of the first world contries are able to jsutify the cost of high value toolchains. As people contribute to opensource, the gap between opensource and proprietary toolchains has shrunk.

Eclipse and Embitz do not impose any limitations on your code other than those of the hardware you are developing for. 

One of the major contributors to Arduino has been the great toolchains they gave away.

So now - open up eclipse. 

I work in a separate workspace per board. It amkes it easier for me to manage. When I pick up a board, I can go to a workspace that has all my projects for that environment. Everything works and has been tested on the board I have in front of me.

If I need something else, I will copy that code in and tune it for the local environment.

ST  are doing the same, instead of one, global HAL, there are now separate HAL downloads for each family. There are also minor differences between the HALs. e..g I picked up that the ADC on the L0 is different from the F4. They are very similar, but not identical. Expect that you may need to tweak your code across families. 

This is the XML that got generated

<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<targetDefinitions xmlns="http://openstm32.org/stm32TargetDefinitions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://openstm32.org/stm32TargetDefinitions stm32TargetDefinitions.xsd">
  <board id=STM32F429I-DISCO>
    <name>STM32F429I-DISCO</name>
    <mcuId>STM32F429ZITx</mcuId>  <!-- mcu-->
    <dbgIF>SWD</dbgIF>
    <dbgDEV>ST-LinkV2-1</dbgDEV>
  </board>
</targetDefinitions>



Create a blinky in Eclipse
--------------------------
This is just about create a new project, point to C/C++, give a name, take the dafaults and <finish>.

On my project, the ARM libraries were not linked properly - either a global preference or an environmental variable needs setting. I went to preferences -> C/C++ general/Paths and Symbols -> Preprocessor Include Paths

Add an entry and point it to the includes folder for your GNU compiler e.g. 
E:\GNUToolsARMEmbedded\4.9_2015q3\lib\gcc\arm-none-eabi\4.9.3\include

The red and amber warnings on #include <stdio.h> etc will disappear.

Compile

Go to Debug ->configurations, click on Ac6 then cluck 'add' (its an icon at the top left). You should now be able to apply and run. However, SW4STM is broken on Eclipse MARS, and The debug session cannot be created. 

Once again poor release control @ST - it works fine on F0 devices. wonder if that is because F0 seldom run into memory limit constraints. hmmmmm methinks me smells a rat.

All this is not getting me where I want to go. 

Back to cube, generate for EWARM

Getting our project up on EWARM
===============================

Interesting, the EWARM generator works. Rats!

<link>The GEneratorHaveAProblem</link>

Interestingly, <ctrl><alt><PrintScrn> only picked up the system modal dialog. Damn it microsoft, why can't I cut and paste this text?????????? Don't you think I want to Google it, paste it in forums and all sorts of other things to help EVERYONE in the global community?  It's talken 25 years since I started using Windows 0 and it still hasn'tsunk in. Grrrrrr

So now, after 2 hours of doing stuff I do every day, I cannot get 

     ST-Cube to work with KEIL MDK, EWARM or SW4STM
	 
To give me anything useful to continue with.

Let's try Embitz.

Embitz 
======

Embitz, like em:blocks and FORTH are some of the best kept secrets of the computer world.

Embitz' homepage tells much of what these guys are trying to do
    create an IDE dedicated to embedded
    provide true cross platform capabilities
    write in C++ for coding and run time efficiency
    quick to start
    avoid all the overhead of bringing in JAVA IDE requirements

They then got to actually use the devices they wrote compilers for.
They have created STM429i Disco projects based on the peripheral projects from STM
They the went further and made each project USE THE LCD.

Wow STM - why did you not go there?- or Keil, AC6, IAR, ATollic?

Oh - of course - nothing would debug in 32K!

Why am I not surprised? This is 2016 after all, I only wrote my first program in 1971. 

Unfortunately, STM sprung HAL onto us last year and all the examples work only for the older libs. They are working frantically to move to HAL. 


SO now I am left with a choice (Hobson's) 
   - Andy Brown has some great STM libraries in C++, with a lot of templating 
         - but He hasn't released a 429iDiscovery LCD driver
                I looket at porting but ran out of time
		 - he also hasn't discovered the great F3 devices
		        Again, I ran out of time
		 - his C++ seems to wrap the older STM libs
		 - works with F1 and F4
		 - eclipse based
		 
   - Jorge Aparacio 
         - has some great templates for the F4, not nearly as advanced
	     - not maintained
         - but work directly with the registers

   - Embitz
         - use old libs
         - need an upgrade to HAL
         - or perhaps better still - lets go for broke and try C++templates -> HAL		 






 
	
	
	
