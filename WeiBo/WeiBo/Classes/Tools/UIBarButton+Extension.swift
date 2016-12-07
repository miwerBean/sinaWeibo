
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
        button.setImage(UIImage(named: imageName), for: UIControlState())
        button.setImage(UIImage(named: imageName + "_highlighted"), for: UIControlState.highlighted)
        button.sizeToFit()
        button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        self.init(customView: button)
    }
}
