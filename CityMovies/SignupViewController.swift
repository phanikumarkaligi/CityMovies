//
//  SignupViewController.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 18/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController, UITextFieldDelegate {
    let kOFFSET_FOR_KEYBOARD : CGFloat = 80.0

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
          textField.resignFirstResponder()
        return true
    }
    
    // MARK: - Methods for view sliding up methods while keyborad appear
    
    func keyboardWillShow() {
        // Animate the current view out of the way
        if (self.view.frame.origin.y >= 0)
        {
            setViewMovedUp(true)
        }
        else if (self.view.frame.origin.y < 0)
        {
            setViewMovedUp(false)
        }
    }
    
    func keyboardWillHide() {
        if (self.view.frame.origin.y >= 0)
        {
            setViewMovedUp(true)
        }
        else if (self.view.frame.origin.y < 0)
        {
            setViewMovedUp(false)
        }
    }
    
    func textViewDidBeginEditing(textView: UITextView) {
        if  (self.view.frame.origin.y >= 0)
        {
            setViewMovedUp(true)
        }
        
    }
    
    func setViewMovedUp(movedUp : Bool)
    {
        
        UIView.beginAnimations(nil, context: nil)
        // if you want to slide up the view
        
        UIView.setAnimationDuration(0.3)
        
        var rect = self.view.frame;
        if (movedUp)
        {
            // 1. move the view's origin up so that the text field that will be hidden come above the keyboard
            // 2. increase the size of the view so that the area behind the keyboard is covered up.
            rect.origin.y -= kOFFSET_FOR_KEYBOARD;
            rect.size.height += kOFFSET_FOR_KEYBOARD;
        }
        else
        {
            // revert back to the normal state.
            rect.origin.y += kOFFSET_FOR_KEYBOARD;
            rect.size.height -= kOFFSET_FOR_KEYBOARD;
        }
        self.view.frame = rect;
        
        UIView.commitAnimations()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // register for keyboard notifications
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide", name: UIKeyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        // unregister for keyboard notifications while not visible.
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardWillHideNotification, object: nil)
    }
    

    
}
