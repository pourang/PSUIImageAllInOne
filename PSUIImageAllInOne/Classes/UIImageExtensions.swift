//
//  UIImagesExtensions.swift
//  Pods-PSUIImageAllInOne_Example
//
//  Created by Apple on 11/8/19.
//

import Foundation
import UIKit

extension UIImage {
    public func imageWithColor(color: UIColor) ->UIImage {
        let rect: CGRect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 1, height: 1), false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}


