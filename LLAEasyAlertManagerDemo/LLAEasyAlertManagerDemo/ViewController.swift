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
	}

	@IBAction func buttonActionMessage(_ sender: UIButton) {
		// message only.
		LLAEasyAlertManager.sharedInstance.present(self, message: "Message")
	}

	@IBAction func buttonActionMessageTitle(_ sender: UIButton) {
		// message, title.
		LLAEasyAlertManager.sharedInstance.present(self, message: "MessageTitle", title: "title")
	}

	@IBAction func buttonActionHandlerDefault(_ sender: UIButton) {
		// message, title, handler(default)
		LLAEasyAlertManager.sharedInstance.present(self, message: "HandlerDefault", title: "title",
												   handlerDefault: { (action: UIAlertAction!) in
													print("default")
		})
	}

	@IBAction func buttonActionHandlerCancel(_ sender: UIButton) {
		// message, title, handler(cancel)
		LLAEasyAlertManager.sharedInstance.present(self, message: "HandlerCancel", title: "title",
												   handlerDefault: nil,
												   handlerCancel: { (action: UIAlertAction!) in
													print("cancel")}
		)
	}

	@IBAction func buttonActionHandlerBoth(_ sender: UIButton) {
		// message, title, handler(default), handler(cancel)
		LLAEasyAlertManager.sharedInstance.present(self, message: "HandlerBoth", title: "title",
												   handlerDefault: { (action: UIAlertAction!) in
													print("default")},
												   handlerCancel: { (action: UIAlertAction!) in
													print("cancel")}
		)
	}

	
	// MARK: - TextField
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		guard let text = textField.text else {
			return false
		}
		guard text.count > 0 else {
			return false
		}

		if textField == textfieldDefault {
			LLAEasyAlertManager.sharedInstance.actionTitleMap[.default] = text
		}
		else {
			LLAEasyAlertManager.sharedInstance.actionTitleMap[.cancel] = text
		}

		textField.resignFirstResponder()

		return true
	}

}

