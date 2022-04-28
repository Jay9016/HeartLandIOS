//
//  Abbriviated_5_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/6/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit

class Abbriviated_5_ViewController: UIViewController {
    var option1 : Int = 0
    var option2 : Int = 0
    var option3 : Int = 0
    var option4 : Int = 0
    var new_final : String = ""
    @IBOutlet weak var offerme: UITextField!
    @IBOutlet weak var rookhakoodshaLbl: UILabel!
    @IBOutlet weak var invitedname: UITextField!
    @IBOutlet weak var my_goal: UITextView!
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var NextBtn: UIButton!
    let textfieldDelegate = RDTextFieldDelegate()
    
    @IBOutlet weak var inorederLbl: UILabel!
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var toinclinemebtn: UIButton!
    @IBOutlet weak var restoremeBtn: UIButton!
    @IBOutlet weak var asistmeBtn: UIButton!
    @IBOutlet weak var helpmeBtn: UIButton!
    
    @IBAction func BackButtonAction(_ sender: UIButton){
        
       self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func next(_ sender: UIButton) {
        new_final = ""
        if(option1==1){
            new_final += "to incline me toward healing,"
        }
        if(option2==1){
            new_final += "restore me to my Original Nature, LOVE,"
        }
        if(option3==1){
            new_final += "assist me in keeping LOVE present,"
        }
        if(option4==1){
            new_final += "help me come into direct, conscious relationship with & remove the dissociated* /projected parts of my CBM,"
        }
        
        if new_final.isEmpty{
            
            new_final = ","
        }
        
        Constants.reality_wakeup5 =
            "\"step5\":\n" +
            "\t\t{\n" +
            "\t\t    \"my_goal\": \""+my_goal.text!+"\",\n" +
            "\t\t    \"invitedname\": \""+invitedname.text!+"\",\n" +
            "\t\t    \"invite\": \""+new_final.substring(to: new_final.index(before: new_final.endIndex))+"\"\n" +
        "\t\t},";

        performSegue(withIdentifier: "toForm6Abbreviated", sender: self)
    }
    
    override func viewDidAppear(_ animated: Bool){
        
        
        if Constants.ToinclinemebtnFirstSheet == true{
            option1 = 1
            toinclinemebtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            toinclinemebtn.isSelected = true
            
        }else{
            option1 = 0
            toinclinemebtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            toinclinemebtn.isSelected = false
            
        }
        if Constants.RestoremeBtnFirstSheet == true{
            option2=1
            restoremeBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            restoremeBtn.isSelected = true
            
        }else{
            option2=0
            restoremeBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            restoremeBtn.isSelected = false
            
        }
        if Constants.AsistmeBtnFirstSheet == true{
            option3=1
            asistmeBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            asistmeBtn.isSelected = true
            
        }else{
            option3=0
            asistmeBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            asistmeBtn.isSelected = false
            
        }
//        if Constants.HelpmeFirstSheet == true{
//            option4=1
//            helpmeBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
//            helpmeBtn.isSelected = true
//
//        }else{
//            option4=0
//            helpmeBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
//            helpmeBtn.isSelected = false
//
//        }
        
        
    }
    
    @IBAction func option4Tapped(_ sender: UIButton) {
//        sender.isSelected = !sender.isSelected
//        if(sender.isSelected){
//            option4=1
//            Constants.HelpmeFirstSheet = true
//        }else{
//            option4=0
//            Constants.HelpmeFirstSheet = false
//        }
        
        SetAlert(Title: "Heartland Aramaic Forgiveness", Message: "*CBM – Carbon Based Memory – The source of all hostility/fear, a cumulative generational data bank from the past.\n\n*Fear/Hostility – toxic energies that draw us away from our True Nature – always an indicator of hallucinations. They are infallible indicators of dissociation and point to the corrupt data at the root (in Aramaic “oota”) of the output of the mind.\n\n*True Forgiveness – Shbag – Translated as forgive, actually means “to cancel.” The tool that, in Aramaic, reconnects us directly with, corrects and integrates dissociated states of mind, previously seen only through projection and caused by denial and refusal to be responsible for what happens in our lives. A daily requirement if one chooses to achieve well-being and longevity\n\n*Rookha d’Koodsha – A feminine, elemental force in humans that breaks off the effect of errors and teaches us truth. A force for that which is proper for humans, the denial of which leaves us in unforgiveness (- not unforgivable!) The “SuperProcessor.”\n\n*Dissociation – A result of denial, a separated part of the mind often referred to as the “unconscious,” “heart,” or “desert.”", View: self)
        
    }
    @IBAction func option3Tapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            option3=1
            Constants.AsistmeBtnFirstSheet = true
        }else{
            option3=0
            Constants.AsistmeBtnFirstSheet = false
        }
    }
    @IBAction func option2Tapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            option2=1
            Constants.RestoremeBtnFirstSheet = true
        }else{
            option2=0
            Constants.RestoremeBtnFirstSheet = false
        }
    }
    @IBAction func option1Tapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            option1=1
            Constants.ToinclinemebtnFirstSheet = true
        }else{
            option1=0
            Constants.ToinclinemebtnFirstSheet = false
        }
    }
    @IBAction func PowerPointInfoBtn(_ sender: Any) {
        if let url = URL(string: "https://vimeo.com/127064719"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UIDevice().userInterfaceIdiom == .phone {
            //[UIScreen mainScreen].bounds.size.height > 480.0f ? 200 : 100;
            if UIScreen.main.bounds.width == 375{
                
                self.ScrollView.frame = CGRect(x: 0, y: 0, width:  UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
                
                print("i am here")
            }else{
                
                self.ScrollView.frame = CGRect(x: 0, y: 0, width:  UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
                
                print("i am here")
                
                
            }
        }
        
        self.invitedname.layer.masksToBounds = false
        self.invitedname.layer.cornerRadius = 7
        self.invitedname.layer.shadowColor = UIColor.lightGray.cgColor
        self.invitedname.layer.borderWidth = 1.0
        self.invitedname.clipsToBounds = false
        
        self.my_goal.layer.masksToBounds = false
        self.my_goal.layer.cornerRadius = 7
        self.my_goal.layer.shadowColor = UIColor.lightGray.cgColor
        self.my_goal.layer.borderWidth = 1.0
        self.my_goal.clipsToBounds = false
        
        self.offerme.layer.masksToBounds = false
        self.offerme.layer.cornerRadius = 7
        self.offerme.layer.shadowColor = UIColor.lightGray.cgColor
        self.offerme.layer.borderWidth = 1.0
        self.offerme.clipsToBounds = false
        
        
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
        
            ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 910)
            
        }else{
            
            ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 1230)
        }
        // Do any additional setup after loading the view.
        textfieldDelegate.initWithTextFields([self.invitedname,self.my_goal,self.offerme], onView: self.view)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)
       
        my_goal.text = FirstScreenString
        offerme.text = ScreenThirdString
        
        inorederLbl.isUserInteractionEnabled = true // Remember to do this
        let taplabel: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self, action: #selector(didTapLabelDemo))
        inorederLbl.addGestureRecognizer(taplabel)
        taplabel.delegate = (self as UIGestureRecognizerDelegate)
        
        rookhakoodshaLbl.isUserInteractionEnabled = true // Remember to do this
        let taplabel2: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self, action: #selector(didTapLabelDemo))
        rookhakoodshaLbl.addGestureRecognizer(taplabel2)
        taplabel2.delegate = (self as UIGestureRecognizerDelegate)
        
        let longTitleLabel = UILabel()
        longTitleLabel.backgroundColor = UIColor.clear
        longTitleLabel.numberOfLines = 2
        
        if UIDevice().userInterfaceIdiom == .phone {
            longTitleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        } else {
            longTitleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        }
        
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
    
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {        // handling code
        
        self.view.endEditing(true)
        
        
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
extension Abbriviated_6_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Abbriviated_6_ViewController()
        return vc
    }
}
