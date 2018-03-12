//
//  ViewController.swift
//  EFLanguage
//
//  Created by lisheng on 12/03/2018.
//  Copyright © 2018 Hunan EEfung Software Co., Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        EFLanguage.standardLanguage().currentLanguage = "zh-ns"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

