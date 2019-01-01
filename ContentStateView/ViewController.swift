//
//  ViewController.swift
//  ContentStateView
//
//  Created by Nabin Khatiwada on 12/31/18.
//  Copyright © 2018 AndroidRagger. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    @IBOutlet weak var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.showLoading(viewController: self, backgroundView: self.backgroundView, message: "Please wait...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { // change 2 to desired number of seconds
            // Your code with delay
            super.showData(backgroundView: self.backgroundView)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                super.showError(backgroundView: self.backgroundView, message: "Oops! something went wrong!")
            }

        }
    }
}



