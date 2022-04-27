//
//  Commitment.swift
//  SO_FRGN_A912
//
//  Created by Jigar Sojitra on 07/06/21.
//  Copyright © 2021 SpryoxMacMini. All rights reserved.
//

import UIKit

class Commitment: UIViewController {

    @IBOutlet weak var myCommitmentView: UIView!
    @IBOutlet weak var commitmenttomyselfView: UIView!
    @IBOutlet weak var SomebodyView: UIView!
    @IBOutlet weak var PromisetoyouView: UIView!
    @IBOutlet weak var PromisetomyselfView: UIView!
    @IBOutlet weak var titleView: UILabel!
    
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
        longTitleLabel.text = "HeartLand Aramaic Forgiveness"
        longTitleLabel.sizeToFit()
        self.navigationItem.hidesBackButton = true
        
        let leftItem = UIBarButtonItem(customView: longTitleLabel)
        self.navigationItem.leftBarButtonItem = leftItem
        
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.back(sender:)))
        newBackButton.setTitleTextAttributes([NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)], for: .normal)
        self.navigationItem.rightBarButtonItem = newBackButton
        
        self.titleView.frame.origin.y = 80
        self.myCommitmentView.frame.origin.y = self.GetYandHeight(passView: self.titleView)
        self.commitmenttomyselfView.frame.origin.y = self.GetYandHeight(passView: self.myCommitmentView)
        self.SomebodyView.frame.origin.y = self.GetYandHeight(passView: self.commitmenttomyselfView)
        self.PromisetomyselfView.frame.origin.y = self.GetYandHeight(passView: self.SomebodyView)
        self.PromisetoyouView.frame.origin.y = self.GetYandHeight(passView: self.PromisetomyselfView)
    }
    
    func GetYandHeight(passView:UIView)->CGFloat {
        
        var NewY : CGFloat = 0
        
        NewY = passView.frame.origin.y + passView.frame.size.height + 5
        
        return NewY
    }
    
    @objc func back(sender: UIBarButtonItem) {
        
        
        for vc in self.navigationController!.viewControllers {
            // Check if the view controller is of MyGroupViewController type
            if let myGropupVC = vc as? ViewController {
                self.navigationController?.popToViewController(myGropupVC, animated: true)
            }
        }
    }

    @IBAction func commitment(_ sender:UIButton) {
        if let url = URL(string: "https://whyagain.org/wp/wp-content/uploads/2012/06/My_Commitment_2017.pdf"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func commitmenttomyself(_ sender:UIButton) {
        if let url = URL(string: "https://whyagain.org/wp/wp-content/uploads/2012/06/First_Person_Commitment_2017.pdf"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func somebody(_ sender:UIButton) {
        if let url = URL(string: "https://whyagain.org/wp/wp-content/uploads/2012/06/I_AM_Sombody_2017.pdf"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func promisetomyself(_ sender:UIButton) {
        if let url = URL(string: "https://whyagain.org/wp/wp-content/uploads/2012/06/My_Promise_To_Myself_2017.pdf"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func promisetoyou(_ sender:UIButton) {
        if let url = URL(string: "https://whyagain.org/wp/wp-content/uploads/2012/06/My_Promise_To_You_2017.pdf"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}
