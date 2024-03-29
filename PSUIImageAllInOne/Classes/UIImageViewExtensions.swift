//
//  UIImageExtensions.swift
//  Pods-PSUIImageAllInOne_Example
//
//  Created by Apple on 11/8/19.
//

import Foundation
import UIKit

extension UIImageView {
    
    public func roundView(borderColor: UIColor, borderWidth: CGFloat) {
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = self.layer.frame.size.width / 2
        self.clipsToBounds = true
    }
    
    public func highlightBorderWithColor(borderColor: UIColor, borderWidth: CGFloat) {
        
        UIView.animate(withDuration: TimeInterval(2.0)) {
            self.layer.borderColor = borderColor.cgColor
            self.layer.borderWidth = borderWidth
        }
    }
    
    public func fadeOut(duration: CGFloat) {
        UIView.animate(withDuration: TimeInterval(duration)) {
            self.alpha = 0.0
        }
    }
    
    public func fadeIn(duration: CGFloat) {
        UIView.animate(withDuration: TimeInterval(duration)) {
            self.alpha = 1.0
        }
    }
    
    public func animateRight()
    {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            self.center.x = self.frame.width
        }, completion: { finished in
            if finished {
                self.animateLeft()
            }
        })
    }
    
    public func animateLeft()
    {
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [ .autoreverse, .repeat, .curveEaseInOut, .beginFromCurrentState], animations: {
            self.frame.origin.x = 0.0
        }, completion: nil)
    }
    
}
