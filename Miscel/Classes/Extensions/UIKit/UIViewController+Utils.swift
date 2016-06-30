//
//  UIViewController+Utils.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 16/6/16.
//
//

import UIKit

import Layitout

extension UIViewController {
	public func embed(child: UIViewController, inView: UIView) -> UIViewController {
		self.embed(child) {
			child.view.translatesAutoresizingMaskIntoConstraints = false
			inView.addSubview(child.view)
			Layout.fill(inView, view: child.view)
		}
		return child
	}

	public func embed(child: UIViewController, addSubview: ()->()) -> UIViewController {
		self.addChildViewController(child)
		addSubview()
		child.didMoveToParentViewController(self)
		return child
	}
	
	public func unembed(child: UIViewController) {
		child.willMoveToParentViewController(self)
		child.view.removeFromSuperview()
		child.removeFromParentViewController()
	}
}

