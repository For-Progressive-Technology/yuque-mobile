//
//  Tools.swift
//  CapitalSwift
//
//  Created by 罗盼 on 2020/3/8.
//  Copyright © 2020 Simple. All rights reserved.
//

import Foundation

// MARK:- 自定义打印方法
func VVLog<T>(_ message : T, file : String = #file, funcName : String = #function, lineNum : Int = #line) {

   #if DEBUG

       let fileName = (file as NSString).lastPathComponent

       print("\(fileName):(\(lineNum))- \(message)")

   #endif
}


// MARK:- 圆角及边框
func viewRadius(_ view: UIView,
                _ radiu: Float,
                _ width: Float = 0,
                _ color: UIColor = UIColor.clear) {
    view.layer.cornerRadius = CGFloat(radiu)
    view.layer.masksToBounds = true
    view.layer.borderWidth = CGFloat(width)
    view.layer.borderColor = color.cgColor
    // 启光栅化
    view.layer.shouldRasterize = true
    view.layer.rasterizationScale = UIScreen.main.scale
}

/// 圆角设置
///
/// - Parameters:
///   - view: 需要设置的控件
///   - corner: 哪些圆角
///   - radii: 圆角半径
/// - Returns: layer图层
func configRectCorner(view: UIView, corner: UIRectCorner, radii: CGSize) -> CALayer {
    
    let maskPath = UIBezierPath.init(roundedRect: view.bounds, byRoundingCorners: corner, cornerRadii: radii)
    
    let maskLayer = CAShapeLayer.init()
    maskLayer.frame = view.bounds
    maskLayer.path = maskPath.cgPath
    
    return maskLayer
}

// MARK:- 返回JSON数据
func JsonResponse(_ dict: [String: AnyObject]) -> JSON {
    JSON(dict) as JSON
}
