
# Welcome to the Xcode

* [Installation](#installation) 
* [Create a new Application](#create-a-new-application) 
* [Xcode interface](#xcode-interface)
* [Project Structure](#project-structure)

## Installation

Xcode installation is so simple as launch [App Store][AppStore] and get it. 
At first launch it will install all the main dependencies and api. 

## Create a new Application

Xcode presents the next screen by default. 

![alt text][Welcome]

In this screen we can see the recent projects we were working, open another or start a new one:
* **Get started with a playground**: Give you the ability to write or test code without buiding an app. More info: [Playground][Playground]
* **Create a new project**: Start a new project with different options
* **Checkout an existing project**: Checkout from an existing repository

When we choose to create a new project, Xcode asks to what type of project. We can make projects to iOS, MacOS, AppleTV, etc. For now we will choose **iOS application** as a **Single View Application** because which let us to make an empty application from scratch.

![alt text][New Project]

On the next screen we will configure the basic information about the app.
These options can be changed later but we not recommend it. 

![alt text][Project config]

* **Product name**: The application name 
* **Team**: Choose your developer team (if you configured on Apple Developer Program)
* **Organization**: It will appear on the code into the copyright text
* **Organization identifier**: Is a UNIQUE identifier for you as an organization/developer (reverse dns notation hightly recommended)
* **Language**: Objective C or Swift
* **Devices**: Universal/only iPhone/only iPad
* **More**: You can activate coredata for persistence, unit/ui testing and git initialization 

When click next you must select the folder to saving the project (/"User"/Developer recommended) and you will be ready to start developing!

## Xcode interface

Xcode is structured basically in four areas. 

* [Main Area](#main-area) 
* [Navigator](#navigator) 
* [Utilities](#utilities) 
* [Debugger](#debugger)

This areas except the main can be show/hide with the top right buttons ![alt text][ShowHide Buttons]

### Main area

Depending of the file selected on the navigator, the main area will change to show the code, the interface or the project options. This area will be our main development area.
For example if you select the project (first file on the navigator) you will see the configuration that we entered and other options like orientations, sdk, etc

![alt text][Main Area Screen]

### Navigator

On the left area you have diferent view modes for your app.

![alt text][Navigator Screen]

More important/used are:
* **Project Navigator**: You can see the folder and files structure. On the bottom part you can search fiels by name.
* **Find navigator**: Here you can search into de project or into the workspace a specific text.
* **Issue navigator**: You can see the current build warnings/errors and jump to their related file when clicking on it. 
* **Test navigator**: If you are using Unit/UI test you can see all the tests and their state.
* **BreakPoint Navigator**: All the applications breakpoints. You can select or remove them.

On a new project 

### Utilities

On the right you have the Inspector Area divided on two. 
* **Attibutes inspector**: See/change the different properties of the selected file on the navigator.

![alt text][UtilitiesTop]

* **Object inspector**: You can add objects directly using drag and drop (files, ui objects, snippets or media files)

![alt text][UtilitiesBottom]

### Debugger

On the debug area you can see the local and global variables values on the left side and the console on the right.
This area activates by default when the app pauses on a breakpoint and the top left area contains the basic buttons to play (continue to next breakpoint), step into, step out, etc. 

## Project Structure

iOS/MacOS applications normally use the design pattern MVC (Model - View - Controller). On a advanced projects we can also use SOLID, VIPER, or other design patters.
In a newly created project we can distribute like this:

* Model: Will be all the clases or structures and the logic that not depends of the UI. 
* View: The user interface. Contains all the visual elements the user sees like buttons, textfields, etc. Can be represented in storyboards, xib's or directly by code. 
* Controller: Is the glue between the model and the view. It receive the actions from the UI, tells model to do something and update the interface if needed.  

You can read more info: [MVC][MVC] 

[AppStore]: http://appstore.com/mac/xcode
[Welcome]: https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/XCode1.png "Welcome Screen"
[New Project]: https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/XCode2.png "New project"
[Project config]: https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/XCode3.png "New project"
[Playground]: https://github.com/esanchezaltran/iOS-workshop/blob/master/Docs/Swift/ "Playground"
[Navigator Screen]: https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/navigator.png "Navigator Screen"
[UtilitiesTop]: https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/properties_top.png "Utilities Top"
[UtilitiesBottom]: https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/properties_files.png "Utilities Bottom"
[Main Area Screen]: https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/main_view.png "Main Area Screen"
[ShowHide Buttons]: https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/lefttop_buttons.png "Show/Hide Buttons"
[MVC]: https://github.com/esanchezaltran/iOS-workshop/blob/master/Docs/MVC/ "MVC"

