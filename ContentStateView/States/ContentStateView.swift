//
//  LoadingView.swift
//  ContentStateView
//
//  Created by Nabin Khatiwada on 1/1/19.
//  Copyright © 2019 AndroidRagger. All rights reserved.
//

import UIKit

class ContentStateView{
    private var viewController: UIViewController
    let customUIView = UIView()
    let indicator  = UIActivityIndicatorView()
    let loadingText = UILabel()
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func showLoading(message: String?){
        let view = self.viewController.view
        view?.addSubview(customUIView)
        customUIView.backgroundColor = UIColor.green
        customUIView.translatesAutoresizingMaskIntoConstraints = false
        customUIView.leftAnchor.constraint(equalTo: view!.leftAnchor).isActive = true
        customUIView.rightAnchor.constraint(equalTo: view!.rightAnchor).isActive = true
        customUIView.topAnchor.constraint(equalTo: view!.safeAreaLayoutGuide.topAnchor, constant:10).isActive = true
        customUIView.bottomAnchor.constraint(equalTo: view!.safeAreaLayoutGuide.bottomAnchor, constant:0).isActive = true
        
        view!.addSubview(indicator)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.color = UIColor.red
        indicator.centerXAnchor.constraint(equalTo:customUIView.centerXAnchor).isActive = true
        indicator.centerYAnchor.constraint(equalTo:customUIView.centerYAnchor).isActive = true
        indicator.startAnimating()
        
        view!.addSubview(loadingText)
        loadingText.translatesAutoresizingMaskIntoConstraints = false
        loadingText.text = message
        loadingText.textAlignment = .center
        loadingText.leftAnchor.constraint(equalTo: view!.leftAnchor, constant: 10).isActive = true
        loadingText.rightAnchor.constraint(equalTo: view!.rightAnchor, constant: 10).isActive = true
        loadingText.topAnchor.constraint(equalTo: indicator.bottomAnchor, constant:5).isActive = true
        
    }
    
    func hideLoading(){
            self.customUIView.alpha = 0
            self.customUIView.isHidden = true
            self.loadingText.isHidden = true
            indicator.stopAnimating()
       
    }
    
    func showError(message:String?){
        customUIView.alpha = 1
        customUIView.isHidden = false
        indicator.stopAnimating()
        loadingText.isHidden = false
        loadingText.text = message
    }
}


