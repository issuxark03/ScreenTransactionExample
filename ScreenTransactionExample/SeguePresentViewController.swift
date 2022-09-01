//
//  SeguePresentViewController.swift
//  ScreenTransactionExample
//
//  Created by Yongwoo Yoo on 2022/02/18.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

	@IBAction func tabBackButton(_ sender: UIButton) {
		self.presentingViewController?.dismiss(animated: true, completion: nil)
	}
}
