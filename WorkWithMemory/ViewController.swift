//
//  ViewController.swift
//  WorkWithMemory
//
//  Created by Kairzhan Kural on 9/17/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        
        var first: MyClass? = MyClass()
        var second = first
        var third = first
        
        first = nil
        second = nil
        third = nil
    }

    @IBAction func openSecondVC(_ sender: UIButton) {
    }
    
    
}

class MyClass {
    var someNumber = 16
    
    deinit {
        print("MyClass will be dealocated")
    }
}

