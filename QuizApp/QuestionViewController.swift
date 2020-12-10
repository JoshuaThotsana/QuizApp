//
//  QuestionViewController.swift
//  QuizApp
//
//  Created by Thotsana Mabotsa on 2020/12/11.
//

import UIKit

class QuestionViewController: UIViewController {

	@IBOutlet weak var headerLabel: UILabel!
	
	private var question: String = ""
	
	convenience init(question: String) {
		self.init()
		self.question = question
	}

}
