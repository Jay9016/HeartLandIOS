//
//  Abbriviated_1_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/4/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit
var FirstScreenString:String = ""

class Abbriviated_1_ViewController: UIViewController {

    @IBOutlet weak var punish: UITextView!
    @IBOutlet weak var thoughts: UITextView!
    @IBOutlet weak var feelings: UITextView!
    @IBOutlet weak var hapened: UITextView!
    @IBOutlet weak var your_attention: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var NextBtn: UIButton!
    @IBOutlet weak var whoiamLbl: UILabel!
    @IBOutlet weak var BackBtn: UIButton!
    @IBAction func BackButtonAction(_ sender: UIButton){
        
               // self.navigationController?.popViewController(animated: true)
        
        for vc in self.navigationController!.viewControllers {
                    // Check if the view controller is of MyGroupViewController type
            if let myGropupVC = vc as? ViewController {
                        self.navigationController?.popToViewController(myGropupVC, animated: true)
                }
            }
        
    }
    var whichSheet : String = ""
    
    @IBAction func next(_ sender: UIButton) {
        
        if let text = your_attention.text, !text.isEmpty
        {
            FirstScreenString = your_attention.text!
        }
        
        Constants.reality_wakeup1 = "{\n\"api\": \"reality_wakeup\",\n\"api_key\" : \"2af47a6320643d19188530721b50702e\",\n\"request_data\":\n{\n\"name\": \"";
        Constants.reality_wakeup1 += Constants.name;
        Constants.reality_wakeup1 = Constants.reality_wakeup1 + "\",\n\"mobile_no\": \"";
        Constants.reality_wakeup1 += Constants.mobile
        Constants.reality_wakeup1 = Constants.reality_wakeup1 + "\",\n\"email_id\": \""
        Constants.reality_wakeup1 += Constants.email
        Constants.reality_wakeup1 = Constants.reality_wakeup1 + "\",\n\"save_to_mail_list\": \""
        Constants.reality_wakeup1 += Constants.SaveList
        Constants.reality_wakeup1 = Constants.reality_wakeup1 + "\",\n\"step1\":\n\t\t{\n\t\t    \"fullname\":\""
        Constants.reality_wakeup1 += name.text!
        Constants.reality_wakeup1 = Constants.reality_wakeup1 + "\",\n\t\t    \"your_attention\": \""
        Constants.reality_wakeup1 += your_attention.text!
        Constants.reality_wakeup1 = Constants.reality_wakeup1 + "\",\n\t\t    \"hapened\": \""
        Constants.reality_wakeup1 += hapened.text!
        Constants.reality_wakeup1 = Constants.reality_wakeup1 + "\",\n\t\t    \"feelings\": \""
        Constants.reality_wakeup1 += feelings.text!
        Constants.reality_wakeup1 = Constants.reality_wakeup1 + "\",\n\t\t    \"thoughts\": \""
        Constants.reality_wakeup1 += thoughts.text!
        Constants.reality_wakeup1 = Constants.reality_wakeup1 + "\",\n\t\t    \"punish\": \""
        Constants.reality_wakeup1 += punish.text!
        Constants.reality_wakeup1 = Constants.reality_wakeup1 + "\"\n\t\t},";
        print(Constants.reality_wakeup1)
        performSegue(withIdentifier: "toForm2Abbreviated", sender: self)
        
    }
    @IBOutlet weak var MainScrollView: UIScrollView!
    @IBOutlet weak var ScrollView: UIScrollView!
    
    let textfieldDelegate = RDTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.punish.layer.masksToBounds = false
        self.punish.layer.cornerRadius = 7
        self.punish.layer.shadowColor = UIColor.lightGray.cgColor
        self.punish.layer.borderWidth = 1.0
        self.punish.clipsToBounds = false
        
        self.thoughts.layer.masksToBounds = false
        self.thoughts.layer.cornerRadius = 7
        self.thoughts.layer.shadowColor = UIColor.lightGray.cgColor
        self.thoughts.layer.borderWidth = 1.0
        self.thoughts.clipsToBounds = false
        
        self.feelings.layer.masksToBounds = false
        self.feelings.layer.cornerRadius = 7
        self.feelings.layer.shadowColor = UIColor.lightGray.cgColor
        self.feelings.layer.borderWidth = 1.0
        self.feelings.clipsToBounds = false
        
