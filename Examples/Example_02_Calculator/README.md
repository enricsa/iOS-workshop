# App 02: Super calculator

* [Description](#description)
* [TDD - Test Driven Development](#tdd---test-driven-development) 
* [Tips](#tips) 
  * [UINavigationController](#uinavigationcontroller)
  * [UIAlertController](#uialertcontroller)

## Description

On this example the user introduces two numbers and add or substract them depending of pressed button and shows the result on a label.
It also includes Unit Test for the model (calculator) and UITest.

<div style="align:center">
  <kbd><img src="https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/calculator1.png" alt="Calculator 01" width="360" ></kbd>
  <kbd><img src="https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/calculator2.png" alt="Calculator 02" width="360" ></kbd>
</div>

## TDD - Test Driven Development
We will implement this example using Test-Driven-Development (TDD) for the business logic (add and substract). 
Basically we will start implementing the test, then the logic and when the test pass we will be able to refactor all we want because the logic will be secured by tests.

 <kbd><img src="https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/tdd.gif" alt="TDD"></kbd>

## Tips

### UINavigationController

To add the top bar with the title the controller will be contained into a UINavigationController. 

We will work with different types of containers on the next example but for now you can use this option with the view controller selected on the storyboard: 

<kbd><img src="https://github.com/esanchezaltran/iOS-workshop/blob/master/Images/navigationembed.png" alt="Embed"></kbd>

### UIAlertController

In the code you can find a basic error handling that shows an alert to the user when the values are wrong. 

Code:
```swift
let alert = UIAlertController(title: "Error", message: "Invalid values", preferredStyle: .alert)
let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
alert.addAction(okAction)
present(alert, animated: true, completion: nil)
```
