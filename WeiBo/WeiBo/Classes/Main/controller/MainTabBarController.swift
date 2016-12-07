//
//  MainTabBarController.swift
//  WeiBo
//
//  Created by miwer on 16/6/21.
//  Copyright © 2016年 miwer. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = UIColor.orange
        addChildViewController(HomeTableViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(MessageTableViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(DiscoverViewController(), title: "广场", imageName: "tabbar_discover")
        addChildViewController(ProfileTableViewController(), title: "我", imageName: "tabbar_profile")
        
        
    }
    
    fileprivate func addChildViewController(_ childController: UIViewController, title: String, imageName: String) {
        childController.title = title
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        let navi = UINavigationController(rootViewController: childController)
        addChildViewController(navi)
    }

}









