# blood

application that demonstrates the usage of a TChart component for multiple functions given as table at runtime. 

It includes 
- the formatting of an axis for the type TDateTime, 
- a legend and formatting line series to distinguish different functions
- a menu to control, which series are displayed
- a toolset to get interesting details into the view

To see, what is Rapid Application Development (RAD) on a time scale, check the timeline related to what is done between the commits! Because RAD also includes big effects with few code lines, also compare the feature growth in the compiled revisions to each other! Don't forget, that it is done for a lot of desktop computer types at once with free Open Source development tools only.

In a future version, it will be possible to use variable data from external sources (files, ...). The coding will also be accelerated with Lazarus packages by the community or me (and you?).

## Hints

This program is free Open Source software according to the limitations you can find in the file LICENSE.md. So you can use and modify it:

1. Download and install Lazarus from lazarus-ide.org! Depending on your operating system you could need further tools to make Lazarus work. Some Linux distributions have packages to install Lazarus easily. This might work, if this Lazarus version is not to old. Otherwise follow the instructions of lazarus-ide.org to get Lazarus work
2. Clone or download this repository!
3. Open the file blood.lpi as project in Lazarus!
4. Click the run button! It will be compiled and executed, or you get error messages. If there are missing packages, try to find them as my GitHub repository or anywhere else. After a successful compile, it runs immediately. Additionally, you get the executable file with the name "blood" and the extension for executable applications of your operating system. This file runs from a location of your choice on your machine or sufficiently similar devices.

Developers: Explore the code, if available documentation does not help to get features for your own projects!

Artists: You can suggest graphical images, that can be used as icons and illustrations for the project or related packages

## Compilation  with "make"

This requires, that you have installed Lazarus and Free Pascal + some further required tools on your system. If make stops with errors, check out the messages to find out, what is missing, and fix it. The command to compile the app is

make DEPLOY TargetCPU=\<parameter\> TargetOS=\<parameter\> ExeExt=\<parameter\>
  
The make command might fail, because makefile is not complete for all environments, yet. At least, it should work with 64-bit-Linux on PC, if all required tools (newest Lazarus-IDE with a compatible Free Pascal version and fullfilled requirements of both) are installed and found. If you have problems to compile yourself, send me your error messages, and use my zip files from the directory deploy. The file can be unpacked anywhere on your system, where you can run executable files from.

### Example's for valid Parameters

TargetCPU: x86_64, i386, arm
TargetOS: win32, win64, linux
ExeExt: .exe

Example command: make DEPLOY TargetCPU=x86_64 TargetOS=linux ExeExt=

## Toolset

Now the app contains a mouse toolset for the chart. You can use these functions:
- If you move the mouse over the chart, then you see a hair cross through a data point while passing a measured value position.
- You can see the point data, if the mouse is on a mesured point.
- You can zoom in by pressing the Ctrl button + the left mouse button + dragging the mouse to select a rectangular zoom area.
- You can zoom by pressing the Ctrl button + rotating the mouse wheel.
- You can zoom back to the full view by pressing the Ctrl button + the left mouse button
- Dragging (left mouse button down) moves the chart content within the diagram view. Axes and grid follow.

For programmers: This is done by adding the ChartToolset to Form1 and configuring it in the object inspector + adding event handlers to Form1.
