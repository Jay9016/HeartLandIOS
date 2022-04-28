//
//  Abbriviated_2_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/6/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit

class Abbriviated_2_ViewController: UIViewController {
    var phy : Int = 0
    var men : Int = 0
    var emo : Int = 0
    var new_final : String = ""
    @IBOutlet weak var phisicalBtn: UIButton!
    @IBOutlet weak var mentalBtn: UIButton!
    @IBOutlet weak var emotionalBtn: UIButton!
    @IBAction func next(_ sender: UIButton) {
        
        if(phy==1){
            new_final += "Physical,"
        }
        if(men==1){
            new_final += "Mental,"
        }
        if(emo==1){
            new_final += "Emotional,"
        }
        
        if new_final.isEmpty{
            new_final = ","
        }
        
        print("new_final",new_final)
        
        
        Constants.reality_wakeup2 = "\"step2\":\n\t\t{\n\t\t\"healingsymptoms\":\""+new_final.substring(to: new_final.index(before: new_final.endIndex))+"\"\n\t\t},";
        print(Constants.reality_wakeup1+Constants.reality_wakeup2)
        performSegue(withIdentifier: "toForm3Abbreviated", sender: self)
        
    }
    
    override func viewDidAppear(_ animated: Bool){
        
        if Constants.PhysicalFirstSheet == true{
            phy=1
            phisicalBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            phisicalBtn.isSelected = true
           
        }else{
            phy=0
            phisicalBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            phisicalBtn.isSelected = false
            
        }
        
        if Constants.EmotipnalFirstSheet == true{
            emo=1
            emotionalBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            emotionalBtn.isSelected = true
            
        }else{
            emo=0
            emotionalBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            emotionalBtn.isSelected = false
            
        }
        
        if Constants.MentalFirstSheet == true{
            men=1
            mentalBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            mentalBtn.isSelected = true
            
        }else{
            men=0
            mentalBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            mentalBtn.isSelected = false
            
        }
        
    }
    @IBAction func emotionalTapped(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            emo=1
            Constants.EmotipnalFirstSheet = true
        }else{
            emo=0
            Constants.EmotipnalFirstSheet = false
        }
    }
    @IBAction func mentalTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            men=1
            Constants.MentalFirstSheet = true
        }else{
            men=0
            Constants.MentalFirstSheet = false
        }
    }
    @IBAction func physicalTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            phy=1
            Constants.PhysicalFirstSheet = true
        }else{
            phy=0
            Constants.PhysicalFirstSheet = false
        }
    }
    @IBOutlet weak var NextBtn: UIButton!
    @IBOutlet weak var BackBtn: UIButton!
    @IBAction func BackButtonAction(_ sender: UIButton){
        
       self.navigationController?.popViewController(animated: true)
        
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
            askButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        }
        askButton.addTarget(self, action: #selector(handleTapAskQuestion(_:)), for: .touchUpInside)
        askButton.layer.cornerRadius = 15
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
extension Abbriviated_2_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Abbriviated_2_ViewController()
        return vc
    }
}
