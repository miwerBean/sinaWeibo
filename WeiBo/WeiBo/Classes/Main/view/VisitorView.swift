//
//  VisitorView.swift
//  WeiBo
//
//  Created by miwer on 16/6/22.
//  Copyright © 2016年 miwer. All rights reserved.
//

import UIKit

protocol VisitorViewDelegate : NSObjectProtocol {
    func gotoCareClick()
}

class VisitorView: UIView {


    @IBOutlet weak var careButton: UIButton!
    @IBOutlet weak var roundView: UIImageView!
    
    
    weak var delegate: VisitorViewDelegate?
    
    override func awakeFromNib() {
        careButton.layer.borderColor = UIColor.lightGrayColor().CGColor
        startAnimation()
    }
    
    private func startAnimation() {
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        animation.toValue = 2 * M_PI
        animation.duration = 1
        animation.repeatCount = MAXFLOAT
        animation.removedOnCompletion = false
        roundView.layer .addAnimation(animation, forKey: nil)
        
    }
    
    @IBAction func gotoCare(sender: AnyObject) {
                
        delegate?.gotoCareClick()
    
    }
    
    
    class func loadVisitorView() -> VisitorView{
        return NSBundle.mainBundle().loadNibNamed("VisitorView", owner: nil, options: nil).last as! VisitorView
    }
    
    
}

