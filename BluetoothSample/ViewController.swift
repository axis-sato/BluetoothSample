//
//  ViewController.swift
//  BluetoothSample
//
//  Created by Masahiko Sato on 2017/08/01.
//  Copyright © 2017年 Masahiko Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        log?.debug("foo")
        log?.info("bar")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

