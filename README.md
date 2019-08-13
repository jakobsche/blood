# blood

application that demonstrates the usage of a TChart component for multiple functions given as table at runtime. 

It includes 
- the formatting of an axis for the type TDateTime, 
- a legend and formatting line series to distinguish different functions

In a future version it will be possible to use variable data from external sources (files, ...)

## Hints

This program is free Open Source software according to the limitations you can find in the file LICENSE. So you can use and modify it:

1. Download and install Lazarus from lazarus-ide.org! Depending on your operating system you could need further tools to make Lazarus work. Some Linux distributions have packages to install Lazarus easily. This might work, if this Lazarus version is not to old. Otherwise follow the instructions of lazarus-ide.org to get Lazarus work
2. Clone or download this repository!
3. Open the file blood.lpi as project in Lazarus!
4. Click the run button! It will be compiled and executed, or you get error messages. If there are missing packages, try to find them as my GitHub repository or enywhere else. After a successful compile, it runs immediately. Additionally you get the executable file with the name "blood" and the extension for executable applications of your operating system. This file runs from a location of your choice on your machine or similar sufficiently similar devices.

Developers: Explore the code, if available documentation does not help to get features for your own projects!

Artists: You can suggest graphical images, that can be used as icons and illustrations for the project or related packages

## Toolset

Now the app contains a mouse toolset for the chart. You can use these functions:
- If you move the mouse over the chart, then you see a hair cross through a data point while passing a measured value position
- You can see the point data, if the mouse is on a mesured point.
- You can zoom in by pressing the Ctrl button + the left mouse button + dragging the mouse to select a rectangular zoom area.

For programmers: This is done by adding the ChartToolset to Form1 and configuring it in the object inspector + adding event handlers to Form1.
