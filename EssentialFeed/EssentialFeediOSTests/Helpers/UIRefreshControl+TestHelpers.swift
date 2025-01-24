//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 23/01/25.
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .valueChanged)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
