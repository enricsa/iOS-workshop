# Model-View-Controller (MVC)

iOS/MacOS applications normally use the design pattern MVC (Model - View - Controller). 
On a advanced projects we can also use MVP, SOLID, VIPER, or other design patters.

The MVC design pattern distributes like this: 

* **Model**: __What__ your application __is/do__ (but not how it is displayed). Contains all the business logic. 
* **View**: __What__ the user will __see__. Contains all the visual elements the user sees like buttons, textfields, etc.
* **Controller**: __How__ your Model __is presented__ to the user (UI logic). The link between Model and View.

**IMPORTANT**: The view NEVER talk with the model

![alt text][MVC1]

The communitation in MVC applied to iOS:

* **Controller -> Model**: The controller gets data from the model. Can be done instantiating a model class, singleton, factory or what you want. 
  Controller must call the model logic and make UI decisions. The model send data to the controller but doesn't get data from the controller directly, only the controller decides what send to the model to make the operation.
  The model can give the data in synchronous tasks or can notify one controller (or more of them) when finished using:
  * [Key-Value-Observing][KVO]: When a model variable changed the model notify the controllers (Broadcast)
  * [Notification Center][NotificationCenter]: Model launch a specific notification to all subscribers (Broadcast)
  * Closures: We can launch a void when the operation finishes (not Broadcast)

* **Controller -> View**: Controller manage the view states using outlets (IBOutlets) having references to the UI objects.
  
* **View -> Controller**: 
  * The view send user interaction events assigning a IBAction to a target (controller). 
  * If the view needs model or controller data to show something (table of items for example), the controller must implement delegates and data source.

![alt text][MVC2]

[MVC1]: https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/MVC1.png "MVC Initial"
[MVC2]: https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/MVC2.png "MVC Complete"
[KVO]: https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/KeyValueObserving/KeyValueObserving.html "KVO"
[NotificationCenter]: https://developer.apple.com/reference/foundation/nsnotificationcenter: "Notification Center"


