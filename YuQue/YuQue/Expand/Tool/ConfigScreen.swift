//
//  ConfigScreen.swift
//  CapitalSwift
//
//  Created by 罗盼 on 2020/3/7.
//  Copyright © 2020 Simple. All rights reserved.
//

import UIKit

//适配iPhoneX
//获取状态栏的高度，全面屏手机的状态栏高度为44pt，非全面屏手机的状态栏高度为20pt

//获取状态栏高度
var oldStatusBarHeight:CGFloat {
    get {
        if #available(iOS 13.0, *) {
            
            let height = CGFloat((UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.size.height) ?? 0)
            if height == 0 {
                return CGFloat(UIApplication.shared.statusBarFrame.height)
            } else {
                return height
            }
            
        } else {
            return CGFloat(UIApplication.shared.statusBarFrame.height)
        }
    }
}

//状态栏高度
let statusBarHeight = oldStatusBarHeight
//导航栏高度
let navigationHeight = CGFloat(statusBarHeight + 44)

//tabbar高度
let tabBarHeight = CGFloat(statusBarHeight==44 ? 83 : 49)

//顶部的安全距离
let topSafeAreaHeight = CGFloat(statusBarHeight - 20)

//底部的安全距离
let bottomSafeAreaHeight = CGFloat(tabBarHeight - 49)

// 屏幕宽度
let screenHeight = UIScreen.main.bounds.height
// 屏幕高度
let screenWidth = UIScreen.main.bounds.width

//高度比例
let heightRate = (screenHeight / 812) //812 是ui设计用的屏幕高度
let widthRate = (screenWidth / 375)   //812 是ui设计用的屏幕高度


 func fit(_ width: CGFloat) -> CGFloat {
    width * widthRate
 }


// MARK:- 自定义打印方法
func VVLog<T>(_ message : T, file : String = #file, funcName : String = #function, lineNum : Int = #line) {

    #if DEBUG

        let fileName = (file as NSString).lastPathComponent

        print("\(fileName):(\(lineNum))- \(message)")

    #endif
}

