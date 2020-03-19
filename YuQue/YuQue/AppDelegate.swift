//
//  AppDelegate.swift
//  YuQue
//
//  Created by 罗盼 on 2020/3/17.
//  Copyright © 2020 CTO. All rights reserved.
//

import UIKit

#if DEBUG
    import DoraemonKit
#endif

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        setupWindow()
        setupIQKeyboard()
        return true
    }

}


extension AppDelegate {
    
    // MARK: - 设置跟控制器
    fileprivate func setupWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        
        window?.rootViewController = TabbarViewController()
        window?.makeKeyAndVisible()
    }
    
    
    // MARK: - 设置键盘监听管理
    fileprivate func setupIQKeyboard() {
        let manager = IQKeyboardManager.shared()
        manager.shouldResignOnTouchOutside = true
        manager.shouldToolbarUsesTextFieldTintColor = true
        manager.isEnableAutoToolbar = false
    }
}

// Debug 配置
extension AppDelegate {
#if DEBUG
    DoraemonManager.shareInstance().install()
#endif
}


