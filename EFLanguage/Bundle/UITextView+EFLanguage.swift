//
//  UITextView+EFLanguageer.swift
//  EFLanguage
//
//  Created by lisheng on 12/03/2018.
//  Copyright © 2018 Hunan EEfung Software Co., Ltd. All rights reserved.
//

import UIKit

/**
*  解决IB中uitextview不lcoalization的bug
*/
@IBDesignable
extension UITextView {
    
    @IBInspectable
    var local:Bool {
        get{
            return true
        }
        set(newlocal) {
            self.text = localized(self.text)
        }
    }
}
