//
//  ViewController.swift
//  GenieSonar
//
//  Created by Vivek Patel on 15/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
import UIKit

class SampleViewController: UIViewController {
    
    // Force unwrapping an optional variable (SonarQube will flag this)
    var userName: String? = "Nikita"
    
    // Unused variable (SonarQube will flag this)
    var unusedVariable: String = "This will cause an issue"
    
    // Poorly named function (SonarQube will flag this for poor naming)
    func DoSomeThing() {
        // Force unwrap causing potential crash
        print(userName!)
    }
    
    // Duplicate function (SonarQube will flag this for code duplication)
    func duplicateFunction() {
        print("This is duplicated")
    }
    
    func anotherDuplicateFunction() {
        print("This is duplicated")
    }
    
    // A method with high complexity (SonarQube may flag this for cyclomatic complexity)
    func complexMethod(value: Int) {
        if value > 0 {
            if value % 2 == 0 {
                if value > 100 {
                    print("Value is greater than 100")
                } else {
                    print("Value is even but not greater than 100")
                }
            } else {
                print("Value is odd")
            }
        } else {
            print("Value is not greater than 0")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Force unwrapping inside viewDidLoad (SonarQube will flag this)
        if let validUser = userName {
            print("User name is \(validUser)")
        } else {
            print(userName!)
        }
    }
}
