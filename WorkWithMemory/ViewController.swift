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
        
//        var first: MyClass? = MyClass()
//        var second = first
//        var third = first
//
//        first = nil
//        second = nil
//        third = nil
        //---------------------------
//        var mother: Parent?
//        mother = Parent()
//        mother = nil
        //----------------------------
        var kairzhan: Person?
        var google: Job?
        
        kairzhan = Person()
        google = Job()
        
        kairzhan?.job = google
        google?.person = kairzhan
        
        kairzhan = nil
        google = nil
    }

    @IBAction func openSecondVC(_ sender: UIButton) {
    }
     
    
}
// Parent
class Person {
    
    var job: Job?
    
    deinit {
        print("Person will be dealocated")
    }
}
// Child
class Job {
    
    weak var person: Person?
    
    deinit {
        print("Job will be dealocated")
    }
}

class Parent {
    
    var child = Child() //зависит от класса Child и владелец Parent
    
    deinit {
        print("Parent will be dealocated")
    }
}

class Child {
    
    deinit {
        print("Child will be dealocated")
    }
}

class MyClass {
    var someNumber = 16
    
    deinit {
        print("MyClass will be dealocated")
    }
}

