//
//  IntroViewController.swift
//  livingStone
//
//  Created by 김창현 on 2/1/19.
//  Copyright © 2019 Sandol. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialActivityIndicator


class IntroViewController: UIViewController {
    
    let activityIndicator = MDCActivityIndicator()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let indicator = self.activityIndicator
        
        indicator.sizeToFit()
        indicator.center.x = self.view.center.x
        indicator.center.y = self.view.center.y * 1.1
        view.addSubview(indicator)
        
        indicator.startAnimating()
        
        Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(self.moveOn),
            userInfo: nil,
            repeats: false
        )
    }
    
    @objc func moveOn() {
        self.performSegue(withIdentifier: "toMain", sender: self)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        
        self.activityIndicator.stopAnimating()
    }

}
