//
//  UIButton+TestHelpers.swift
//  EssentialFeed
//
//  Created by Luis Segovia on 23/01/25.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
