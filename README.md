#  LBConfettiView 

[![Build Status](https://travis-ci.com/lachlanbell/LBConfettiView.svg?branch=master)](https://travis-ci.com/lachlanbell/LBConfettiView)
[![Version](https://img.shields.io/cocoapods/v/LBConfettiView.svg?style=flat)](http://cocoapods.org/pods/LBConfettiView)
[![License](https://img.shields.io/cocoapods/l/LBConfettiView.svg?style=flat)](http://cocoapods.org/pods/LBConfettiView)
[![Platform](https://img.shields.io/cocoapods/p/LBConfettiView.svg?style=flat)](http://cocoapods.org/pods/LBConfettiView)
![Swift Version](https://img.shields.io/badge/Swift-4.2-orange.svg)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-blue.svg)

<div align="center">
    <img src="https://github.com/lachlanbell/LBConfettiView/blob/master/ConfettiDemo.gif" width="566" height="396" />
</div>

## Usage
*Use the example app to experiment with these different properties*

### Basic Usage
```swift
// Create confetti view
let confettiView = ConfettiView(frame: self.view.bounds)

// Add confetti view as subview
self.view.addSubview(confettiView)

// Start the confetti 🎉
confettiView.start()
```

### Animation
The confetti animation can be started and stopped by calling the   `start()` and  `stop()` methods.

#### Starting
```swift
confettiView.start()
```

#### Stopping
```swift
confettiView.stop()
```
To immediately clear all confetti on stopping, the `clear` argument can be given as `true`:
```swift
confettiView.stop(clear: true)
```

#### Animation Status
To check whether the confetti animation is active, get the  `confettiView.animating` property.

### Styles
LBConfettiView contains four built-in confetti styles, `.confetti`, `.diamond`, `.star` and  `.triangle`. To use these:

```swift
confettiView.style = .confetti
confettiView.style = .diamond
confettiView.style = .star
confettiView.style = .triangle
```

To use a custom image template for the confetti, use the `.customImage` style

```swift
confettiView.type = .customImage(UIImage(named: "customImage"))
```

### Colors
Set the colors of the confetti with the `colors` property. This property has a default value of multiple colors. 

```swift
confettiView.colors = [UIColor.red, UIColor.green, UIColor.blue]
```

### Scale
Two confetti sizes are built-in: `.small` and `.large`. Using `.auto`, the default, will use the large scale on iPads and the small scale on other iOS devices.
```swift
confettiView.scale = .auto
```

A manual scale can also be provided as a `CGFloat` using `.custom`
```swift
confettiView.scale = .custom(0.8)
```

### Intensity
The intensity refers to how many particles are generated and how quickly they fall. Set the intensity of the confetti with the `.intensity` property by passing in a value between 0 and 1. The default intensity is 0.5.
```swift
confettiView.intensity = 0.75
```

## Installation
**LBConfettiView** is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'LBConfettiView'
```

**LBConfettiView** can also be installed manually. Just download and drop the `Sources` folder in your project. Alternatively, add `LBConfettiView.xcodeproj` to your workspace and embed the framework binary.

## Credit
Inspired by [SAConfettiView](https://github.com/sudeepag/SAConfettiView) by [Sudeep Agarwal](https://github.com/sudeepag), which this was originally a modernised reimplementation of.

## Author
Lachlan Bell &lt;hi@lachy.io&gt;

## Contributing
Contributions are welcome, see the [CONTRIBUTING](https://github.com/lachlanbell/LBConfettiView/blob/master/CONTRIBUTING.md) for more details.
