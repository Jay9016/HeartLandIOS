//
//  Current_4_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/8/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit

class Current_4_ViewController: UIViewController {
    var recc : Int = 0
    var reccstr : String = ""
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var roseandbutterflyBtn: UIButton!
    @IBAction func BackButtonAction(_ sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    override func viewDidAppear(_ animated: Bool){
    
        if Constants.RoseAndButterFlyBtnSecandSheet == true{
            recc=1
            roseandbutterflyBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            roseandbutterflyBtn.isSelected = true
            
        }else{
            recc=0
            roseandbutterflyBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            roseandbutterflyBtn.isSelected = false
            
        }
    
    }
    
    @IBAction func reconnect(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            recc=1
            Constants.RoseAndButterFlyBtnSecandSheet = true
        }else{
            Constants.RoseAndButterFlyBtnSecandSheet = false
            recc=0
        }
    }
    @IBAction func next(_ sender: UIButton) {
        if(recc==1){
            reccstr = "Yes"
        }
        Constants.current4="\"step4\": {\n" +
            "      \"reconnect\": \""+reccstr+"\"\n" +
        "    },";
        performSegue(withIdentifier: "toForm5Current", sender: self)
    }
    
    @IBOutlet weak var NextBtn: UIButton!
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

    @IBAction func ReadTheStory(_ sender: Any) {
        
//        if let url = URL(string: "http://www.whyagain.org/index.php/en/images/PDF/TheRoseTheButterfly.pdf"), UIApplication.shared.canOpenURL(url) {
//            UIApplication.shared.open(url)
//        }
        
        if let url = URL(string: "http://www.whyagain.org/images/PDF/TheRoseTheButterfly.pdf"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func WatchVideo(_ sender: Any) {
        //https://www.youtube.com/watch?v=aOLqVshIM4w
        if let url = URL(string: "https://www.youtube.com/watch?v=aOLqVshIM4w"), UIApplication.shared.canOpenURL(url) {
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
extension Current_4_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Current_4_ViewController()
        return vc
    }
}
