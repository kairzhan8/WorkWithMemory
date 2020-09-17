//
//  SecondViewController.swift
//  WorkWithMemory
//
//  Created by Kairzhan Kural on 9/17/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    private lazy var closure: (() -> Void) = { [unowned self] in
        self.view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        closure()
    }

    @IBAction func closeVC(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    deinit {
        print("SecondVC was deinit", SecondViewController.self)
    }
    
}
