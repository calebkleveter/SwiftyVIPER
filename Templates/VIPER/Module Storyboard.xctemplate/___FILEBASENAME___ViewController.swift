//
//  ___FILENAME___
//  Project: ___PROJECTNAME___
//
//  Module: ___VARIABLE_viperModuleName___
//
//  By ___FULLUSERNAME___ ___DATE___
//  ___ORGANIZATIONNAME___ ___YEAR___
//

// MARK: Imports

import UIKit

import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `___FILEBASENAMEASIDENTIFIER___Interactor` and referenced by `___FILEBASENAMEASIDENTIFIER___Presenter`
protocol ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol: class {
	/** Sets the title for the view
	- parameters:
		- title The title to set
	*/
	func set(title: String?)
}

// MARK: -

/// The View Controller for the ___FILEBASENAMEASIDENTIFIER___ module
class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController {

	// MARK: - Constants

	// MARK: Variables

	var presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol?

	// MARK: - Load Functions

	override func viewDidLoad() {
    	super.viewDidLoad()
		presenter?.viewLoaded()

		view.backgroundColor = .white
    }
}

// MARK: - Storyboard Protocol

extension ___FILEBASENAMEASIDENTIFIER___ViewController: StoryboardIdentifiable {}

// MARK: - ___FILEBASENAMEASIDENTIFIER___ Presenter to View Protocol

extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol {

	func set(title: String?) {
		self.title = title
	}
}
