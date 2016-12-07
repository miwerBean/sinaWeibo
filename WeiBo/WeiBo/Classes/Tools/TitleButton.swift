//
//  TitleButton.swift
//  WeiBo
//
//  Created by miwer on 16/6/22.
//  Copyright © 2016年 miwer. All rights reserved.
//

import UIKit

class TitleButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        titleLabel?.frame.origin.x = 0
        imageView?.frame.origin.x = titleLabel!.frame.size.width + 2
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setImage(UIImage(named: "navigationbar_arrow_down"), for: UIControlState())
        setImage(UIImage(named: "navigationbar_arrow_up"), for: UIControlState.selected)
        setTitle("bean", for: UIControlState())
        setTitleColor(UIColor.orange, for: UIControlState())
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
