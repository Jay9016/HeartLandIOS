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
        
        self.titleView.frame.origin.y = 80
        self.myCommitmentView.frame.origin.y = self.GetYandHeight(passView: self.titleView)
        self.commitmenttomyselfView.frame.origin.y = self.GetYandHeight(passView: self.myCommitmentView)
        self.SomebodyView.frame.origin.y = self.GetYandHeight(passView: self.commitmenttomyselfView)
        self.PromisetomyselfView.frame.origin.y = self.GetYandHeight(passView: self.SomebodyView)
        self.PromisetoyouView.frame.origin.y = self.GetYandHeight(passView: self.PromisetomyselfView)
        
        let btnX = (self.view.frame.size.width - (self.view.frame.size.width * 0.42)) / 2
        let btnY = (self.view.frame.size.height - (hasBottomNotch ? 140 : 100))
        let askButton = UIButton(frame: CGRect(x: btnX, y: btnY, width: self.view.frame.size.width * 0.42, height: 30))
        askButton.backgroundColor = UIColor(red: 237/255, green: 53/255, blue: 114/255, alpha: 1.0)
        askButton.setTitle(" Instant: Ask Question", for: .normal)
        askButton.setImage(UIImage(named: "ask_question"), for: .normal)
        askButton.setTitleColor(.white, for: .normal)
        if UIDevice().userInterfaceIdiom == .phone {
            askButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 10)
        } else {
            askButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
            let btnX = (self.view.frame.size.width - (self.view.frame.size.width * 0.3)) / 2
            let btnY = self.view.frame.size.height - 150
            askButton.frame = CGRect(x: btnX, y: btnY, width: self.view.frame.size.width * 0.3, height: 50)
        }
        askButton.addTarget(self, action: #selector(handleTapAskQuestion(_:)), for: .touchUpInside)
        askButton.layer.cornerRadius = 25
        self.view.addSubview(askButton)
        
        let longTitleLabel = UILabel()
        longTitleLabel.backgroundColor = UIColor.clear
        longTitleLabel.numberOfLines = 2
        
        if UIDevice().userInterfaceIdiom == .phone {
            longTitleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        } else {
            longTitleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        }
        
        longTitleLabel.textAlignment = .left
        longTitleLabel.textColor = UIColor.white
        longTitleLabel.text = "Heartland Aramaic Forgiveness\nwww.whyagain.org"
        longTitleLabel.sizeToFit()
        longTitleLabel.isUserInteractionEnabled = true
        self.navigationItem.hidesBackButton = true
        let leftItem = UIBarButtonItem(customView: longTitleLabel)
        self.navigationItem.leftBarButtonItem = leftItem
        
        let tapURL = UITapGestureRecognizer(target: self, action: #selector(self.handleTapURL(_:)))
        longTitleLabel.addGestureRecognizer(tapURL)
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
        
        GotoWebView(url: "https://whyagain.org/mycommitment/")
    }
    
    @IBAction func commitmenttomyself(_ sender:UIButton) {
        
        GotoWebView(url: "https://whyagain.org/commitmenttomyself/")
    }
    
    @IBAction func somebody(_ sender:UIButton) {
        
        GotoWebView(url: "https://whyagain.org/child-s-commitments/")
    }
    
    @IBAction func promisetomyself(_ sender:UIButton) {
        
        GotoWebView(url: "https://whyagain.org/child-s-commitments/")
    }
    
    @IBAction func promisetoyou(_ sender:UIButton) {
        
        GotoWebView(url: "https://whyagain.org/child-s-commitments/")
    }
    
    func GotoWebView(url: String) {
        let storyboard = UIStoryboard(name: "Main_iPad", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "WebView") as! WebView
        WebURL = url
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
