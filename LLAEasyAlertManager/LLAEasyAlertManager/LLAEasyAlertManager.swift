//
//  LLAEasyAlertManager.swift
//  LLAEasyAlertManager
//
//  Created by Daisuke T on 2019/01/28.
//  Copyright © 2019 LLAEasyAlertManager. All rights reserved.
//

import Foundation

public class LLAEasyAlertManager {

	// MARK: Singleton
	public static let sharedInstance = LLAEasyAlertManager()

	// MARK: - Property
	static let actionTitleDefaultPreset = "OK"
	static let actionTitleCancelPreset = "Cancel"
	public var actionTitleMap = [UIAlertAction.Style.default: actionTitleDefaultPreset,
								 UIAlertAction.Style.cancel: actionTitleCancelPreset]

	// MARK: - Present
	public func present(_ viewController: UIViewController,
						message: String,
						title: String = "",
						handlerDefault: ((UIAlertAction) -> Void)? = nil,
						handlerCancel: ((UIAlertAction) -> Void)? = nil) {

		// Create alert.
		let alert = UIAlertController(title: title,
									  message: message,
									  preferredStyle: .alert)

		// Create action.
		let action = UIAlertAction(title: actionTitleMap[.default],
								   style: .default,
								   handler: handlerDefault)
		alert.addAction(action)

		if handlerCancel != nil {
			let action = UIAlertAction(title: actionTitleMap[.cancel],
									   style: .cancel,
									   handler: handlerCancel)
			alert.addAction(action)
		}

		// Present.
		viewController.present(alert, animated: true, completion: nil)
	}

}
