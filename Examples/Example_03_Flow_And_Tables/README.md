# App 03: Flow and tables

* [Description](#description)
* [Tips](#tips) 
  * [UINavigationController](#uinavigationcontroller)
  * [UserDefaults](#userdefaults)
  * [UITableViewController](#uitableviewcontroller)

## Description

On this exercise we will implement a login simulation with a list of items and a detail view. The flow would be like this:

1. **Login screen**: Similar to Hello world example but when the user clicks on the button the application will store the name and present the next screen. 
Remember: All the logic not depending of the UI should be abstracted to another classes (not in our view controller) to be able to reuse and test.
2. **Items list**: UITableViewController with a list of items. When the user clicks on a list item the application will go to the detail screen.
3. **Detail screen**: Depending of the item selected the app will show a diferent label and the user name.  

**BONUS**: Depending if we are logged in or not the app should start with a different view controller and we can logout using a button on the top bar. 

HAVE FUN AND BE CREATIVE!

## Tips

### UINavigationController

To make the navigation between different screens we will use an UINavigationController. 
This controller has inside a stack of viewcontrollers and can manage the navigation between them by code or using segues.<br>
More info: <br>
[UINavigationController][NavigationControllerDoc]<br>
[Segues][SeguesDoc]

### UITableViewController

Is a UIViewController subclass that implements a protocol with some methods to present a list on a view.<br>
More info: [UITableViewController][tableDoc]

### UserDefaults

To store basic information on the device we will use UserDefaults. 
UserDefaults is a dictionary (key, value) stored on the application sandbox only that can be readed only for its own application or application groups.   

Code:
```swift
//Write
let myName = "William"
UserDefaults.standard.setValue(myName, forKey: "storedName")
      
//Read
let storedName = UserDefaults.standard.string(forKey: "storedName")
```

[NavigationControllerDoc]: https://developer.apple.com/reference/uikit/uinavigationcontroller
[SeguesDoc]: https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html
[tableDoc]: https://www.ralfebert.de/tutorials/ios-swift-uitableviewcontroller/
