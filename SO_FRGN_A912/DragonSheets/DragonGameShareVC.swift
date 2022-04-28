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
        
        let askButton = UIButton()
        askButton.frame.size = CGSize(width: self.view.frame.size.width * 0.3, height: 30)
        askButton.backgroundColor = UIColor(red: 237/255, green: 53/255, blue: 114/255, alpha: 1.0)
        askButton.setTitle(" Instant: Ask Question", for: .normal)
        askButton.setImage(UIImage(named: "ask_question"), for: .normal)
        askButton.setTitleColor(.white, for: .normal)
        askButton.addTarget(self, action: #selector(handleTapAskQuestion(_:)), for: .touchUpInside)
        askButton.layer.cornerRadius = 15
        
        let longTitleLabel = UILabel()
        longTitleLabel.backgroundColor = UIColor.clear
        longTitleLabel.numberOfLines = 2
        
        if UIDevice().userInterfaceIdiom == .phone {
            longTitleLabel.font = UIFont.boldSystemFont(ofSize: 16)
            askButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 9)
        }else{
            longTitleLabel.font = UIFont.boldSystemFont(ofSize: 18)
            askButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        }
        
        longTitleLabel.textAlignment = .left
        longTitleLabel.textColor = UIColor.white
        longTitleLabel.text = "Heartland Aramaic Forgiveness\nwww.whyagain.org"
        longTitleLabel.sizeToFit()
        longTitleLabel.isUserInteractionEnabled = true
        self.navigationItem.hidesBackButton = true
        let leftItem = UIBarButtonItem(customView: longTitleLabel)
        let rightItem = UIBarButtonItem(customView: askButton)
        self.navigationItem.leftBarButtonItem = leftItem
        self.navigationItem.rightBarButtonItem = rightItem
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTapURL(_:)))
        longTitleLabel.addGestureRecognizer(tap)
    }
    
    @objc func handleTapURL(_ sender: UITapGestureRecognizer? = nil) {
        // handling code
        guard let url = URL(string: "https://whyagain.org/") else { return }
        UIApplication.shared.open(url)
    }
    
    @objc func handleTapAskQuestion(_ sender: UIButton? = nil) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "GetInToushVC") as! GetInToushVC
        self.navigationController?.pushViewController(nextViewController, animated: true)
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
