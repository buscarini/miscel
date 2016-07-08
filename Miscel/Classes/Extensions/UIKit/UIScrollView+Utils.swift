//
//  UIScrollView+Utils.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 7/7/16.
//
//

import UIKit

public enum PagingOrientation {
	case Horizontal
	case Vertical
}

extension UIScrollView {

	static func offset(scrollView: UIScrollView, forPage: Int, orientation: PagingOrientation) -> CGFloat {
	
		let page = CGFloat(forPage)
	
		switch orientation {
			case .Horizontal:
				return scrollView.bounds.size.width*page
			
			case .Vertical:
				return scrollView.bounds.size.height*page
		}
	}

	static func numPages(scrollView: UIScrollView, orientation: PagingOrientation) -> Int {
		switch orientation {
			case .Horizontal:
				return Int(scrollView.contentSize.width/scrollView.bounds.size.width)
			
			case .Vertical:
				return Int(scrollView.contentSize.height/scrollView.bounds.size.height)
		}
	}

	static func currentPage(scrollView: UIScrollView, orientation: PagingOrientation) -> Int {
		let offset: CGFloat
		switch orientation {
			case .Horizontal:
				offset = scrollView.contentOffset.x
			
			case .Vertical:
				offset = scrollView.contentOffset.y
		}
		
		return Int(offset/CGFloat(self.numPages(scrollView: scrollView, orientation: orientation)))
	}
}

