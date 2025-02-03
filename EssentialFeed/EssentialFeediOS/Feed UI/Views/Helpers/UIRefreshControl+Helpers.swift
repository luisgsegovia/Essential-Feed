//
//  UIRefreshControl+Helpers.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 02/02/25.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
