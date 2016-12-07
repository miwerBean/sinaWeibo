//
//  BaseViewController.swift
//  WeiBo
//
//  Created by miwer on 16/6/22.
//  Copyright © 2016年 miwer. All rights reserved.
//

import UIKit

class BaseViewController: UITableViewController, VisitorViewDelegate {

    let isLogin: Bool = false
    var visitor: VisitorView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        isLogin ? super.viewDidLoad() : setupVisitorView()
        
    }

    func gotoCareClick() {
        print("gotoCareClick")
    }
    
    fileprivate func setupVisitorView() {
        
        visitor = VisitorView.loadVisitorView()
        visitor?.delegate = self
        view = visitor
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "登陆", style: UIBarButtonItemStyle.plain, target: self, action: #selector(BaseViewController.login))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册", style: UIBarButtonItemStyle.plain, target: self, action: #selector(BaseViewController.rigster))
        
    }
    
    @objc fileprivate func login() {
        print("login")
    }
    
    @objc fileprivate func rigster() {
        print("rigster")
    }
}






