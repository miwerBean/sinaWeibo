//
//  HomeTableViewController.swift
//  WeiBo
//
//  Created by miwer on 16/6/21.
//  Copyright © 2016年 miwer. All rights reserved.
//

import UIKit

class HomeTableViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        
    }
    
    fileprivate func initUI() {
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "navigationbar_friendattention", target: self, action: #selector(HomeTableViewController.leftItemClick))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(imageName: "navigationbar_pop", target: self, action: #selector(HomeTableViewController.rightItemClick))
        
        
        navigationItem.titleView = titleButton
        
    }
    
    @objc fileprivate func titleButtonClick(_ button: UIButton){
        button.isSelected = !button.isSelected
        print("title")
    }
    
    @objc fileprivate func leftItemClick() {
        print("left")
    }
    
    @objc fileprivate func rightItemClick() {
        print("right")
    }
    
    fileprivate lazy var titleButton: TitleButton = {
        let button = TitleButton()
        button.sizeToFit()
        button.addTarget(self, action: #selector(HomeTableViewController.titleButtonClick(_:)), for: .touchUpInside)
        return button
    }()
}

//    navigationItem.leftBarButtonItem = UIBarButtonItem
    
//        let button = UIButton()
//        button.setImage(UIImage(named: "navigationbar_friendattention"), forState: UIControlState.Normal)
//        button.setImage(UIImage(named: "navigationbar_friendattention_highlighted"), forState: UIControlState.Highlighted)
//        button.sizeToFit()
//        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
    
//        navigationItem.leftBarButtonItem = createBarButton("navigationbar_friendattention", target: self, action: "leftItemClick")
    
//        navigationItem.rightBarButtonItem = createBarButton("navigationbar_pop", target: self, action: "rightItemClick")
    
    
    
//    private func createBarButton(imageName: String, target: AnyObject?, action: Selector) -> UIBarButtonItem {
//        
//        let button = UIButton()
//        button.setImage(UIImage(named: imageName), forState: UIControlState.Normal)
//        button.setImage(UIImage(named: imageName + "_highlighted"), forState: UIControlState.Highlighted)
//        button.sizeToFit()
//        button.addTarget(target, action: action, forControlEvents: UIControlEvents.TouchUpInside)
//        return UIBarButtonItem(customView: button)
//    }
    
    

