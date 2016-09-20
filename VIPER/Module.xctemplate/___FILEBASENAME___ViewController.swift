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

// MARK: - Boiler Plate Functionality. Uncomment, if this is your first/root module. Delete, if this is already implemented in another module
/*
protocol ViewPresenterProtocol {
	
	/**
	Designed to be called in the Presenter
	Designed for setting up the View with data from the Interactors/Entities
	Should call back on View, for example:
	
	`self.view setExampleString:self.exampleString`
	*/
	func viewLoaded()
	func viewAppearing()
	func viewAppeared()
	func viewDisappeared()
}

extension ViewPresenterProtocol {
	func viewLoaded() {}
	func viewAppearing() {}
	func viewAppeared() {}
	func viewDisappeared() {}
}
*/

// MARK: Protocols

protocol ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol: ViewPresenterProtocol {
	
}


// MARK: -

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController {
	
	// MARK: - Variables

	var presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol
	
	
	// MARK: - Load Functions
	
	init(presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenterProtocol) {
		self.presenter = presenter
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override func viewDidLoad() {
        super.viewDidLoad()
		presenter.viewLoaded()
    }
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		presenter.viewAppearing()
	}
	
	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
		presenter.viewAppeared()
	}
	
	override func viewDidDisappear(animated: Bool) {
		super.viewDidDisappear(animated)
		presenter.viewDisappeared()
	}
}


// MARK: ___FILEBASENAMEASIDENTIFIER___ Presenter to View Protocol

extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___PresenterViewProtocol {
	/*
	func viewTitle(title: String?) {
		print("title: \(title)")
		self.title = title
	}
	*/
}