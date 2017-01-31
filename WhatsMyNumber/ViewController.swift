//
//  ViewController.swift
//  WhatsMyNumber
//
//  Created by Ahmed T Khalil on 11/24/16.
//  Copyright © 2016 kalikans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var phoneNumber: UITextField!
    @IBAction func save(_ sender: Any) {
        UserDefaults.standard.set(phoneNumber.text,forKey:"number")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        
        if let number = numberObject as? String {
            phoneNumber.text = number
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

