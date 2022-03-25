//
//  WindowsManaging.swift
//  someapp
//
//  Created by Yohai(private) on 25/03/2022.
//

import UIKit

protocol WindowsManaging {
    var window: UIWindow? { get }
}


extension WindowsManaging {
    
    func setRoot(viewController: UIViewController, animated: Bool = false) {
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        if let window = window, animated {
            UIView.transition(with: window,
                              duration: 0.3,
                              options: .transitionCrossDissolve,
                              animations: {},
                              completion: nil)
        }
    }
}
