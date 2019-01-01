//
//  BaseViewController.swift
//  ContentStateView
//
//  Created by Nabin Khatiwada on 1/1/19.
//  Copyright © 2019 AndroidRagger. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController{
    var contentState : ContentStateView?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showLoading(viewController:ViewController, backgroundView: UIView, message: String?){
        backgroundView.alpha = 0
        backgroundView.isHidden = true
        self.contentState = ContentStateView(viewController: viewController)
        self.contentState?.showLoading(message: message)
    }
    
    func showData(backgroundView: UIView){
        UIView.transition(with: view, duration: 0.5, options: .transitionCrossDissolve, animations: {
            backgroundView.alpha = 1.0;
            backgroundView.isHidden = false
        })
        self.contentState?.hideLoading()
    }
    
    func showError(backgroundView: UIView, message: String?){
      
        UIView.transition(with: view, duration: 0.5, options: .transitionCrossDissolve, animations: {
            backgroundView.alpha = 0
            backgroundView.isHidden = true
            self.contentState?.showError(message: message)
            
        })
        
        
        
    }
}