        self.hapened.layer.masksToBounds = false
        self.hapened.layer.cornerRadius = 7
        self.hapened.layer.shadowColor = UIColor.lightGray.cgColor
        self.hapened.layer.borderWidth = 1.0
        self.hapened.clipsToBounds = false
        
        self.your_attention.layer.masksToBounds = false
        self.your_attention.layer.cornerRadius = 7
        self.your_attention.layer.shadowColor = UIColor.lightGray.cgColor
        self.your_attention.layer.borderWidth = 1.0
        self.your_attention.clipsToBounds = false
        
        self.name.layer.masksToBounds = false
        self.name.layer.cornerRadius = 7
        self.name.layer.shadowColor = UIColor.lightGray.cgColor
        self.name.layer.borderWidth = 1.0
        self.name.clipsToBounds = false
        
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
        
        if UIDevice().userInterfaceIdiom == .phone {
        
            ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 1130)
        
        }else{
            
            if UIScreen.main.bounds.width == 1024{
                
                ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 1650)
                
            }else if UIScreen.main.bounds.width == 834{
                
                ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 1350)
                
            }else{
             
                ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 1250)
            }
            
            
        }
        // Do any additional setup after loading the view.
        
         textfieldDelegate.initWithTextFields([self.punish,self.thoughts, self.feelings,self.hapened, self.your_attention,self.name], onView: self.view)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)
 
        self.SetFrames()
        
        whoiamLbl.isUserInteractionEnabled = true // Remember to do this
        let taplabel: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self, action: #selector(didTapLabelDemo))
        whoiamLbl.addGestureRecognizer(taplabel)
        taplabel.delegate = (self as UIGestureRecognizerDelegate)
        
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
    
    @objc func didTapLabelDemo(sender: UITapGestureRecognizer)
    {
        SetAlert(Title: "Heartland Aramaic Forgiveness", Message: "*CBM – Carbon Based Memory – The source of all hostility/fear, a cumulative generational data bank from the past.\n\n*Fear/Hostility – toxic energies that draw us away from our True Nature – always an indicator of hallucinations. They are infallible indicators of dissociation and point to the corrupt data at the root (in Aramaic “oota”) of the output of the mind.\n\n*True Forgiveness – Shbag – Translated as forgive, actually means “to cancel.” The tool that, in Aramaic, reconnects us directly with, corrects and integrates dissociated states of mind, previously seen only through projection and caused by denial and refusal to be responsible for what happens in our lives. A daily requirement if one chooses to achieve well-being and longevity\n\n*Rookha d’Koodsha – A feminine, elemental force in humans that breaks off the effect of errors and teaches us truth. A force for that which is proper for humans, the denial of which leaves us in unforgiveness (- not unforgivable!) The “SuperProcessor.”\n\n*Dissociation – A result of denial, a separated part of the mind often referred to as the “unconscious,” “heart,” or “desert.”", View: self)
        
    }
    
    func showAlert(Title: String, Message: String) {
        
        let alert = UIAlertController(title: Title, message: Message, preferredStyle:
            UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func back(sender: UIBarButtonItem) {
        
//        for vc in self.navigationController!.viewControllers {
//            // Check if the view controller is of MyGroupViewController type
//            if let myGropupVC = vc as? ViewController {
//                self.navigationController?.popToViewController(myGropupVC, animated: true)
//            }
//        }
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {        // handling code
        
        self.view.endEditing(true)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
        self.view.endEditing(true)
        //self.MainScrollView.scrollsToTop = true
        
        
    }

    func SetFrames(){
        
        if UIDevice().userInterfaceIdiom == .phone {
            //[UIScreen mainScreen].bounds.size.height > 480.0f ? 200 : 100;
            if UIScreen.main.bounds.width == 375{
                
                self.MainScrollView.frame = CGRect(x: 0, y: 0, width:  UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
                
                print("i am here")
            }else{
                
                self.MainScrollView.frame = CGRect(x: 0, y: 0, width:  UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
                
                print("i am here")

                
            }
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
extension Abbriviated_1_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Abbriviated_1_ViewController()
        return vc
    }
}
