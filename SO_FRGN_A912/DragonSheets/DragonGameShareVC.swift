//
//  DragonGameShareVC.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 8/4/18.
//  Copyright © 2018 SpryoxMacMini. All rights reserved.
//

import UIKit

class DragonGameShareVC: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var lbl2: UILabel!
    
    @IBOutlet weak var lbl3: UILabel!
    
    @IBOutlet weak var lbl4: UILabel!
    
    @IBOutlet weak var lbl5: UILabel!
    
    @IBOutlet weak var lbl6: UILabel!
    
    @IBOutlet weak var lbl7: UILabel!
    
    @IBOutlet var firstUIView: UIView!
    @IBOutlet weak var secnadUIView: UIView!
    @IBOutlet weak var supportBtn: UIButton!
    @IBOutlet weak var homeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl1.adjustsFontSizeToFitWidth = true
        lbl2.adjustsFontSizeToFitWidth = true
        lbl3.adjustsFontSizeToFitWidth = true
        lbl4.adjustsFontSizeToFitWidth = true
        lbl5.adjustsFontSizeToFitWidth = true
        lbl6.adjustsFontSizeToFitWidth = true
        lbl7.adjustsFontSizeToFitWidth = true
        
        self.title = "Drag-on & Cling-on Game"
        
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "back"), for: UIControlState.normal)
        button.addTarget(self, action:#selector(self.callMethod), for:.touchUpInside)
        button.frame = CGRect.init(x: 0, y: 0, width: 25, height: 25)
        button.tintColor = UIColor.white
        //CGRectMake(0, 0, 30, 30)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
        
        firstUIView.layer.borderWidth = 1.0
        firstUIView.layer.borderColor = UIColor.white.cgColor
        firstUIView.layer.masksToBounds = true
        firstUIView.layer.cornerRadius = 5
        firstUIView.layer.borderWidth = 1.0
        
        secnadUIView.layer.borderWidth = 1.0
        secnadUIView.layer.borderColor = UIColor.white.cgColor
        secnadUIView.layer.masksToBounds = true
        secnadUIView.layer.cornerRadius = 5
        secnadUIView.layer.borderWidth = 1.0
        
        homeBtn.layer.borderWidth = 1.0
        homeBtn.layer.borderColor = UIColor.red.cgColor
        homeBtn.layer.masksToBounds = true
        homeBtn.layer.cornerRadius = 5
        homeBtn.layer.borderWidth = 1.0
        
        
        if(UIDevice .current.userInterfaceIdiom == .pad) {
            
            self.homeBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            
        }
        
        // Do any additional setup after loading the view.
    }

    @objc func callMethod() {
        //do stuff here
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func HomeButtonAction(_ sender: Any) {
        
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.tintColor = .white
        
        for vc in self.navigationController!.viewControllers {
            // Check if the view controller is of MyGroupViewController type
            if let myGropupVC = vc as? ViewController {
                self.navigationController?.popToViewController(myGropupVC, animated: true)
            }
        }
    }
    
    @IBAction func SupportButtonAction(_ sender: Any) {
        
        
        if let url = URL(string: "http://www.whyagain.org"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
