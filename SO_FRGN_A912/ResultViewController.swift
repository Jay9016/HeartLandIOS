//
//  ResultViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/12/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController,UITextViewDelegate {

    @IBOutlet weak var showresultBtn: UIButton!
    @IBOutlet weak var homeBtn: UIButton!
    @IBOutlet weak var exitBtn: UIButton!
    var PdfUrl:String = ""
    @IBOutlet weak var donateBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

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
        
        
        self.showresultBtn.layer.masksToBounds = false
        self.showresultBtn.layer.cornerRadius = 7
        self.showresultBtn.layer.shadowColor = UIColor.lightGray.cgColor
        self.showresultBtn.layer.borderWidth = 1.0
        self.showresultBtn.clipsToBounds = false

        self.homeBtn.layer.masksToBounds = false
        self.homeBtn.layer.cornerRadius = 7
        self.homeBtn.layer.shadowColor = UIColor.lightGray.cgColor
        self.homeBtn.layer.borderWidth = 1.0
        self.homeBtn.clipsToBounds = false

        self.exitBtn.layer.masksToBounds = false
        self.exitBtn.layer.cornerRadius = 7
        self.exitBtn.layer.shadowColor = UIColor.lightGray.cgColor
        self.exitBtn.layer.borderWidth = 1.0
        self.exitBtn.clipsToBounds = false

        let underlineAttribute = [NSAttributedStringKey.underlineStyle: NSUnderlineStyle.styleSingle.rawValue]
        let underlineAttributedString = NSAttributedString(string: "www.whyagain.org", attributes: underlineAttribute)
        self.donateBtn.titleLabel?.attributedText = underlineAttributedString
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func DonateButtonAction(_ sender: Any) {
        //http://whyagain.org/index.php/en/donate
        
        if let url = URL(string: "http://www.whyagain.org"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    @IBAction func ShowResultButtonAction(_ sender: Any) {
        
        print(self.PdfUrl)
        if let url = URL(string: self.PdfUrl), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        
    }
    
    @IBAction func HomeButtonAction(_ sender: Any) {
        
        for vc in self.navigationController!.viewControllers {
            // Check if the view controller is of MyGroupViewController type
            if let myGropupVC = vc as? ViewController {
                self.navigationController?.popToViewController(myGropupVC, animated: true)
            }
        }
        
    }
    
    @IBAction func ExitButtonAction(_ sender: Any) {

        exit(0)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func ResetButtons(){
        Constants.PhysicalFirstSheet = false;
        Constants.MentalFirstSheet = false;
        Constants.EmotipnalFirstSheet = false;
        
        // Screen Fourth
        Constants.YesIChooseFirstSheet = false;
        Constants.ToinclinemebtnFirstSheet = false;
        Constants.RestoremeBtnFirstSheet = false;
        Constants.AsistmeBtnFirstSheet = false;
        //Constants.HelpmeFirstSheet = false;
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension ResultViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = ResultViewController()
        return vc
    }
}
