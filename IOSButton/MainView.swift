//
//  MainView.swift
//  IOSButton
//
//  Created by GIS on 7/9/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    var btnSample: UIButton!
    var onBtnClick: (()->())!
    
    override func layoutSubviews() {
        
        setUpView()
        
    }
    
    func setUpView() {
        
        self.backgroundColor = .lightGray
        // create object button with type
        btnSample = UIButton(type: .contactAdd)
        // set frame button
        btnSample.frame = CGRect(x: 0, y: 0, width: self.frame.width - 300, height: 40)
        // set posotion to center of the screen
        btnSample.center = self.center
        // set background color
        btnSample.backgroundColor = .white
        // set titile
        btnSample.setTitle("Add", for: .normal)
        // set titile when highlighted
//        btnSample.setTitle("This is highlighted", for: .highlighted)
        // set titile color
//        btnSample.setTitleColor(.gray, for: .normal)
        // set titile color when highlighted
//        btnSample.setTitleColor(.black , for: .highlighted)
        // set image
//        btnSample.setImage(UIImage(named: "buttonIcon"), for: .normal)
        // set image not scale
//        btnSample.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        
        // add even to button
        btnSample.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        
        self.addSubview(btnSample)
        
    }
    
    @objc func onClick() {
        
        onBtnClick()
        
    }
    
}
