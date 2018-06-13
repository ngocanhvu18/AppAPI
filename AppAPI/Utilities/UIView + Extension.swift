//
//  UIView + Extension.swift
//  AppAPI
//
//  Created by Ngọc Anh on 6/12/18.
//  Copyright © 2018 Ngọc Anh. All rights reserved.
//

import UIKit


@IBDesignable class CustomLabel: UILabel {}

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }

        set {
            if newValue == -1 {
                layer.cornerRadius = frame.width < frame.height ? frame.width * 0.5 : frame.height * 0.5
            } else {
                layer.cornerRadius = newValue
            }

            contentMode = .scaleToFill
            clipsToBounds = true
            layer.masksToBounds = true
        }
    }
}
