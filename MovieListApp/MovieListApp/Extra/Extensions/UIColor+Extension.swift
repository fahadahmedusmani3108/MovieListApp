//
//  UIColor+Extension.swift
//  MovieListApp
//
//  Created by Fahad Ahmed Usmani on 02/01/2023.
//

import UIKit

extension UIColor {
    static func rgba(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}
