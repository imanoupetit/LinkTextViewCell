//
//  LinkTextView.swift
//  LinkedTextViewCell
//
//  Created by Imanou Petit on 24/01/2017.
//  Copyright © 2017 Imanou Petit. All rights reserved.
//

import UIKit

class LinkTextView: UITextView {
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }
    
    func configure() {
        isScrollEnabled = false
        isEditable = false
        isUserInteractionEnabled = true
        isSelectable = true
        dataDetectorTypes = .link
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        // Get the character index from the tap location
        let characterIndex = layoutManager.characterIndex(for: point, in: textContainer, fractionOfDistanceBetweenInsertionPoints: nil)

        // if we detect a link, handle the tap by returning self...
        if let _ = textStorage.attribute(NSLinkAttributeName, at: characterIndex, effectiveRange: nil) {
            return self
        }
        
        // ... otherwise return nil ; the tap will go on to the next receiver
        return nil
    }
    
    // Instead of overriding hitTest(_:with:), you can override point(inside:with:)
    
    /*
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        // Get the character index from the tap location
        let characterIndex = layoutManager.characterIndex(for: point, in: textContainer, fractionOfDistanceBetweenInsertionPoints: nil)
        
        // if we detect a link, handle the tap by returning true...
        if let _ = textStorage.attribute(NSLinkAttributeName, at: characterIndex, effectiveRange: nil) {
            return true
        }
        
        // ... otherwise return false ; the tap will go on to the next receiver
        return false
    }
    */
    
}
