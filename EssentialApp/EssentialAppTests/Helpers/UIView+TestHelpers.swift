//
//  UIView+TestHelpers.swift
//  EssentialApp
//
//  Created by Luis Segovia on 10/02/25.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
