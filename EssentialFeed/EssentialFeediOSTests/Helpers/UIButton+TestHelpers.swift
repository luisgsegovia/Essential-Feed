//
//  UIButton+TestHelpers.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 23/01/25.
//

import UIKit

private extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
