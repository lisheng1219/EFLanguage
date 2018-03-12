//
//  UIImageView+EFLanguager.swift
//  EFLanguage
//
//  Created by lisheng on 12/03/2018.
//  Copyright © 2018 Hunan EEfung Software Co., Ltd. All rights reserved.
//

import UIKit

/**
*  解决IB中image不lcoalization的bug
*/
@IBDesignable
extension UIImageView {
    
    @IBInspectable
    var local:String {
        get {
            return ""
        }
        set(newlocal) {
            self.image = localizedImage(newlocal)
        }
    }
}
