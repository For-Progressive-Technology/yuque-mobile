//
//  NavigationController.swift
//  CapitalSwift
//
//  Created by 罗盼 on 2020/3/7.
//  Copyright © 2020 Simple. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        // 设置导航控制器为手势识别的代理
        interactivePopGestureRecognizer?.delegate = self
        
        
        navigationBar.titleTextAttributes  = [NSAttributedString.Key.foregroundColor:UIColor.HEX(hex: 0x000000),NSAttributedString.Key.font:UIFont.systemFont(ofSize: 24, weight: .semibold)]
        navigationBar.tintColor = UIColor.white
        
        // 设置navigationBar的背景图片
        navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// 重写push方法的目的 : 拦截所有push进来的子控制器
    ///
    /// - Parameters:
    ///   - viewController: 刚刚push进来的子控制器
    ///   - animated: 是否动画
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count > 0 // 如果viewController不是最早push进来的子控制器
        {
            //左上角
            /*
            let backButton = UIButton.init(type: UIButton.ButtonType.custom)
            backButton.setImage(UIImage(named:"back"), for: UIControl.State.normal)
            backButton.setImage(UIImage(named:"back"), for: UIControl.State.highlighted)
            backButton.setTitleColor(UIColor.clear, for: UIControl.State.normal)
            backButton.setTitleColor(UIColor.clear, for: UIControl.State.highlighted)
            backButton.sizeToFit()
            
            // 这句代码放在sizeToFit后面
            backButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            backButton.addTarget(self, action: #selector(back), for: UIControl.Event.touchUpInside)
            */
            
            let image = UIImage(named: "back")?.withRenderingMode(.alwaysOriginal)
            
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: image, style: .plain, target: self, action: #selector(back))
            
            //隐藏底部工具栏
            viewController.hidesBottomBarWhenPushed = true
        }
        
        // 所有设置搞定后, 再push控制器
        super.pushViewController(viewController, animated: animated)
    }
    
    @objc func back(){
        popViewController(animated: true)
    }
}

//MARK: - UIGestureRecognizerDelegate
extension NavigationController:UIGestureRecognizerDelegate
{
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        
        // 手势何时有效 : 当导航控制器的子控制器个数 > 1就有效
        return children.count > 1
    }
}

