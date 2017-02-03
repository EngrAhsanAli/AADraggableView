//
//  AADraggableView+Helper.swift
//  AADraggableView
//
//  Created by Engr. Ahsan Ali on 03/02/2017.
//  Copyright (c) 2017 AA-Creations. All rights reserved.
//

/// MARK:- AADraggableViewDelegate
@objc public protocol AADraggableViewDelegate {
    @objc optional func draggingDidBegan(_ sender: UIView)
    @objc optional func draggingDidEnd(_ sender: UIView)
}

/// Repositioning varients after dragging the view
///
/// - sticky: Stick with the edges with padding
/// - free: Free to move
/// - edgesOnly: Stick with nearby edges only
/// - topOnly: stick with top edge
/// - bottomOnly: stick with bottom edge
/// - leftOnly: stick with left edge
/// - rightOnly: stick with right edge
public enum Reposition {
    case sticky
    case free
    case edgesOnly
    case topOnly
    case bottomOnly
    case leftOnly
    case rightOnly
}

// MARK: - AADraggableView bounds calculations
extension AADraggableView {
    
    /// Respected bounds from UIView, default is UIScreen view
    var respectedBounds: CGRect {
        if let bounds = respectedView?.bounds {
            return bounds
        }
        return UIScreen.main.bounds
    }
    
    /// screen min x axis
    var screenMinX: CGFloat {
        return respectedBounds.minX + padding
    }
    
    /// screen mid x axis
    var screenMidX: CGFloat {
        return respectedBounds.midX + padding
    }
    
    /// screen max x axis
    var screenMaxX: CGFloat {
        return respectedBounds.maxX - padding
    }
    
    /// screen min y axis
    var screenMinY: CGFloat {
        return respectedBounds.minY + padding
    }
    
    /// screen mid y axis
    var screenMidY: CGFloat {
        return respectedBounds.midY + padding
    }
    
    /// screen max y axis
    var screenMaxY: CGFloat {
        return respectedBounds.maxY - padding
    }
    
    /// minX
    var minX: CGFloat {
        return screenMinX + bounds.midX
    }
    
    /// maxX
    var maxX: CGFloat {
        return screenMaxX - bounds.midX
    }
    
    /// minY
    var minY: CGFloat {
        return screenMinY + bounds.midY
    }
    
    /// maxY
    var maxY: CGFloat {
        return screenMaxY - bounds.midY
    }
    
    /// Reposition for near x corner
    var repositionNearX: CGFloat {
        if self.frame.midX > screenMidX {
            return maxX
        }
        return minX
    }
    
    /// Reposition for near y corner
    var repositionNearY: CGFloat {
        if self.frame.midY > screenMidY {
            return maxY
        }
        return minY
    }

    /// Reposition for minimum x axis
    var repositionMinX: CGFloat? {
        if self.frame.minX < screenMinX {
            return minX
        }
        return nil
    }
    
    /// Reposition for maximum x axis
    var repositionMaxX: CGFloat? {
        if self.frame.maxX > screenMaxX {
            return maxX
        }
        return nil
    }
    
    /// Reposition for minimum y axis
    var repositionMinY: CGFloat? {
        if self.frame.minY < screenMinY {
            return minY
        }
        return nil
    }
    /// Reposition for maximum y axis
    var repositionMaxY: CGFloat? {
        if self.frame.maxY > screenMaxY  {
            return maxY
        }
        return nil
    }
    
}

// MARK: - UIPanGestureRecognizer extension
extension UIPanGestureRecognizer {
    
    
    /// Translate view center according to translation
    ///
    /// - Parameter view: view to translate
    func translateView(_ view: UIView) {
        let translation = self.translation(in: view)
        let xAxis = view.center.x + translation.x
        let yAxis = view.center.y + translation.y
        view.center = CGPoint(x: xAxis, y: yAxis)
        setTranslation(CGPoint.zero, in: view)
    }
    
}
