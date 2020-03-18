//
//  TabbarViewController.swift
//  CapitalSwift
//
//  Created by 罗盼 on 2020/3/7.
//  Copyright © 2020 Simple. All rights reserved.
//

import UIKit

class TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupItemTitleTextAttribution()
        setupChildViewControllers()
    }

    // 设置所有UITAbbarItem的文字属性
    fileprivate func setupItemTitleTextAttribution() {
        
        let item = UITabBarItem.appearance()
        var normalAttrs = [NSAttributedString.Key: AnyObject]()
        normalAttrs[NSAttributedString.Key.font] = UIFont.systemFont(ofSize: 10, weight: .light)
        normalAttrs[NSAttributedString.Key.foregroundColor] = UIColor.black
        item.setTitleTextAttributes(normalAttrs, for: .normal)
        
        var selectedAttrs = [NSAttributedString.Key: AnyObject]()
        selectedAttrs[NSAttributedString.Key.font] = UIFont.systemFont(ofSize: 10, weight: .light)
        selectedAttrs[NSAttributedString.Key.foregroundColor] = UIColor.black
        item.setTitleTextAttributes(selectedAttrs, for: .selected)
    }
    
    // 添加子控件
    fileprivate func setupChildViewControllers() {
        
        addChildViewController(TeamViewController(),
                               title: "Team",
                               imageName: "search_w",
                               selectedImageName: "search")
        addChildViewController(DocumentViewController(),
                                title: "Document",
                                imageName: "list_w",
                                selectedImageName: "list")
        addChildViewController(MeViewController(),
                               title: "Me",
                               imageName: "setting_w",
                               selectedImageName: "setting")
    }
    
    fileprivate func addChildViewController(_ childViewController: UIViewController, title:String, imageName: String, selectedImageName:String) {
        
        // 1.设置首页对应的数据
        childViewController.navigationItem.title = title
        childViewController.tabBarItem.title = title
        //childViewController.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        //childViewController.tabBarItem.selectedImage = UIImage(named: selectedImageName)?.withRenderingMode(.alwaysOriginal)
        
        // 2.给首页包装一个导航控制器
        let nav = NavigationController()
        nav.addChild(childViewController)
        
        // 3.将导航控制器添加到当前控制器上
        addChild(nav)
    }

}
