//
//  ViewController.swift
//  prime or not
//
//  Created by admin on 06/06/17.
//  Copyright © 2017 vp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var output: UILabel!

    
    @IBOutlet weak var input: UITextField!

    override func didReceiveMemoryWarning() {
       
        super.didReceiveMemoryWarning()
       
    }

    @IBAction func check(_ sender: Any)
    {
    
        var number = Int(input.text!)!
        var isprime = true
        if number != 1
        {
            for i in 2..<number
            {
                if number % i == 0
                {
                    isprime=false
                }
            }
        }
        print(isprime)
        
        if isprime == true
        {
            output.text = "Prime"
             }
        else {
            output.text = "Not Prime"
        }
    }

}

