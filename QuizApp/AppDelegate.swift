//
//  AppDelegate.swift
//  QuizApp
//
//  Created by Thotsana Mabotsa on 2020/12/10.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		
		let window = UIWindow(frame: UIScreen.main.bounds)
		let viewController = QuestionViewController(question: "A question?", options: ["Option 1", "Option 2"]) {
			print($0)
		}
		
		_ = viewController.view
		
		viewController.tableView.allowsMultipleSelection = true
		window.rootViewController = viewController
		self.window = window
		window.makeKeyAndVisible()
		
		return true
	}


}

