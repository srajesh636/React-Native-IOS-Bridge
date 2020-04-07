//
//  ReactNativeModalViewController.swift
//  NativeModulesCommunication

import UIKit
import React

class ReactNativeModalViewController: UIViewController {
    override func viewDidLoad() {
        setupReactNative()
        registerToReactNativeEvents()
    }
    
    private func setupReactNative() {
        let jsCodeLocation: URL! =
 RCTBundleURLProvider.sharedSettings().jsBundleURL(
     forFallbackResource: "main", fallbackExtension: "jsbundle"
 )
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "ReactNativeModal",
            initialProperties: nil,
            launchOptions: nil
        )
        self.view = rootView
    }
    
    private func registerToReactNativeEvents() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(closeModal),
                                               name: NSNotification.Name(rawValue: ReactEventCloseModal),
                                               object: nil)
    }
    
    @objc private func closeModal() {
        DispatchQueue.main.async { [unowned self] in
            self.dismiss(animated: true, completion: nil)
        }
    }
}
