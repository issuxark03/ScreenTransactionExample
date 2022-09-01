//
//  ViewController.swift
//  ScreenTransactionExample
//
//  Created by Yongwoo Yoo on 2022/02/18.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

	@IBOutlet weak var nameLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		print("viewWillAppear")
	}
	
	

	@IBAction func tabCodePresentButton(_ sender: UIButton) {
		//CodePresentViewController
		guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresentViewController else { return }
		viewController.modalPresentationStyle = .fullScreen
		viewController.name = "Gunter"
		viewController.delegate = self
		self.present(viewController, animated: true, completion: nil)
		
	}
	@IBAction func tabCodePushButton(_ sender: UIButton) {
		guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else { return }
//		let viewController2:CodePushViewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as! CodePushViewController
		viewController.name = "Gunter"
		self.navigationController?.pushViewController(viewController, animated: true)
	
	}
	
	//segueway를 실행하기 직전에 시스템에 의해서 자동호출됨
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let viewController = segue.destination as? SeguePushViewController {
			viewController.name = "Gunter"
		}
	}
	
	func sendData(name: String) {
		self.nameLabel.text = name
		self.nameLabel.sizeToFit()
	}
}

