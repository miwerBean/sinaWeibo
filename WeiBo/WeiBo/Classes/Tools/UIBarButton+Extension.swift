
//
//  UIBarButton+Extension.swift
//  WeiBo
//
//  Created by miwer on 16/6/22.
//  Copyright © 2016年 miwer. All rights reserved.
//

import UIKit

extension UIBarButtonItem{

    convenience init(imageName: String, target: AnyObject?, action: Selector) {
        let button = UIButton()
        button.setImage(UIImage(named: imageName), forState: UIControlState.Normal)
        button.setImage(UIImage(named: imageName + "_highlighted"), forState: UIControlState.Highlighted)
        button.sizeToFit()
        button.addTarget(target, action: action, forControlEvents: UIControlEvents.TouchUpInside)
        self.init(customView: button)
    }
}