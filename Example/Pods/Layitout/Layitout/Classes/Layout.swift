//
//  LayoutUtils.swift
//  Miscel
//
//  Created by Jose Manuel Sánchez Peñarroja on 15/10/15.
//  Copyright © 2015 vitaminew. All rights reserved.
//

import UIKit

public struct Layout {
	public static func fill(container: UIView, view : UIView, priority: UILayoutPriority = UILayoutPriorityRequired) {
		Layout.fillH(container: container, view: view, priority: priority)
		Layout.fillV(container: container, view: view, priority: priority)
	}
	
	public static func fillV(container: UIView, view : UIView, priority: UILayoutPriority = UILayoutPriorityRequired) {
		let constraints : [NSLayoutConstraint]
		
		if #available(iOS 9.0, *) {
			constraints = [
				container.topAnchor.constraint(equalTo: view.topAnchor),
				container.bottomAnchor.constraint(equalTo: view.bottomAnchor)
			]
		} else {
			constraints = [
				NSLayoutConstraint(item: container, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0),
				NSLayoutConstraint(item: container, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
			]
		}
		
		for constraint in constraints {
			constraint.priority = priority
		}
		
		container.addConstraints(constraints)
	}

	public static func fillH(container: UIView, view : UIView, priority: UILayoutPriority = UILayoutPriorityRequired) {
		let constraints : [NSLayoutConstraint]
		
		if #available(iOS 9.0, *) {
			constraints = [
				container.leadingAnchor.constraint(equalTo: view.leadingAnchor),
				container.trailingAnchor.constraint(equalTo: view.trailingAnchor)
			]
		} else {
			constraints = [
				NSLayoutConstraint(item: container, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0),
				NSLayoutConstraint(item: container, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0),
			]
		}
		
		for constraint in constraints {
			constraint.priority = priority
		}
		
		container.addConstraints(constraints)

	}
		
	public static func equal(view1: UIView,view2 : UIView, attribute: NSLayoutAttribute, multiplier : CGFloat = 1, constant : CGFloat = 0, priority : UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
		let constraint = NSLayoutConstraint(item: view1, attribute: attribute, relatedBy: .equal, toItem: view2, attribute: attribute, multiplier: multiplier, constant: constant)
		constraint.priority = priority
		return constraint
	}

	public static func equal(view : UIView, attribute: NSLayoutAttribute, constant : CGFloat, priority : UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
		let constraint = NSLayoutConstraint(item: view, attribute: attribute, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: constant)
		constraint.priority = priority
		return constraint
	}
}
