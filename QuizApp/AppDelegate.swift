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
		
		let viewController = ResultsViewController(summary: "You got 1/2 correct", answers: [
			PresentableAnswer(question: "Question?? ", answer: "Yeah!", wrongAnswer: nil),
			PresentableAnswer(question: "Another Question", answer: "Hell yeah!", wrongAnswer: "Hello no!"),
		])
		
		let window = UIWindow(frame: UIScreen.main.bounds)
		window.rootViewController = viewController
		self.window = window
		window.makeKeyAndVisible()
		
		return true
	}


}

