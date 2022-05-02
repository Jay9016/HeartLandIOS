//
//  PersonalInfoViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/4/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit

class PersonalInfoViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var SheetName: UILabel!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var mobile: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var KnowMoreBtn: UIButton!
    var whichSheet : String = ""
    var textFieldAry : NSArray!
    var container : UIView!
    
   // @IBOutlet weak var PopupView: UIView!
    @IBOutlet weak var skip_Btn: UIButton!
    @IBAction func ToTheSheet(_ sender: UIButton) {
    
        self.ValidateTextFeilds()
        
    }
    
    func ValidateTextFeilds(){
        
        let Name : String = (name.text?.trimmingCharacters(in: CharacterSet.whitespaces))!
        let Email : String = (email.text?.trimmingCharacters(in: CharacterSet.whitespaces))!
        let Mobile : String = (mobile.text?.trimmingCharacters(in: CharacterSet.whitespaces))!

        if Name == "" {

            self.name.becomeFirstResponder()

            self.ShowAlert("Heartland Aramaic Forgiveness", AlertMessage: "Name is Required.", AlertTag: 1001)
            return
        }
        
        if Email == "" ||  self.isValidEmail(Email) != true{

            self.email.becomeFirstResponder()

            self.ShowAlert("Heartland Aramaic Forgiveness", AlertMessage: "Valid Email is Required.", AlertTag: 1001)
            return
        }
        
        if Mobile == "" {

            self.mobile.becomeFirstResponder()

            self.ShowAlert("Heartland Aramaic Forgiveness", AlertMessage: "Mobile number is Required.", AlertTag: 1001)
            return
        }
        
        if self.isValidPhone(phone: Mobile) != true {

            self.mobile.becomeFirstResponder()

            self.ShowAlert("Heartland Aramaic Forgiveness", AlertMessage: "Valid Mobile number is Required.", AlertTag: 1001)
            return
        }

              UserDefaults.standard.set(name.text, forKey: "Name")
              UserDefaults.standard.set(mobile.text, forKey: "mobile")
              UserDefaults.standard.set(email.text, forKey: "email")
              UserDefaults.standard.set(true, forKey: "IsInfoSave")

            Constants.name = name.text!
            Constants.email = email.text!
            Constants.mobile = mobile.text!

            if(whichSheet=="sheet1") {
                performSegue(withIdentifier: "toForm1Abbreviated", sender: self)
            } else {
                performSegue(withIdentifier: "toForm1_7Step", sender: self)
            }

        
        
//        if(whichSheet=="sheet1"){
//            performSegue(withIdentifier: "toForm1Abbreviated", sender: self)
//        }else{
//            performSegue(withIdentifier: "toForm1_7Step", sender: self)
//        }
        
    }
    
    func isValidPhone(phone: String) -> Bool {
     
        let PHONE_REGEX = "^[0-9'@s]{10,15}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: phone)
        return result
        
    }
    
    func isValidEmail(_ emailStr:String) -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        
        let emailCheck = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailCheck.evaluate(with: emailStr)
        return result
    }
    
    @IBAction func SaveToMailListButtonAction(_ sender: Any) {
        
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
           
            Constants.SaveList = "yes"
            print(Constants.SaveList)
            
        }else{
            
            Constants.SaveList = "no"
            print(Constants.SaveList)
        }
    }
    
    @IBAction func CloseButtonAction(_ sender: Any) {
        //self.PopupView.isHidden = true
        self.view.backgroundColor =  UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0)
    }
    
    @IBAction func PrivacyPolicyButtonAction(_ sender: Any) {
    
        if let url = URL(string: "https://whyagain.org/our-app-privacy-statement/"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }

        //        self.PopupView.isHidden = false
//        self.view.backgroundColor = UIColor.darkGray
//        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 3.0, options: UIViewAnimationOptions.curveEaseOut, animations: ({
//
//        }), completion: nil)
        
    }
    func ShowAlert(_ AlertTitle:String, AlertMessage:String, AlertTag:NSInteger) {
        
        // Initialize Alert Controller
        let alertController = UIAlertController(title: AlertTitle, message: AlertMessage, preferredStyle: .alert)
        
        // Initialize Actions
        let OkAction = UIAlertAction(title: "Ok", style: .default) { (action) -> Void in
            if AlertTag == 1002 {
                
            }
            
        }
        //Add Actions
        alertController.addAction(OkAction)
        
        // Move to the UI thread
        DispatchQueue.main.async(execute: { () -> Void in
            // Present Alert Controller
            self.present(alertController, animated: true, completion: nil)
        })
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(whichSheet)
        // Do any additional setup after loading the view.
    
        
//        let label: UILabel = UILabel(frame: CGRect(origin: .zero, size: CGSize(width: 200, height: 50)))
//        label.backgroundColor = UIColor.clear
//        label.numberOfLines = 2
//        label.font = UIFont.boldSystemFont(ofSize: 14)
//        label.textAlignment = .center
//        label.textColor = UIColor.white
//        label.text = "Heartland Aramaic Forgiveness\nwww.whyagain.org"
//        self.navigationItem.titleView = label
        
        let longTitleLabel = UILabel()
        longTitleLabel.backgroundColor = UIColor.clear
        longTitleLabel.numberOfLines = 2
        if UIDevice().userInterfaceIdiom == .phone {
            
            longTitleLabel.font = UIFont.boldSystemFont(ofSize: 16)
            
        }else{
            
            longTitleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        }
        longTitleLabel.textAlignment = .left
        longTitleLabel.textColor = UIColor.white
        longTitleLabel.text = "Heartland Aramaic Forgiveness\nwww.whyagain.org"
        longTitleLabel.sizeToFit()
        self.navigationItem.hidesBackButton = true
        
        let leftItem = UIBarButtonItem(customView: longTitleLabel)
        self.navigationItem.leftBarButtonItem = leftItem
        
//        self.PopupView.layer.masksToBounds = false
//        self.PopupView.layer.cornerRadius = 10
//        self.PopupView.layer.shadowColor = UIColor.black.cgColor
//        self.PopupView.layer.borderWidth = 1.0
//        self.PopupView.clipsToBounds = false
//        self.PopupView.isHidden = true
//        self.view.bringSubview(toFront: PopupView)
        
//        self.SheetName.layer.masksToBounds = false
//        self.SheetName.layer.cornerRadius = 10
//        self.SheetName.layer.shadowColor = UIColor.black.cgColor
//        self.SheetName.layer.borderWidth = 1.0
//        self.SheetName.clipsToBounds = false
        
        self.name.layer.masksToBounds = false
        self.name.layer.cornerRadius = 10
        self.name.layer.shadowColor = UIColor.black.cgColor
        self.name.layer.borderWidth = 1.0
        self.name.clipsToBounds = false
        
        self.mobile.layer.masksToBounds = false
        self.mobile.layer.cornerRadius = 10
        self.mobile.layer.shadowColor = UIColor.black.cgColor
        self.mobile.layer.borderWidth = 1.0
        self.mobile.clipsToBounds = false
        
        self.email.layer.masksToBounds = false
        self.email.layer.cornerRadius = 10
        self.email.layer.shadowColor = UIColor.black.cgColor
        self.email.layer.borderWidth = 1.0
        self.email.clipsToBounds = false
        
//        self.SheetName.layer.masksToBounds = false
//        self.SheetName.layer.cornerRadius = 10
//        self.SheetName.layer.shadowColor = UIColor.black.cgColor
//        self.SheetName.layer.borderWidth = 1.0
//        self.SheetName.clipsToBounds = false
        
        self.KnowMoreBtn.layer.masksToBounds = false
        self.KnowMoreBtn.layer.cornerRadius = 10
        self.KnowMoreBtn.layer.shadowColor = UIColor.black.cgColor
        self.KnowMoreBtn.layer.borderWidth = 1.0
        self.KnowMoreBtn.clipsToBounds = false
        
        self.skip_Btn.layer.masksToBounds = false
        self.skip_Btn.layer.cornerRadius = 10
        self.skip_Btn.layer.shadowColor = UIColor.black.cgColor
        self.skip_Btn.layer.borderWidth = 1.0
        self.skip_Btn.clipsToBounds = false
        
        name.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0);
        email.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0);
        mobile.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0);
        
        if(whichSheet=="sheet1"){
            SheetName.text="REALITY WAKE-UP SHEET ABBREVIATED"
        }else{
            SheetName.text="CURRENT 7-STEP WAKE-UP SHEET"
        }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)
        
        //self.SetFrames()
        
        if UIDevice().userInterfaceIdiom == .phone {
        
          self.addDoneButton()
            
        }
        
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.back(sender:)))
        newBackButton.setTitleTextAttributes([NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)], for: .normal)
        self.navigationItem.rightBarButtonItem = newBackButton
    }
    
    func addDoneButton() {
        let keyboardToolbar = UIToolbar()
        keyboardToolbar.sizeToFit()
        let flexBarButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                            target: nil, action: nil)
        let doneBarButton = UIBarButtonItem(barButtonSystemItem: .done,
                                            target: view, action: #selector(UIView.endEditing(_:)))
        keyboardToolbar.items = [flexBarButton, doneBarButton]
        mobile.inputAccessoryView = keyboardToolbar
    }
    
    @objc func back(sender: UIBarButtonItem) {
        
        
        for vc in self.navigationController!.viewControllers {
                    // Check if the view controller is of MyGroupViewController type
                    if let myGropupVC = vc as? ViewController {
                        self.navigationController?.popToViewController(myGropupVC, animated: true)
            }
        }
    }
    
    @IBAction func SkipButtonAction(_ sender: Any) {
        
        if(whichSheet=="sheet1"){
            
            performSegue(withIdentifier: "toForm1Abbreviated", sender: self)
            
        }else{
            
            performSegue(withIdentifier: "toForm1_7Step", sender: self)
        }
        
    }
    func SetFrames(){
        
        if UIDevice().userInterfaceIdiom == .phone {
            //[UIScreen mainScreen].bounds.size.height > 480.0f ? 200 : 100;
            if UIScreen.main.bounds.width == 375{
                
                self.SheetName.frame = CGRect(x: 17, y: 120, width: 335, height: 40)
                self.name.frame = CGRect(x: 17, y: 170, width: 335, height: 40)
                self.email.frame = CGRect(x: 37, y: 280, width: 300, height: 35)
                self.mobile.frame = CGRect(x: 15, y: 280, width: 30, height: 30)
                
                print("i am here")
            }
        }
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        // handling code
        self.view.endEditing(true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "toForm1Abbreviated"?:
            break
        default:
            break
        }
    }

//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        self.view.endEditing(true)
//        return false
//    }
//
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == name {
            name.resignFirstResponder()
            email.becomeFirstResponder()
        } else if textField == email {
            email.resignFirstResponder()
            mobile.becomeFirstResponder()
        } else if textField == mobile {
            mobile.resignFirstResponder()
            
        }
        return  true
    }
    
}
extension PersonalInfoViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = PersonalInfoViewController()
        return vc
    }
}
