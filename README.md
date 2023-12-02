# SLogger
[![Swift Version](https://img.shields.io/badge/Swift-5.5-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS%20%7C%20macOS%20%7C%20watchOS%20%7C%20tvOS-lightgrey.svg)](https://developer.apple.com)

SLogger is a lightweight and customizable Swift logging utility designed to simplify the process of incorporating logging into your Swift projects. 
It aims to provide a straightforward interface for developers to log messages at different levels, aiding in debugging, monitoring, and understanding the flow of their applications.

Purpose
Simplicity: Easily integrate logging into your Swift projects with minimal setup.
Flexibility: Customize log messages, include contextual information, and categorize logs with tags.
Performance: Designed for efficiency with conditional compilation to log only in DEBUG builds.
Readability: Log messages include contextual details like file name, function, and line number for better traceability.

## Usage

1. Import the package
```swift
import SLogger  
```

2. Quick and easy usage
```swift
  Log.info("info", tag: "LOGIN")
  Log.debug("debug")
  Log.warning("info")
  Log.error("error")
  Log.verbose("verbose")
```


## Requirements

- Swift 5.0+

## Installation
### Swift Package Manager
`SLogger` is available through [Swift Package Manager](https://swift.org/package-manager/). 

To add package go to `File -> Swift Packages -> Add Package Dependancy `

```ruby
https://github.com/Ninise/SLogger.git
```
