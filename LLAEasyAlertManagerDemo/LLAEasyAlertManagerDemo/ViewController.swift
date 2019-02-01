//
//  ViewController.swift
//  LLAEasyAlertManagerDemo
//
//  Created by Daisuke T on 2019/01/28.
//  Copyright © 2019 LLAEasyAlertManagerDemo. All rights reserved.
//

import UIKit

import LLAEasyAlertManager



class ViewController: UIViewController,
	UITextFieldDelegate
{
	@IBOutlet weak var textfieldDefault: UITextField?
	@IBOutlet weak var textfieldCancel: UITextField?

	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		textfieldDefault?.delegate = self
		textfieldCancel?.delegate = self
		textfieldDefault?.text = LLAEasyAlertManager.sharedInstance.actionTitleMap[.default]
		textfieldCancel?.text = LLAEasyAlertManager.sharedInstance.actionTitleMap[.cancel]
	}

	@IBAction func buttonActionMessage(_ sender: UIButton) {
		// message only.
		LLAEasyAlertManager.sharedInstance.actionTitleMap[.default] = textfieldDefault?.text
		LLAEasyAlertManager.sharedInstance.actionTitleMap[.cancel] = textfieldCancel?.text
		LLAEasyAlertManager.sharedInstance.present(self, message: "[Message]Message")
	}

	@IBAction func buttonActionMessageTitle(_ sender: UIButton) {
		// message, title.
		LLAEasyAlertManager.sharedInstance.actionTitleMap[.default] = textfieldDefault?.text
		LLAEasyAlertManager.sharedInstance.actionTitleMap[.cancel] = textfieldCancel?.text
		LLAEasyAlertManager.sharedInstance.present(self, message: "[Message]MessageTitle", title: "[Title]MessageTitle")
	}

	@IBAction func buttonActionHandlerDefault(_ sender: UIButton) {
		// message, title, handler(default)
		LLAEasyAlertManager.sharedInstance.actionTitleMap[.default] = textfieldDefault?.text
		LLAEasyAlertManager.sharedInstance.actionTitleMap[.cancel] = textfieldCancel?.text
		LLAEasyAlertManager.sharedInstance.present(self, message: "[Message]HandlerDefault", title: "[Title]HandlerDefault",
												   handlerDefault: { (action: UIAlertAction!) in
													print("default")
		})
	}

	@IBAction func buttonActionHandlerCancel(_ sender: UIButton) {
		// message, title, handler(cancel)
		LLAEasyAlertManager.sharedInstance.actionTitleMap[.default] = textfieldDefault?.text
		LLAEasyAlertManager.sharedInstance.actionTitleMap[.cancel] = textfieldCancel?.text
		LLAEasyAlertManager.sharedInstance.present(self, message: "[Message]HandlerCancel", title: "[Title]HandlerCancel",
												   handlerDefault: nil,
												   handlerCancel: { (action: UIAlertAction!) in
													print("cancel")}
		)
	}

	@IBAction func buttonActionHandlerBoth(_ sender: UIButton) {
		// message, title, handler(default), handler(cancel)
		LLAEasyAlertManager.sharedInstance.actionTitleMap[.default] = textfieldDefault?.text
		LLAEasyAlertManager.sharedInstance.actionTitleMap[.cancel] = textfieldCancel?.text
		LLAEasyAlertManager.sharedInstance.present(self, message: "[Message]HandlerBoth", title: "[Title]HandlerBoth",
												   handlerDefault: { (action: UIAlertAction!) in
													print("default")},
												   handlerCancel: { (action: UIAlertAction!) in
													print("cancel")}
		)
	}

	// MARK: - TextField
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		
		return true
	}

}

