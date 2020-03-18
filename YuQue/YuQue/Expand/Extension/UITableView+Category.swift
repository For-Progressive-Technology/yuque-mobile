//
//  UITableview+Category.swift
//  CapitalSwift
//
//  Created by 罗盼 on 2020/3/10.
//  Copyright © 2020 Simple. All rights reserved.
//

import Foundation

extension UITableView: SPCompatible{}
extension SP where Base: UITableView {
    
    /// 初始化TableView配置
    func baseConfig() {
        base.backgroundColor = UIColor.clear
        base.separatorStyle = .none
        base.showsVerticalScrollIndicator = false
        base.estimatedRowHeight = 0;
        base.estimatedSectionHeaderHeight = 0;
        base.estimatedSectionFooterHeight = 0;
    }
}
