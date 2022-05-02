//
//  Current_1_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/8/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit

var FSFFString : String = ""
var FSSFString : String = ""
var attention1 : String = ""

class Current_1_ViewController: UIViewController {
    var punish : Int = 0
    var cancel : Int = 0
    var first : Int = 0
    var secand : Int = 0
    var third : Int = 0
    var fourth : Int = 0
    var fifth : Int = 0
    var sixth : Int = 0
    var punish_str : String = ""
    var cancel_str : String = ""
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var upset_level: UITextField!
    @IBOutlet weak var full_name: UITextField!
    @IBOutlet weak var your_emotion: UITextField!
    @IBOutlet weak var object_attention_1: UITextField!
    @IBOutlet weak var object_attention_2: UITextField!
    @IBOutlet weak var thought: UITextView!
    @IBOutlet weak var punish_by: UITextField!
    @IBOutlet weak var self_by: UITextField!
    @IBOutlet weak var NextBtn: UIButton!
    
    @IBOutlet weak var FirstBtn: UIButton!
    @IBOutlet weak var SecandBtn: UIButton!
    @IBOutlet weak var ThirdBtn: UIButton!
    @IBOutlet weak var FourthBtn: UIButton!
    @IBOutlet weak var FifthBtn: UIButton!
    @IBOutlet weak var SixthBtn: UIButton!
    @IBOutlet weak var SeventhBtn: UIButton!
    @IBOutlet weak var useaseparateLbl: UILabel!
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var EightBtn: UIButton!
    @IBAction func BackButtonAction(_ sender: UIButton){
        
        for vc in self.navigationController!.viewControllers {
            // Check if the view controller is of MyGroupViewController type
            if let myGropupVC = vc as? ViewController {
                self.navigationController?.popToViewController(myGropupVC, animated: true)
            }
        }
        
    }
    var whichSheet : String = ""
    
    let textfieldDelegate = RDTextFieldDelegate()
    
   
    @objc func sayHello()
    {
        
        if let text = full_name.text, !text.isEmpty
        {
            FirstBtn.setTitle(full_name.text, for: .normal)
        }
        if let text = your_emotion.text, !text.isEmpty
        {
            SecandBtn.setTitle(your_emotion.text, for: .normal)
            FSSFString = your_emotion.text!
        }
        if let text = object_attention_1.text, !text.isEmpty
        {
            ThirdBtn.setTitle(object_attention_1.text, for: .normal)
            FSFFString = object_attention_1.text!
            attention1 = object_attention_1.text!
        }
        if let text = object_attention_2.text, !text.isEmpty
        {
            FourthBtn.setTitle(object_attention_2.text, for: .normal)
        }
        if let text = thought.text, !text.isEmpty
        {
            FifthBtn.setTitle(thought.text, for: .normal)
        }
        if let text = punish_by.text, !text.isEmpty
        {
            SixthBtn.setTitle(punish_by.text, for: .normal)
        }
       
    }
    
    override func viewDidAppear(_ animated: Bool){
        
        if Constants.FirstBtnFirstScreenSecandSheet == true{
            first = 1
            FirstBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            FirstBtn.isSelected = true
            
        }else{
            first = 0
            FirstBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            FirstBtn.isSelected = false
            
        }
        if Constants.SecandBtnFirstScreenSecandSheet == true{
            secand=1
            SecandBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            SecandBtn.isSelected = true
            
        }else{
            secand=0
            SecandBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            SecandBtn.isSelected = false
            
        }
        if Constants.ThirdBtnFirstScreenSecandSheet == true{
            third=1
            ThirdBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            ThirdBtn.isSelected = true
            
        }else{
            third=0
            ThirdBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            ThirdBtn.isSelected = false
            
        }
        if Constants.FourthBtnFirstScreenSecandSheet == true{
            fourth=1
            FourthBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            FourthBtn.isSelected = true
            
        }else{
            fourth=0
            FourthBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            FourthBtn.isSelected = false
            
        }
        
        if Constants.FifthBtnFirstScreenSecandSheet == true{
            fifth = 1
            FifthBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            FifthBtn.isSelected = true
            
        }else{
            fifth = 0
            FifthBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            FifthBtn.isSelected = false
            
        }
        if Constants.SixthtBtnFirstScreenSecandSheet == true{
            sixth=1
            SixthBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            SixthBtn.isSelected = true
            
        }else{
            sixth=0
            SixthBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            SixthBtn.isSelected = false
            
        }
        if Constants.SeventhBtnFirstScreenSecandSheet == true{
            cancel=1
            SeventhBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            SeventhBtn.isSelected = true
            
        }else{
            cancel=0
            SeventhBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            SeventhBtn.isSelected = false
            
        }
        if Constants.EightBtnFirstScreenSecandSheet == true{
            cancel=1
            EightBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            EightBtn.isSelected = true
            
        }else{
            cancel=0
            EightBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            EightBtn.isSelected = false
            
        }
    }
    
