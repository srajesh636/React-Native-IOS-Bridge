//
//  MainViewController.swift
//  NativeModulesCommunication
//

import UIKit

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showReactNativeModal(_ sender: Any) {
        present(ReactNativeModalViewController(), animated: true, completion: nil)
    }
}
