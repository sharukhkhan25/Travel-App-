//
//  Extension.swift
//  NavadChat
//
//  Created by Izaan Saleem on 16/03/2023.
//

import Foundation
import UIKit

extension UIView {
    @IBInspectable
    var viewIsCircle: Bool {
        get {
            return self.viewIsCircle
        }
        set {
            if newValue {
                layer.cornerRadius = max(self.frame.height, self.frame.width) / 2
            }
        }
    }
    
    @IBInspectable
    var viewCornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var viewBorderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var viewBorderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var viewShadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var viewShadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var viewShadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var viewShadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
    
    var visibility: Visibility {
        get {
            let constraintHeight = (self.constraints.filter{$0.firstAttribute == .height && $0.constant == 0}.first)
            if let constraintHeight = constraintHeight, constraintHeight.isActive {
                return .gone
            } else {
                return self.isHidden ? .invisible : .visible
            }
        }
        set {
            if self.visibility != newValue {
                self.setVisibility(newValue)
            }
        }
    }
    
    @IBInspectable
    var visibilityState: String {
        get {
            return self.visibility.rawValue
        }
        set {
            let _visibility = Visibility(rawValue: newValue)!
            self.visibility = _visibility
        }
    }
    
    private func setVisibility(_ visibility: Visibility) {
        let heightConstraints = self.constraints.filter({$0.firstAttribute == .height && $0.constant == 0 && $0.secondItem == nil && ($0.firstItem as? UIView) == self})
        let heightConstraint = (heightConstraints.first)
        
        switch visibility {
        case .visible:
            heightConstraint?.isActive = false
            self.isHidden = false
            break
        case .invisible:
            heightConstraint?.isActive = false
            self.isHidden = true
            break
        case .gone:
            self.isHidden = true
            if let heightConstraint = heightConstraint {
                heightConstraint.isActive = true
                //widthConstraint.isActive = true
            } else {
                let heightConstraint = NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 0)
                self.addConstraint(heightConstraint)
                heightConstraint.isActive = true
            }
            self.setNeedsLayout()
            self.setNeedsUpdateConstraints()
        }
    }
}

enum Visibility: String {
    case visible = "visible"
    case invisible = "invisible"
    case gone = "gone"
}
