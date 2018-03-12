//
//  NSBundle+EFLanauage.swift
//  EFLanguage
//
//  Created by lisheng on 12/03/2018.
//  Copyright © 2018 Hunan EEfung Software Co., Ltd. All rights reserved.
//

import Foundation

/**
 *  当调用onLanguage后替换掉mainBundle为当前语言的bundle
 */
class BundleEx: Bundle {
    
    override func localizedString(forKey key: String, value: String?, table tableName: String?) -> String {
        if let bundle = languageBundle() {
            return bundle.localizedString(forKey: key, value: value, table: tableName)
        } else {
            return super.localizedString(forKey: key, value: value, table: tableName)
        }
    }
}

extension Bundle {
    
    //代替dispatch_once
    private static var onLanguageDispatchOnce: ()->Void = {
        object_setClass(Bundle.main, BundleEx.self)
    }
    
    func onLanguage() {
        //替换NSBundle.mainBundle()的class为自定义的BundleEx，这样一来我们就可以重写方法
        Bundle.onLanguageDispatchOnce()
    }
    
    //当前语言的bundle
    func languageBundle() -> Bundle? {
        return EFLanguager.standardLanguager().currentLanguageBundle
    }
}
