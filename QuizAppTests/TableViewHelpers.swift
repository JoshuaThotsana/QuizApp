//
//  TableViewHelpers.swift
//  QuizAppTests
//
//  Created by Thotsana Mabotsa on 2020/12/11.
//

import UIKit

extension UITableView {
	func cell(at row: Int) -> UITableViewCell? {
		dataSource?.tableView(self, cellForRowAt: IndexPath(row: row, section: 0))
	}
	
	func tittle(at row: Int) -> String? {
		cell(at: row)?.textLabel?.text
	}
	
	func select(row: Int) {
		let indexPath = IndexPath(row: row, section: 0)
		selectRow(at: indexPath, animated: false, scrollPosition: .none)
		delegate?.tableView?(self, didSelectRowAt: indexPath)
	}
	
	func deselect(row: Int) {
		let indexPath = IndexPath(row: row, section: 0)
		deselectRow(at: indexPath, animated: false)
		delegate?.tableView?(self, didDeselectRowAt: indexPath)
	}

}
