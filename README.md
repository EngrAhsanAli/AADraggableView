# Table of Contents

- [AADraggableView](#section-id-4)
  - [Description](#section-id-10)
  - [Demonstration](#section-id-16)
  - [Requirements](#section-id-26)
- [Installation](#section-id-32)
  - [CocoaPods](#section-id-37)
  - [Carthage](#section-id-63)
  - [Manual Installation](#section-id-82)
- [Getting Started](#section-id-87)
  - [Create object of draggable view](#section-id-90)
  - [Set view object as draggable view](#section-id-104)
  - [Set properties and usage](#section-id-112)
  - [Properties with description](#section-id-150)
- [Contributions & License](#section-id-156)


<div id='section-id-4'/>

#AADraggableView

[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://developer.apple.com/swift/) [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![CocoaPods](https://img.shields.io/cocoapods/v/AADraggableView.svg)](http://cocoadocs.org/docsets/AADraggableView) [![License MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat)](https://github.com/Carthage/Carthage) [![Build Status](https://travis-ci.org/EngrAhsanAli/AADraggableView.svg?branch=master)](https://travis-ci.org/EngrAhsanAli/AADraggableView) 
![License MIT](https://img.shields.io/github/license/mashape/apistatus.svg) [![CocoaPods](https://img.shields.io/cocoapods/p/AADraggableView.svg)]()


<div id='section-id-10'/>

##Description

AADraggableView is a light-weight and easy-to-use draggable views in screen bounds with options designed to drag any `UIView`. It allows to drag the `UIView` in any view controller.

<div id='section-id-16'/>

##Demonstration

You can define repositioning after dragging by following values:


--  **sticky**

> View will stick with the edges with padding.

![](https://github.com/EngrAhsanAli/AADraggableView/blob/master/Screenshots/Sticky.gif)
--   **free**

> View will free to move in screen


![](https://github.com/EngrAhsanAli/AADraggableView/blob/master/Screenshots/Free.gif)
--  **edgesOnly**

> View will stick with nearby edges only

![](https://github.com/EngrAhsanAli/AADraggableView/blob/master/Screenshots/EdgesOnly.gif)
--  **topOnly**
> View will stick with top edge


![](https://github.com/EngrAhsanAli/AADraggableView/blob/master/Screenshots/TopOnly.gif)
--  **bottomOnly**
> View will stick with bottom edge

![](https://github.com/EngrAhsanAli/AADraggableView/blob/master/Screenshots/BottomOnly.gif)
--  **leftOnly**
> View will stick with left edge

![](https://github.com/EngrAhsanAli/AADraggableView/blob/master/Screenshots/LeftOnly.gif)
--  **rightOnly**
> View will stick with right edge

![](https://github.com/EngrAhsanAli/AADraggableView/blob/master/Screenshots/RightOnly.gif)





To run the example project, clone the repo, and run `pod install` from the Example directory first.


<div id='section-id-26'/>

##Requirements

- iOS 8.0+
- Xcode 8.0+
- Swift 3+

<div id='section-id-32'/>

# Installation

`AADraggableView` can be installed using CocoaPods, Carthage, or manually.


<div id='section-id-37'/>

##CocoaPods

`AADraggableView` is available through [CocoaPods](http://cocoapods.org). To install CocoaPods, run:

`$ gem install cocoapods`

Then create a Podfile with the following contents:

```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target '<Your Target Name>' do
pod 'AADraggableView'
end

```

Finally, run the following command to install it:
```
$ pod install
```



<div id='section-id-63'/>

##Carthage

To install Carthage, run (using Homebrew):
```
$ brew update
$ brew install carthage
```
Then add the following line to your Cartfile:

```
github "EngrAhsanAli/AADraggableView" 
```

Then import the library in all files where you use it:
```ruby
import AADraggableView
```


<div id='section-id-82'/>

##Manual Installation

If you prefer not to use either of the above mentioned dependency managers, you can integrate `AADraggableView` into your project manually by adding the files contained in the Classes folder to your project.


<div id='section-id-87'/>

#Getting Started
----------

<div id='section-id-90'/>

##Create object of draggable view

Drag `UIView` object from the *Object Library* into your `UIViewController` in storyboard.

![](https://github.com/EngrAhsanAli/AADraggableView/blob/master/Screenshots/Step1.png)

<div id='section-id-104'/>

##Set view object as draggable view

Set the view's class to `AADraggableView` in the *Identity Inspector*.
Make sure the module property is also set to  `AADraggableView`.

![](https://github.com/EngrAhsanAli/AADraggableView/blob/master/Screenshots/Step2.png)

<div id='section-id-112'/>

##Set properties and usage

You can set following properties in `viewDidLoad` method in your view controller.

**Usage**:
```
// IBOutlet for AADraggableView
@IBOutlet weak var view: AADraggableView

// Set options
view.delegate = self // AADraggableViewDelegate
view.respectedView = // reference view
view.reposition = // Reposition option
view.repositionIfNeeded() // Auto correct reposition

// Add delegate methods and observe changes!
func draggingDidBegan(_ sender: UIView) {
// Dragging did began of sender
}

func draggingDidEnd(_ sender: UIView) {
// Dragging did end of sender
}
```

<div id='section-id-150'/>

##Properties with description

You can use following properties: 

|  Properties	  |  Types	       | Description		    				    |
|-----------------|----------------|--------------------------------------------|
| `padding`       | `CGFloat`      | Padding from edges when reposition	        |
| `duration`      | `TimeInterval` | Animaiton duration for  reposition 	    |			   
| `respectedView` | `UIView?`      | Respected UIView for reference view bounds |
| `reposition`    | `Reposition`   | Reposition enum with options	    		|
| `isEnabled`     | `Bool`         | User dragging enable or disable		    |

<div id='section-id-156'/>

#Contributions & License

`AADraggableView` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.

Pull requests are welcome! The best contributions will consist of substitutions or configurations for classes/methods known to block the main thread during a typical app lifecycle.

I would love to know if you are using `AADraggableView` in your app, send an email to [Engr. Ahsan Ali](mailto:hafiz.m.ahsan.ali@gmail.com)

