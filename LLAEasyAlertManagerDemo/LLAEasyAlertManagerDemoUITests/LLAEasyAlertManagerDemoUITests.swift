//
//  LLAEasyAlertManagerDemoUITests.swift
//  LLAEasyAlertManagerDemoUITests
//
//  Created by Daisuke T on 2019/01/28.
//  Copyright © 2019 LLAEasyAlertManagerDemo. All rights reserved.
//

import XCTest

@testable import LLAEasyAlertManager



class LLAEasyAlertManagerDemoUITests: XCTestCase {
  
  override func setUp() {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    XCUIApplication().launch()
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testMessage() {
    let app = XCUIApplication()
    
    let button = app.buttons["Message"]
    XCTAssertTrue(button.exists)
    button.tap()
    
    let alert = app.alerts.element
    XCTAssertTrue(alert.staticTexts["[Message]Message"].exists)
    XCTAssertEqual(alert.label, "")
    
    let alertButtonDefault = alert.buttons[LLAEasyAlertManager.actionTitleDefaultPreset]
    XCTAssertTrue(alertButtonDefault.exists)
    alertButtonDefault.tap()
  }
  
  func testMessageTitle() {
    let app = XCUIApplication()
    
    let button = app.buttons["MessageTitle"]
    XCTAssertTrue(button.exists)
    button.tap()
    
    let alert = app.alerts.element
    XCTAssertTrue(alert.staticTexts["[Message]MessageTitle"].exists)
    XCTAssertEqual(alert.label, "[Title]MessageTitle")
    
    let alertButtonDefault = alert.buttons[LLAEasyAlertManager.actionTitleDefaultPreset]
    XCTAssertTrue(alertButtonDefault.exists)
    alertButtonDefault.tap()
  }
  
  func testHandlerDefault() {
    let app = XCUIApplication()
    
    let button = app.buttons["HandlerDefault"]
    XCTAssertTrue(button.exists)
    button.tap()
    
    let alert = app.alerts.element
    XCTAssertTrue(alert.staticTexts["[Message]HandlerDefault"].exists)
    XCTAssertEqual(alert.label, "[Title]HandlerDefault")
    
    let alertButtonDefault = alert.buttons[LLAEasyAlertManager.actionTitleDefaultPreset]
    XCTAssertTrue(alertButtonDefault.exists)
    alertButtonDefault.tap()
  }
  
  func testHandlerCancel() {
    let app = XCUIApplication()
    
    let button = app.buttons["HandlerCancel"]
    XCTAssertTrue(button.exists)
    
    
    _ = { () -> () in
      button.tap()
      
      let alert = app.alerts.element
      XCTAssertTrue(alert.staticTexts["[Message]HandlerCancel"].exists)
      XCTAssertEqual(alert.label, "[Title]HandlerCancel")
      
      let alertButtonDefault = alert.buttons[LLAEasyAlertManager.actionTitleDefaultPreset]
      XCTAssertTrue(alertButtonDefault.exists)
      alertButtonDefault.tap()
    }()
    
    
    _ = { () -> () in
      button.tap()
      
      let alert = app.alerts.element
      XCTAssertTrue(alert.staticTexts["[Message]HandlerCancel"].exists)
      XCTAssertEqual(alert.label, "[Title]HandlerCancel")
      
      let alertButtonCancel = alert.buttons[LLAEasyAlertManager.actionTitleCancelPreset]
      XCTAssertTrue(alertButtonCancel.exists)
      alertButtonCancel.tap()
    }()
    
  }
  
  func testHandlerBoth() {
    let app = XCUIApplication()
    
    let button = app.buttons["HandlerBoth"]
    XCTAssertTrue(button.exists)
    
    
    _ = { () -> () in
      button.tap()
      
      let alert = app.alerts.element
      XCTAssertTrue(alert.staticTexts["[Message]HandlerBoth"].exists)
      XCTAssertEqual(alert.label, "[Title]HandlerBoth")
      
      let alertButtonDefault = alert.buttons[LLAEasyAlertManager.actionTitleDefaultPreset]
      XCTAssertTrue(alertButtonDefault.exists)
      alertButtonDefault.tap()
    }()
    
    
    _ = { () -> () in
      button.tap()
      
      let alert = app.alerts.element
      XCTAssertTrue(alert.staticTexts["[Message]HandlerBoth"].exists)
      XCTAssertEqual(alert.label, "[Title]HandlerBoth")
      
      let alertButtonCancel = alert.buttons[LLAEasyAlertManager.actionTitleCancelPreset]
      XCTAssertTrue(alertButtonCancel.exists)
      alertButtonCancel.tap()
    }()
    
  }
  
  
  func testActionTitleMap() {
    let app = XCUIApplication()
    
    let button = app.buttons["HandlerBoth"]
    XCTAssertTrue(button.exists)
    
    let titleDefaultAppend = "2"
    let titleCancelAppend = "2"
    let textfieldDefault = app.textFields["IDTextFieldDefault"]
    let textfieldCancel = app.textFields["IDTextFieldCancel"]
    
    textfieldDefault.tap()
    textfieldDefault.typeText(titleDefaultAppend)
    textfieldDefault.typeText("\n")
    
    textfieldCancel.tap()
    textfieldCancel.typeText(titleCancelAppend)
    textfieldCancel.typeText("\n")
    
    
    _ = { () -> () in
      button.tap()
      
      let alert = app.alerts.element
      XCTAssertTrue(alert.staticTexts["[Message]HandlerBoth"].exists)
      XCTAssertEqual(alert.label, "[Title]HandlerBoth")
      
      let alertButtonDefault = alert.buttons[LLAEasyAlertManager.actionTitleDefaultPreset + titleDefaultAppend]
      XCTAssertTrue(alertButtonDefault.exists)
      alertButtonDefault.tap()
    }()
    
    
    _ = { () -> () in
      button.tap()
      
      let alert = app.alerts.element
      XCTAssertTrue(alert.staticTexts["[Message]HandlerBoth"].exists)
      XCTAssertEqual(alert.label, "[Title]HandlerBoth")
      
      let alertButtonCancel = alert.buttons[LLAEasyAlertManager.actionTitleCancelPreset + titleCancelAppend]
      XCTAssertTrue(alertButtonCancel.exists)
      alertButtonCancel.tap()
    }()
    
  }
}