    @IBAction func punish_chk(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            punish=1
        }else{
            punish=0
        }
    }
    @IBAction func FirstButtonAction(_ sender: Any) {
        
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
            
            first=1
            Constants.FirstBtnFirstScreenSecandSheet = true
        }else{
            first=0
            Constants.FirstBtnFirstScreenSecandSheet = false
        }
    }
    @IBAction func SecandButtonAction(_ sender: Any) {
        
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
            
            secand=1
            Constants.SecandBtnFirstScreenSecandSheet = true
        }else{
            secand=0
            Constants.SecandBtnFirstScreenSecandSheet = false
        }
    }
    
    @IBAction func ThirdButtonAction(_ sender: Any) {
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
            
            third=1
            Constants.ThirdBtnFirstScreenSecandSheet = true
 
        }else{
            Constants.ThirdBtnFirstScreenSecandSheet = false
            third=0
        }
    }
    @IBAction func FourthButtonAction(_ sender: Any) {
        
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
            
            fourth=1
            Constants.FourthBtnFirstScreenSecandSheet = true
        }else{
            fourth=0
             Constants.FourthBtnFirstScreenSecandSheet = false
        }
        
    }
    @IBAction func FifthButtonAction(_ sender: Any) {
        
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
            
            fifth=1
            Constants.FifthBtnFirstScreenSecandSheet = true
        }else{
            fifth=0
            Constants.FifthBtnFirstScreenSecandSheet = false
        }
        
    }
    @IBAction func SixthButtonAction(_ sender: Any) {
        
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
            sixth=1
             Constants.SixthtBtnFirstScreenSecandSheet = true
        }else{
            sixth=0
             Constants.SixthtBtnFirstScreenSecandSheet = false
        }
    }
    
    @IBAction func NeedToBeRightButtonAction(_ sender: Any) {
        
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
            cancel=1
             Constants.SeventhBtnFirstScreenSecandSheet = true
        }else{
            cancel=0
             Constants.SeventhBtnFirstScreenSecandSheet = false
        }
        
    }
    @IBAction func cancel_chk(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            cancel=1
            Constants.EightBtnFirstScreenSecandSheet = true
        }else{
            cancel=0
            Constants.EightBtnFirstScreenSecandSheet = false
        }
    }
    @IBAction func next(_ sender: UIButton) {
        punish_str = ""
        cancel_str = ""
         punish_str = "I release and surrender,"
        if(punish==1){
            punish_str += "I release and surrender,"
        }
        if(first==1){
            punish_str += full_name.text!
        }
        if(secand==1){
            punish_str += your_emotion.text!
        }
        if(third==1){
            punish_str += object_attention_1.text!
        }
        if(fourth==1){
            punish_str += object_attention_2.text!
        }
        if(fifth==1){
            punish_str += thought.text!
        }
        if(sixth==1){
            punish_str += punish_by.text!
        }
        
        print(punish_str)
        
        if(cancel==1){
            cancel_str += "I cancel my need to be right and make up another story out of these brain cells – to hallucinate proof that my fear/hostility based story – my reality – is true!,"
        }
        Constants.current1 = "{\n\"api\": \"7step_wakeup\",\n\"api_key\" : \"2af47a6320643d19188530721b50702e\",\n\"request_data\":\n{\n\"name\": \"";
        Constants.current1 += Constants.name;
        Constants.current1 = Constants.current1 + "\",\n\"mobile_no\": \"";
        Constants.current1 += Constants.mobile
        Constants.current1 = Constants.current1 + "\",\n\"email_id\": \""
        Constants.current1 += Constants.email
        Constants.current1 = Constants.current1 + "\",\n\"save_to_mail_list\": \""
        Constants.current1 += Constants.SaveList
        Constants.current1 = Constants.current1 + "\",\n\t\t    \"upset_level\": \""
        Constants.current1 += upset_level.text! 
        Constants.current1 = Constants.current1 + "\",\n\"step1\":\n\t\t{\n\t\t    \"fullname\":\""
        Constants.current1 += full_name.text!
        Constants.current1 = Constants.current1 + "\",\t\t    \"your_emotion\": \""
        Constants.current1 += your_emotion.text!
        Constants.current1 = Constants.current1 + "\",\n\t\t    \"object_attention_1\": \""
        Constants.current1 += object_attention_1.text!
        Constants.current1 = Constants.current1 + "\",\n\t\t    \"object_attention_2\": \""
        Constants.current1 += object_attention_2.text!
        Constants.current1 = Constants.current1 + "\",\n\t\t    \"thought\": \""
        Constants.current1 += thought.text!
        Constants.current1 = Constants.current1 + "\",\n\t\t    \"punish_by\": \""
        Constants.current1 += punish_by.text!
        Constants.current1 = Constants.current1 + "\",\n\t\t    \"self_by\": \""
        Constants.current1 += self_by.text!
        Constants.current1 = Constants.current1 + "\",\n\t\t    \"punishment_checkbox\": \""
        Constants.current1 += punish_str
        Constants.current1 = Constants.current1 + "\",\n\t\t    \"cancel_checkbox\": \""+cancel_str+"\"\n\t\t},";
        performSegue(withIdentifier: "toForm2Current", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: Selector(("sayHello")), userInfo: nil, repeats: true)
        
        self.upset_level.layer.masksToBounds = false
        self.upset_level.layer.cornerRadius = 7
        self.upset_level.layer.shadowColor = UIColor.lightGray.cgColor
        self.upset_level.layer.borderWidth = 1.0
        self.upset_level.clipsToBounds = false
        
        self.your_emotion.layer.masksToBounds = false
        self.your_emotion.layer.cornerRadius = 7
        self.your_emotion.layer.shadowColor = UIColor.lightGray.cgColor
        self.your_emotion.layer.borderWidth = 1.0
        self.your_emotion.clipsToBounds = false
        
        self.full_name.layer.masksToBounds = false
        self.full_name.layer.cornerRadius = 7
        self.full_name.layer.shadowColor = UIColor.lightGray.cgColor
        self.full_name.layer.borderWidth = 1.0
        self.full_name.clipsToBounds = false
        
        self.object_attention_1.layer.masksToBounds = false
        self.object_attention_1.layer.cornerRadius = 7
        self.object_attention_1.layer.shadowColor = UIColor.lightGray.cgColor
        self.object_attention_1.layer.borderWidth = 1.0
        self.object_attention_1.clipsToBounds = false
        
        self.object_attention_2.layer.masksToBounds = false
        self.object_attention_2.layer.cornerRadius = 7
        self.object_attention_2.layer.shadowColor = UIColor.lightGray.cgColor
        self.object_attention_2.layer.borderWidth = 1.0
        self.object_attention_2.clipsToBounds = false
        
        self.thought.layer.masksToBounds = false
        self.thought.layer.cornerRadius = 7
        self.thought.layer.shadowColor = UIColor.lightGray.cgColor
        self.thought.layer.borderWidth = 1.0
        self.thought.clipsToBounds = false
        
        self.punish_by.layer.masksToBounds = false
        self.punish_by.layer.cornerRadius = 7
        self.punish_by.layer.shadowColor = UIColor.lightGray.cgColor
        self.punish_by.layer.borderWidth = 1.0
        self.punish_by.clipsToBounds = false
        
        self.self_by.layer.masksToBounds = false
        self.self_by.layer.cornerRadius = 7
        self.self_by.layer.shadowColor = UIColor.lightGray.cgColor
        self.self_by.layer.borderWidth = 1.0
        self.self_by.clipsToBounds = false
        
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
        
        
        //
        FirstBtn.titleLabel?.numberOfLines = 2;
        SecandBtn.titleLabel?.numberOfLines = 2;
        ThirdBtn.titleLabel?.numberOfLines = 2;
        FourthBtn.titleLabel?.numberOfLines = 2;
        FifthBtn.titleLabel?.numberOfLines = 2;
        SixthBtn.titleLabel?.numberOfLines = 2;
        
        FirstBtn.titleLabel?.adjustsFontSizeToFitWidth = true;
        SecandBtn.titleLabel?.adjustsFontSizeToFitWidth = true;
        ThirdBtn.titleLabel?.adjustsFontSizeToFitWidth = true;
        FourthBtn.titleLabel?.adjustsFontSizeToFitWidth = true;
        FifthBtn.titleLabel?.adjustsFontSizeToFitWidth = true;
        SixthBtn.titleLabel?.adjustsFontSizeToFitWidth = true;
        SeventhBtn.titleLabel?.adjustsFontSizeToFitWidth = true;
        EightBtn.titleLabel?.adjustsFontSizeToFitWidth = true;
        //FirstBtn.titleLabel?.lineBreakMode = NSLineBreakMode.byClipping; //<-- MAGIC LINE
        
        if UIDevice().userInterfaceIdiom == .phone {
            
            ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 1520)
        
        }else{

            if UIScreen.main.bounds.width == 1024{
                
                ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 1800)
           
            }else if UIScreen.main.bounds.width == 834{
                
                ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 1450)
                
            }else{
                
                ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 1350)
            }

        }
      
       // ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 1400)
        
        // Do any additional setup after loading the view.
        
        textfieldDelegate.initWithTextFields([self.upset_level,self.your_emotion, self.full_name,self.object_attention_1, self.object_attention_2,self.thought,self.punish_by,self.self_by], onView: self.view)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)
            
        if UIDevice().userInterfaceIdiom == .phone {
            //[UIScreen mainScreen].bounds.size.height > 480.0f ? 200 : 100;
            if UIScreen.main.bounds.width == 375{
                
                self.ScrollView.frame = CGRect(x: 0, y: 0, width:  UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
                
                print("i am here")
            }else{
                
                self.ScrollView.frame = CGRect(x: 0, y: 0, width:  UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
                
                print("i am here")
                
                
            }
        }else{
            
             self.ScrollView.frame = CGRect(x: 0, y: 0, width:  UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
            
        }
 
        self.navigationItem.hidesBackButton = true
//        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.back(sender:)))
//        self.navigationItem.leftBarButtonItem = newBackButton
        
        useaseparateLbl.isUserInteractionEnabled = true // Remember to do this
        let taplabel: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self, action: #selector(didTapLabelDemo))
        useaseparateLbl.addGestureRecognizer(taplabel)
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

    @objc func didTapLabelDemo(sender: UITapGestureRecognizer)
    {
        
        SetAlert(Title: "Heartland Aramaic Forgiveness", Message: "*CBM – Carbon Based Memory – a cumulative, inherited multi-generational database. A storage place for skills, hostility/fear & replicate corrupt data.\n\n*Replicate Mind – A function of brain cell’s replaying information/images/generational content – the root of all Why Again?! & disease experiences.\n\n*Sustained Incoherence – see David Bohm – Denial of responsibility for distasteful results while keeping up with the thinking that creates those results.\n\n*Fear/Hostility – toxic energies that compromise intelligence by drawing us away from our True Nature – an indicator of sustained incoherence. An infallible indicator of dissociation pointing to the corrupt data at the root (Aramaic “oota”) of the repeating patterns output from my replicate mind.\n\n            *Dissociation – Denial creates a hidden, separated, unchangeable (while denied) part of the mind referred to as the “unconscious,” “heart,” or “desert.”\n\n*Shbag,True Aramaic Forgiveness – Denial and refusal to be responsible for what happens in our lives leaves us stuck in blame, dissociation/projection and unable to change the replicate mind’s content. Shbag, translated as forgive, actually means “to cancel.” It is the keyway into and the tool that empowers correction and integrates dissociated states of mind. A daily mind cleaner, required if one chooses to live as Love & have serenity, well-being & longevity!\n\n*Rookha d’Koodsha – A feminine, elemental force in humans that breaks off the effect of errors and teaches truth. A force for that which is proper for humans, the denial of which leaves me in unforgiveness (- NOT unforgivable!) The “SuperProcessor” that can reach through and heal all generations.", View: self)
        
    }
    
    func showAlert(Title: String, Message: String) {
        
        let alert = UIAlertController(title: Title, message: Message, preferredStyle:
            UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    @objc func back(sender: UIBarButtonItem) {
        
        for vc in self.navigationController!.viewControllers {
            // Check if the view controller is of MyGroupViewController type
            if let myGropupVC = vc as? ViewController {
                self.navigationController?.popToViewController(myGropupVC, animated: true)
            }
        }
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
extension Current_1_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Current_1_ViewController()
        return vc
    }
}
