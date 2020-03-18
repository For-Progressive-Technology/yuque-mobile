//
//  Toast+Category.swift
//  CapitalSwift
//
//  Created by 罗盼 on 2020/3/11.
//  Copyright © 2020 Simple. All rights reserved.
//

import Foundation

extension UIView: SPCompatible {}
extension SP where Base: UIView {
    func makeToast(_ message: String?,
                   duration: TimeInterval = 2) {
        
        ToastManager.shared.isTapToDismissEnabled = true
        ToastManager.shared.isQueueEnabled = true
        ToastManager.shared.style.maxHeightPercentage = 0.9
        ToastManager.shared.style.verticalPadding = 20
        ToastManager.shared.style.horizontalPadding = 20

        let point = CGPoint(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height * (1/2))
        base.makeToast(message, duration: 2, point: point, title: nil, image: nil, completion: nil)
    }
}
