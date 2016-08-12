//
//  ViewController.swift
//  Textify
//
//  Created by Rohit Pal on 12/08/16.
//  Copyright © 2016 Rohit Pal. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var largeLabel: UILabel!
    @IBOutlet weak var mediumLabel: UILabel!
    @IBOutlet weak var smallLabel: UILabel!
    @IBOutlet weak var text: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    func textFieldDidChange(textField: UITextField) {
        //your code
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textDidChanged(sender: UITextField) {
        largeLabel.text = text.text
        mediumLabel.text = text.text
        smallLabel.text = text.text
        
    }
}

