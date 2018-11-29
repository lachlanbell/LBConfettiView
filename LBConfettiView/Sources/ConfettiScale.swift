//
//  ConfettiScale.swift
//  LBConfettiView
//
//  Created by Lachlan Bell on 29/11/18.
//  Copyright © 2018 Lachlan Bell. All rights reserved.
//

import UIKit

extension ConfettiView {
    public enum ConfettiScale {
        case small
        case large
        case auto
        case custom(CGFloat)
        
        /// Scale value
        internal var scaleValue: CGFloat {
            switch self {
            case .small:
                return 0.5
            case .large:
                return 1.0
            case .auto:
                // Use large size if on an iPad, small if not
                if UIDevice.current.userInterfaceIdiom == .pad {
                    return 1.0
                } else {
                    return 0.5
                }
            case let .custom(customScale):
                return customScale
            }
        }
    }
}
