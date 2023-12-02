# SLogger
[![Swift Version](https://img.shields.io/badge/Swift-5.5-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS%20%7C%20macOS%20%7C%20watchOS%20%7C%20tvOS-lightgrey.svg)](https://developer.apple.com)

SLogger is a lightweight and customizable Swift logging utility designed to simplify the process of incorporating logging into your Swift projects. 
It aims to provide a straightforward interface for developers to log messages at different levels, aiding in debugging, monitoring, and understanding the flow of their applications.

## Features

<ul>
  <li><strong>Simplicity:</strong> Easily integrate logging into your Swift projects with minimal setup.</li>
  <li><strong>Flexibility:</strong> Customize log messages, include contextual information, and categorize logs with tags.</li>
  <li><strong>Performance:</strong> Designed for efficiency with conditional compilation to log only in DEBUG builds.</li>
  <li><strong>Readability:</strong> Log messages include contextual details like file name, function, and line number for better traceability.</li>
</ul>

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

3. Output
```swift
[ℹ️ INFO ℹ️] info ➜ ContentView.swift:23 body
[🍀 DEBUG 🍀] debug ➜ ContentView.swift:24 body
[⚠️ WARN ⚠️] info ➜ ContentView.swift:25 body
[🚨 ERROR 🚨] error ➜ ContentView.swift:26 body
[👀 VERBOSE 👀] verbose ➜ ContentView.swift:27 body
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
