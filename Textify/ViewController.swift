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
//        // Do any additional setup after loading the view, typically from a nib.
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.keyboardWillShow), name: UIKeyboardWillShowNotification, object: nil)
//        
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.keyboardWillHide), name: UIKeyboardWillHideNotification, object: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardWillHideNotification, object: nil)
    }
    
//    func keyboardWillShow(notification:NSNotification) {
//        adjustingHeight(true, notification: notification)
//    }
//    
//    func keyboardWillHide(notification:NSNotification) {
//        adjustingHeight(false, notification: notification)
//    }
//    
//    func adjustingHeight(show:Bool, notification:NSNotification) {
//        var userInfo = notification.userInfo!
//        let keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).CGRectValue()
//        let animationDurarion = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSTimeInterval
//        let changeInHeight = (CGRectGetHeight(keyboardFrame) + 40) * (show ? 1 : -1)
//        UIView.animateWithDuration(animationDurarion, animations: { () -> Void in
//            if (self.bottomConstraint.constant) < changeInHeight && show {
//                self.bottomConstraintOriginalValue = self.bottomConstraint.constant
//                self.bottomConstraint.constant += (changeInHeight - self.bottomConstraint.constant)
//            } else {
//                
//            }
//            
//        })
//        
//    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldDidChange(textField: UITextField) {
        //code
    }

    @IBAction func textDidChanged(sender: UITextField) {
            self.largeLabel.text = self.text.text
            self.mediumLabel.text = self.text.text
            self.smallLabel.text = self.text.text
    }
}
