//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 23/01/25.
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}
