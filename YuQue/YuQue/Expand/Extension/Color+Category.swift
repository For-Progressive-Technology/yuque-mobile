//
//  Color.swift
//  CapitalSwift
//
//  Created by 罗盼 on 2020/3/7.
//  Copyright © 2020 Simple. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(r : CGFloat, g : CGFloat, b : CGFloat){
        self.init(red: r/255.0,
                  green: g/255.0,
                  blue: b/255.0,
                  alpha: 1.0);
    }
    convenience init(hex: UInt32, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: alpha)
    }
    
    /// 简化RGBA颜色写法
    static func RGBA(_ r : UInt, g : UInt, b : UInt, a : CGFloat = 1.0) -> UIColor {
        let redFloat = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue = CGFloat(b) / 255.0
        return UIColor(red: redFloat, green: green, blue: blue, alpha: a)
    }
    
    /// 16进制颜色
    static func HEX(hex: UInt32, alpha: CGFloat = 1.0) -> UIColor {
        UIColor(red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
                green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
                blue: CGFloat(hex & 0x0000FF) / 255.0,
                alpha: alpha)
    }
    
    /// 随机色
    static func randomColor() -> UIColor {
        UIColor(r: CGFloat(arc4random_uniform(256)),
                g: CGFloat(arc4random_uniform(256)),
                b: CGFloat(arc4random_uniform(256)));
    }
}
