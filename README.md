<img src="https://github.com/daisuke-t-jp/LLAEasyAlertManager/blob/master/doc/header.png" width="400"></br>
------
![Platform](https://img.shields.io/badge/Platform-iOS%2010.0+-blue.svg)
[![Language Swift%205.0](https://img.shields.io/badge/Language-Swift%205.0-orange.svg)](https://developer.apple.com/swift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-green.svg)](https://github.com/Carthage/Carthage)
[![Cocoapods](https://img.shields.io/cocoapods/v/LLAEasyAlertManager.svg)](https://cocoapods.org/pods/LLAEasyAlertManager)
[![Build Status](https://travis-ci.org/daisuke-t-jp/LLAEasyAlertManager.svg?branch=master)](https://travis-ci.org/daisuke-t-jp/LLAEasyAlertManager)


# What is this?

**LLAEasyAlertManager** is class for easy use of UIAlertController.



# Install
### Carthage
`github "daisuke-t-jp/LLAEasyAlertManager"`

### CocoaPods
```
use_frameworks!

target 'target' do
pod 'LLAEasyAlertManager'
end
```


# Usage
``` swift
import LLAEasyAlertManager


/**
 * Present alert with
 * - Message
 * - OK button
 */
LLAEasyAlertManager.sharedInstance.present(self, message: "Message")

/**
 * Present alert with
 * - Message
 * - Title
 * - OK button
 */
LLAEasyAlertManager.sharedInstance.present(self, message: "MessageTitle", title: "title")

/**
 * Present alert with
 * - Message
 * - Title
 * - OK button
 * - Default action handler
 */
LLAEasyAlertManager.sharedInstance.present(self,
  message: "HandlerDefault",
  title: "title",
  handlerDefault: { (action: UIAlertAction!) in
    print("default") })

/**
 * Present alert with
 * - Message
 * - Title
 * - OK button
 * - Cancel button
 * - Cancel action handler
 */
LLAEasyAlertManager.sharedInstance.present(self,
  message: "HandlerCancel",
  title: "title",
  handlerDefault: nil,
  handlerCancel: { (action: UIAlertAction!) in
    print("cancel") })

/**
 * Present alert with
 * - Message
 * - Title
 * - OK button
 * - Cancel button
 * - Default action handler
 * - Cancel action handler
 */
LLAEasyAlertManager.sharedInstance.present(self,
  message: "HandlerBoth",
  title: "title",
  handlerDefault: { (action: UIAlertAction!) in
    print("default")},
  handlerCancel: { (action: UIAlertAction!) in
    print("cancel")}
                          
```


