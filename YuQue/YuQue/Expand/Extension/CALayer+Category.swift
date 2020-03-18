//
//  CALayer+Category.swift
//  CapitalSwift
//
//  Created by 罗盼 on 2020/3/8.
//  Copyright © 2020 Simple. All rights reserved.
//

import Foundation

extension CALayer: SPCompatible{}
extension SP where Base: CALayer{

    /// 给Layer添加阴影
    /*
    - shadowColor: 阴影颜色,可设置透明度等
    - shadowOpacity:阴影透明度,默认为0则看不到阴影.因此要看到阴影这个值必须大于0,shadowColor的透明度也要大于0
    - shadowRadius:模糊计算的半径,取平均值的半径,设置为0的话则为一个矩形块.
    - shadowOffset:偏移量,xy表示view左上角,width表示阴影与x的偏移量,height表示阴影与y值的偏移量
    ///注意:如果clipsToBounds设置为YES,则阴影效果消失
   */
    
func addShadow(shadowColor:UIColor,
               shadowOpacity:CGFloat = 1,
               shadowRadius:CGFloat,
               shadowOffset:CGSize,
               cornerRadius:CGFloat){
    base.shadowColor = shadowColor.cgColor
    base.shadowOffset = shadowOffset
    base.shadowRadius = shadowRadius
    base.shadowOpacity = Float(shadowOpacity)
    base.cornerRadius = cornerRadius
 }
    
}

