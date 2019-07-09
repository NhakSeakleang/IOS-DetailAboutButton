//
//  ViewController.swift
//  IOSButton
//
//  Created by GIS on 7/9/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var mainView: MainView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
        
    }

    func setUpView() {
        
        mainView = MainView()
        self.view = mainView
        
        mainView.onBtnClick = self.onBtnClick
        
    }
    
    @objc func onBtnClick() {
        
        print("btnSample click")
        
    }

}

