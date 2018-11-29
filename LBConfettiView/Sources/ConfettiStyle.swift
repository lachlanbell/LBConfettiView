//
//  ConfettiStyle.swift
//  LBConfettiView
//
//  Created by Lachlan Bell on 29/11/18.
//  Copyright © 2018 Lachlan Bell. All rights reserved.
//

import UIKit

extension ConfettiView {
    public enum ConfettiStyle {
        case confetti
        case diamond
        case star
        case triangle
        case customImage(UIImage)
        
        /// Image for associatied ConfettiStyle
        internal var image: UIImage? {
            
            // Framework bundle location for assets
            let bundle = Bundle(for: ConfettiView.self)
            
            switch self {
            case .confetti:
                return UIImage(named: "confetti", in: bundle, compatibleWith: nil)
            case .diamond:
                return UIImage(named: "diamond", in: bundle, compatibleWith: nil)
            case .star:
                return UIImage(named: "star", in: bundle, compatibleWith: nil)
            case .triangle:
                return UIImage(named: "triangle", in: bundle, compatibleWith: nil)
            case let .customImage(customImage):
                return customImage
            }
        }
        
    }
}
