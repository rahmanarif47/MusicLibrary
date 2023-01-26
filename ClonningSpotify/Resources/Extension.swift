//
//  Extension.swift
//  ClonningSpotify
//
//  Created by Arif Rahman Sidik on 09/01/23.
//

import Foundation
import UIKit

extension UIView {
    var width: CGFloat {
        return frame.size.width
    }
    
    var height: CGFloat {
        return frame.size.height
    }
    
    var left: CGFloat {
        return frame.origin.x
    }
    
    var right: CGFloat {
        return left + width
    }
    
    var bottom: CGFloat {
        return top + height
    }
    
    var top: CGFloat {
        return frame.origin.y
    }
}
