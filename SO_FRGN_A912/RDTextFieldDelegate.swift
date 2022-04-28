//  RDTextFieldDelegate.swift
//
//  Created by Renish Dadhaniya on 02/09/16.
//  Copyright © 2016 GlobeSyncTechnologies- Renish Dadhaniya. All rights reserved.
//


import UIKit
import Foundation

fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}

//import Cocoa

class RDTextFieldDelegate: NSObject, UITextFieldDelegate,UITextViewDelegate {
    
    let KEYBOARD_ANIMATION_DURATION = 0.3
    let MINIMUM_SCROLL_FRACTION = 0.2
    let MAXIMUM_SCROLL_FRACTION = 0.8
    let PORTRAIT_KEYBOARD_HEIGHT = 216
    let LANDSCAPE_KEYBOARD_HEIGHT = 162
    
    var container : UIView!
    var textFieldAry : NSArray!
    var hasNavigationBar : Bool!
    
    var didBeginEditingSelector : Selector!        // let didBeginEditingSelector;
    var didBeginEditingTarget : UIViewController!
    
    var didEndEditingSelector: Selector!           //  let didEndEditingSelector;
    var didEndEditingTarget : UIViewController!
    
    var animatedDistance : CGFloat!
 
    func setDidBeginEditingSelector(_ didBeginEditingSel:Selector, withTarget targetVC: UIViewController) {
        didBeginEditingSelector = didBeginEditingSel
        didBeginEditingTarget = targetVC
    }
    
    
    func setDidEndEditingSelector(_ didEndEditingSel:Selector, withTarget targetVC:UIViewController) {
        didEndEditingSelector = didEndEditingSel
        didEndEditingTarget = targetVC
    }
    
    
    func didBeginEditing(_ textFieldRect : CGRect){
        
        
        let navigationBarAdjustment : Int = (hasNavigationBar != nil ? 90 : 0)
    //    println("navigationBarAdjustment:\(navigationBarAdjustment)")
        
        let viewRect : CGRect = container.frame
        
        let midline : CGFloat! = textFieldRect.origin.y + 0.5 * textFieldRect.size.height
        let numerator : CGFloat! = midline - CGFloat(navigationBarAdjustment) - viewRect.origin.y - CGFloat(MINIMUM_SCROLL_FRACTION) * viewRect.size.height
        let denominator : CGFloat! = (CGFloat(MAXIMUM_SCROLL_FRACTION) - CGFloat(MINIMUM_SCROLL_FRACTION)) * viewRect.size.height
        var heightFraction : CGFloat! = numerator/denominator
        
        //Make sure the fraction is between 0 and 1.0
        if(heightFraction < 0.0){
            heightFraction = 0.0
        }else if(heightFraction > 1.0){
            heightFraction = 1.0
        }
        
        //Figure out how far to move the textfield based on the orientation of the device.
        let deviceOrientation : UIDeviceOrientation = UIDevice.current.orientation
        
        if(deviceOrientation == .portrait || deviceOrientation == .portraitUpsideDown){
            animatedDistance = floor(CGFloat(PORTRAIT_KEYBOARD_HEIGHT)*heightFraction)
        }else{
            animatedDistance = floor(CGFloat(LANDSCAPE_KEYBOARD_HEIGHT)*heightFraction)
        }
        
        //Get the frame and set the new position.
        var viewFrame : CGRect = container.frame
        viewFrame.origin.y -= animatedDistance
        
        //Begin the animation for sliding the text field.
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(KEYBOARD_ANIMATION_DURATION)
        //Set the actual frame of the textfield.
        container.frame = viewFrame
        UIView.commitAnimations()
    
        if didBeginEditingSelector != nil || didBeginEditingTarget != nil{
            Timer.scheduledTimer(timeInterval: 0, target: didBeginEditingTarget!, selector: didBeginEditingSelector!, userInfo: nil, repeats: false)
        }
        
    }
    
    
    func didEndEditing(){
    
        var viewFrame : CGRect = container.frame
        viewFrame.origin.y += animatedDistance
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(KEYBOARD_ANIMATION_DURATION)
        container.frame = viewFrame
        UIView.commitAnimations()
        animatedDistance = 0
        if didEndEditingSelector != nil || didEndEditingTarget != nil{
            Timer.scheduledTimer(timeInterval: 0, target: didEndEditingTarget!, selector: didEndEditingSelector!, userInfo: nil, repeats: false)
        }
    }
    
   func initWithTextFields(_ textFieldArray:NSArray, onView containerView:UIView) {

        self.textFieldAry = textFieldArray
        self.container = containerView
        
        for  textFieldObj in textFieldAry {
            let textField : UITextField? = textFieldObj as? UITextField
            textField?.delegate = self
        }
        
        for textViewObj in textFieldAry {
            let textView : UITextView? = textViewObj as? UITextView
            textView?.delegate = self
        }
        
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        let textFieldRect : CGRect = container.convert(textField.bounds, from: textField)
        self.didBeginEditing(textFieldRect)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.didEndEditing()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if(textField.tag == self.textFieldAry.count){
            textField.resignFirstResponder()
        }else{
            container.viewWithTag(textField.tag+1)?.becomeFirstResponder()
        }
        return  true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let newLength = textField.text!.count + string.count - range.length
        return (newLength > 250) ? false : true
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        let textFieldRect : CGRect = container.window!.convert(textView.bounds, from: textView)
        self.didBeginEditing(textFieldRect)
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        self.didEndEditing()
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
       
        if text == "\n"{
            
            if textView.tag == self.textFieldAry.count {
                textView.resignFirstResponder()
            }else{
                container.viewWithTag(textView.tag+1)?.becomeFirstResponder()
            }
            
            return false
        }
        return true
    }
    
    func canBecomeFirstResponder() -> Bool{
        return false
    }
    
}


//    convenience init(textFieldArray:NSArray, onView containerView:UIView) {
//
//        self.init()
//        self.textFieldAry = textFieldArray
//        self.container = containerView
//
//        for  textFieldObj in textFieldAry {
//            var textField : UITextField! = textFieldObj as! UITextField
//            textField.delegate = self
//        }
//
//        for textViewObj in textFieldAry {
//            var textView : UITextView! = textViewObj as! UITextView
//            textView.delegate = self
//        }
//
//    }
//



/*
- (id) initWithTextFields:(NSArray *)textFieldArray onView:(UIView *)containerView;
- (void) setDidBeginEditingSelector:(SEL)didBeginEditingSel withTarget:(UIViewController *)targetVC;
- (void) setDidEndEditingSelector:(SEL)didEndEditingSel withTarget:(UIViewController *)targetVC;
*/
