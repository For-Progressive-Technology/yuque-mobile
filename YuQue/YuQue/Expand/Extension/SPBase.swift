//
//  Base.swift
//  CapitalSwift
//
//  Created by 罗盼 on 2020/3/10.
//  Copyright © 2020 Simple. All rights reserved.
//

import Foundation

struct SP<Base> {
    let base: Base
    init(_ base: Base) {
        self.base = base
    }
}

protocol SPCompatible {}
extension SPCompatible {
    static var sp: SP<Self>.Type {
        get { SP<Self>.self }
        set {}
    }
    var sp: SP<Self> {
        get { SP(self) }
        set {}
    }
}
