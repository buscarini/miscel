//
//  UIView.swift
//  Miscel
//
//  Created by Jose Manuel Sánchez Peñarroja on 10/11/15.
//  Copyright © 2015 vitaminew. All rights reserved.
//

import UIKit

import Layitout

// MARK: Subviews
public extension UIView {
	public static func removeAllSubviews(view:UIView) {
		for subview in view.subviews {
			subview.removeFromSuperview()
		}
	}
	
	public static func addSubviews(view: UIView, subviews: [UIView]) {
		for subview in subviews {
			view.addSubview(subview)
		}
	}
}

// MARK: Properties
public extension UIView {
	public var x: CGFloat {
		return self.frame.x
	}
	
	public var y: CGFloat {
		return self.frame.y
	}
	
	public var width: CGFloat {
		return self.frame.width
	}
	
	public var height: CGFloat {
		return self.frame.height
	}
}

// MARK: Corners
public extension UIView {
	public func roundCorners(radius: CGFloat? = nil) {
		self.layer.cornerRadius = radius ?? min(self.width, self.height)
		self.layer.masksToBounds = true
	}
}
