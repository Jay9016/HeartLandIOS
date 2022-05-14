//
//  Abbriviated_4_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/6/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit

class Abbriviated_4_ViewController: UIViewController {
    var option : Int = 0
    @IBOutlet weak var NextBtn: UIButton!
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var yesyichooseBtn: UIButton!
    @IBAction func BackButtonAction(_ sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func next(_ sender: UIButton) {
        if(option == 0)
        {
            Constants.reality_wakeup4 =
                "\"step4\":\n" +
                "\t\t{\n" +
                "\t\t    \"reconnect\": \"No\"\n" +
            "\t\t},";
        }else{
        Constants.reality_wakeup4 =
            "\"step4\":\n" +
            "\t\t{\n" +
            "\t\t    \"reconnect\": \"Yes\"\n" +
        "\t\t},";
        }
        performSegue(withIdentifier: "toForm5Abbreviated", sender: self)
    }
    
    override func viewDidAppear(_ animated: Bool){
    
        
        if Constants.YesIChooseFirstSheet == true{
            option=1
            yesyichooseBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            yesyichooseBtn.isSelected = true
            
        }else{
            option=0
            yesyichooseBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            yesyichooseBtn.isSelected = false
            
        }
        
    }
    @IBAction func optionTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected)
        {
            option = 1
             Constants.YesIChooseFirstSheet = true
        }else{
            option = 0
             Constants.YesIChooseFirstSheet = false
        }
    }
    
    @IBAction func ReadTheFullStoryButtonAction(_ sender: Any) {
        if let url = URL(string: "http://www.whyagain.org/images/PDF/TheRoseTheButterfly.pdf"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.NextBtn.layer.masksToBounds = false
        self.NextBtn.layer.cornerRadius = 7
        self.NextBtn.layer.shadowColor = UIColor.lightGray.cgColor
        self.NextBtn.layer.borderWidth = 1.0
        self.NextBtn.clipsToBounds = false
        
        self.BackBtn.layer.masksToBounds = false
        self.BackBtn.layer.cornerRadius = 7
        self.BackBtn.layer.shadowColor = UIColor.lightGray.cgColor
        self.BackBtn.layer.borderWidth = 1.0
        self.BackBtn.clipsToBounds = false
        // Do any additional setup after loading the view.
        
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
        DispatchQueue.main.async {
            askButton.layer.cornerRadius = askButton.frame.height / 2
        }
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

}

extension Abbriviated_4_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Abbriviated_4_ViewController()
        return vc
    }
}
