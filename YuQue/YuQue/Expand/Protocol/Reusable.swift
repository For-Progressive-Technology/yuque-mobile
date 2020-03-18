//
//  File.swift
//  CapitalSwift
//
//  Created by 罗盼 on 2020/3/7.
//  Copyright © 2020 Simple. All rights reserved.
//

import UIKit

protocol Reusable {
    
    static func className() -> String
    static func reuseId() -> String
}

extension Reusable where Self: UIView {
    
    static func className() -> String {
        "\(self)"
    }
    
    static func reuseId() -> String {
        className()
    }
    
}
