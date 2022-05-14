//
//  Current_5_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/8/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//
//Love Conscious
//Active
//Present
//I now choose to collapse my mind's lies by willingly canceling my goal (driver) for  to
//By cancelling my goal my replicate mind's reality collapses and gives me direct contact with the denied and dissociated parts of my CBM,* which projects and blames others for its content.
//Help me open a direct, conscious relationship with & gently remove the denied, dissociated* & projected parts of my Carbon Based Memory
import UIKit

class Current_5_ViewController: UIViewController {
    var option1 : Int = 0
    var option2 : Int = 0
    var option3 : Int = 0
    var option4 : Int = 0
    var option5 : Int = 0
    var First1 : Int = 0
    var Secand2 : Int = 0
    var Love : Int = 0
    var Present : Int = 0
    var Active : Int = 0
    
    var new_final : String = ""//my_goal
    var my_goal : String = ""//my_goal
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBOutlet weak var FirstButton: UIButton!
    @IBOutlet weak var SecandButton: UIButton!
    @IBOutlet weak var ThirdButton: UIButton!
    @IBOutlet weak var loveButton: UIButton!
    @IBOutlet weak var ActiveButton: UIButton!
    @IBOutlet weak var PresentButton: UIButton!
    @IBOutlet weak var inclinemeBtn: UIButton!
    @IBOutlet weak var restoremeBtn: UIButton!
    @IBOutlet weak var tohealmy: UIButton!
    @IBOutlet weak var healmycapacutyBtn: UIButton!
    @IBOutlet weak var nowButton: UIButton!
    
    @IBOutlet weak var bycancellingLbl: UIButton!
    @IBOutlet weak var BackBtn: UIButton!
    
    @IBAction func BackButtonAction(_ sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
        
    }
    @IBAction func InformationButtonAction(_ sender: Any) {
        
        if let url = URL(string: "https://vimeo.com/127064719"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool){
        
        FirstButton.setTitle("When upset, my perception is built out of corrupt data. The thing that drives my mind to use that particular data is my goal for " + FSFFString  + " to " + thirdscreenstring, for: .selected)
        FirstButton.setTitle("When upset, my perception is built out of corrupt data. The thing that drives my mind to use that particular data is my goal for " + FSFFString  + " to " + thirdscreenstring, for: .normal)
        if Constants.FirstButtonFifthScreen == true{
            First1 = 1
            FirstButton.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            FirstButton.isSelected = true
            
        }else{
            First1 = 0
            FirstButton.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            FirstButton.isSelected = false
            
        }
        
        if Constants.SecandButtonFifthScreen == true{
            Secand2 = 1
            SecandButton.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            SecandButton.isSelected = true
            
        }else{
            Secand2 = 0
            SecandButton.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            SecandButton.isSelected = false
            
        }
        if Constants.loveButtonFifthScreen == true{
            Love = 1
            loveButton.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            loveButton.isSelected = true
            
        }else{
            Love = 0
            loveButton.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            loveButton.isSelected = false
            
        }
        if Constants.ActiveButtonFifthScreen == true{
            Active = 1
            ActiveButton.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            ActiveButton.isSelected = true
            
        }else{
            Active = 0
            ActiveButton.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            ActiveButton.isSelected = false
            
        }
        if Constants.PresentButtonFifthScreen == true{
            Present = 1
            PresentButton.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            PresentButton.isSelected = true
            
        }else{
            Present = 0
            PresentButton.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            PresentButton.isSelected = false
            
        }

        if Constants.inclinemeBtnFifthScreen == true{
            option1 = 1
            inclinemeBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            inclinemeBtn.isSelected = true
            
        }else{
            option1 = 0
            inclinemeBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            inclinemeBtn.isSelected = false
            
        }
        
        if Constants.restoremeBtnFifthScreen == true{
            option2 = 1
            restoremeBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            restoremeBtn.isSelected = true
            
        }else{
            option2 = 0
            restoremeBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            restoremeBtn.isSelected = false
            
        }
        if Constants.tohealmyFifthScreen == true{
            option3 = 1
            tohealmy.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            tohealmy.isSelected = true
            
        }else{
            option3 = 0
            tohealmy.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            tohealmy.isSelected = false
            
        }
        if Constants.healmycapacutyBtnFifthScreen == true{
            option4 = 1
            healmycapacutyBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            healmycapacutyBtn.isSelected = true
            
        }else{
            option4 = 0
            healmycapacutyBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            healmycapacutyBtn.isSelected = false
            
        }
    }
    @IBAction func FirstButtonAction(_ sender: Any) {
        
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
            
            First1 = 1
            Constants.FirstButtonFifthScreen = true
            
        }else{
            First1 = 0
            Constants.FirstButtonFifthScreen = false
          
        }
        
         FirstButton.setTitle("When upset, my perception is built out of corrupt data. The thing that drives my mind to use that particular data is my goal for " + FSFFString  + " to " + thirdscreenstring, for: .selected)
         SecandButton.setTitle("This perception a limiting, limited picture constructed from a max of 9 bits of data out of 10,000 brain cells firing", for: .selected)
    
    }
    @IBAction func SecandButtonAction(_ sender: Any) {
        
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
            
            Secand2 = 1
            Constants.SecandButtonFifthScreen = true
        }else{
            
            Secand2 = 0
            Constants.SecandButtonFifthScreen = false
        }
        
    }
    
    @IBAction func ThirdButtonAction(_ sender: Any) {
        
//        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
//        if((sender as! UIButton).isSelected){
//
//            Third3 = 1
//
//        }else{
//
//            Third3 = 0
//        }
        
    }
    @IBAction func LoveButtonAction(_ sender: Any) {
        
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
            
            Love = 1
            Constants.loveButtonFifthScreen = true
        }else{
            
            Love = 0
            Constants.loveButtonFifthScreen = false
        }
        
    }
    @IBAction func ActiveButtonAction(_ sender: Any) {
        
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
            
            Active = 1
            Constants.ActiveButtonFifthScreen = true
        }else{
            
            Active = 0
            Constants.ActiveButtonFifthScreen = false
        }
        
    }
    
    @IBAction func PresentButtonAction(_ sender: Any) {
        
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
            
            Present = 1
            Constants.PresentButtonFifthScreen = true
            
        }else{
            
            Present = 0
            Constants.PresentButtonFifthScreen = false
        }
        
    }
    
    @IBAction func NowButtonAction(_ sender: Any) {
        
//        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
//        if((sender as! UIButton).isSelected){
//
//
//        }else{
//
//        }
        
    }
    
    @IBAction func option5(_ sender: UIButton) {
//        sender.isSelected = !sender.isSelected
//        if(sender.isSelected){
//            option5=1
//        }else{
//            option5=0
//        }
        
        SetAlert(Title: "Heartland Aramaic Forgiveness", Message: "*CBM – Carbon Based Memory – a cumulative, inherited multi-generational database. A storage place for skills, hostility/fear & replicate corrupt data.\n\n*Replicate Mind – A function of brain cell’s replaying information/images/generational content – the root of all Why Again?! & disease experiences.\n\n*Sustained Incoherence – see David Bohm – Denial of responsibility for distasteful results while keeping up with the thinking that creates those results.\n\n*Fear/Hostility – toxic energies that compromise intelligence by drawing us away from our True Nature – an indicator of sustained incoherence. An infallible indicator of dissociation pointing to the corrupt data at the root (Aramaic “oota”) of the repeating patterns output from my replicate mind.\n\n            *Dissociation – Denial creates a hidden, separated, unchangeable (while denied) part of the mind referred to as the “unconscious,” “heart,” or “desert.”\n\n*Shbag,True Aramaic Forgiveness – Denial and refusal to be responsible for what happens in our lives leaves us stuck in blame, dissociation/projection and unable to change the replicate mind’s content. Shbag, translated as forgive, actually means “to cancel.” It is the keyway into and the tool that empowers correction and integrates dissociated states of mind. A daily mind cleaner, required if one chooses to live as Love & have serenity, well-being & longevity!\n\n*Rookha d’Koodsha – A feminine, elemental force in humans that breaks off the effect of errors and teaches truth. A force for that which is proper for humans, the denial of which leaves me in unforgiveness (- NOT unforgivable!) The “SuperProcessor” that can reach through and heal all generations.", View: self)
        
    }
    
    @IBAction func option4(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            option4=1
            Constants.healmycapacutyBtnFifthScreen = true
            
        }else{
            option4=0
            Constants.healmycapacutyBtnFifthScreen = false
        }
    }
    
    @IBAction func option3(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            option3=1
            Constants.tohealmyFifthScreen = true
            
        }else{
            option3=0
            Constants.tohealmyFifthScreen = false
        }
    }
    
    @IBAction func option2(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            option2=1
            Constants.restoremeBtnFifthScreen = true
        }else{
            option2=0
            Constants.restoremeBtnFifthScreen = true
        }
    }
    
    @IBAction func option1(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            option1=1
             Constants.inclinemeBtnFifthScreen = true
        }else{
            option1=0
            Constants.inclinemeBtnFifthScreen = false
        }
    }
    
    @IBAction func next(_ sender: UIButton) {
        new_final = ""
//        if(option5==1){
//            new_final += "Help me open a direct, conscious relationship with & gently remove the denied, dissociated* & projected parts of my Carbon Based Memory,"
//        }
        
//        String the_goal = ""+upset_str + perception_str +"</u>"+ by_canceling.getText() + " WhiIe holding <u style=\\\"color:#336699\\\">" + mygoal_str +"</u> "+ "I now choose to collapse my mind's lies by willingly canceling my goal (driver) for <u style=\\\"color:#336699\\\">"+ ValsinMemory.current7_1C+ " to "+ValsinMemory.goal2+"</u>";
        
         my_goal += "<u style=\\\"color:#336699\\\">"
        
        if(First1==1){
            my_goal += "When upset, my perception is built out of corrupt data. The thing that drives my mind to use that particular data is my goal for " + FSFFString  + " to " + thirdscreenstring + ","
        }
        if(Secand2==1){
            my_goal += "This perception a limiting, limited picture constructed from a max of 9 bits of data out of 10,000 brain cells firing."
        }
        
        my_goal += "</u>"
        
        my_goal += "By cancelling my goal my replicate mind's reality collapses and gives me direct contact with the denied and dissociated parts of my CBM,* which projects and blames others for its content. While holding "
        
        //my_goal += thirdscreenstring
        
        my_goal += "<u style=\\\"color:#336699\\\">"
        
        if(Love==1){
            my_goal += "Love Conscious,"
            //Active
            //Present"
        }
        if(Present==1){
            my_goal += "Present,"
        }
        if(Active==1){
            my_goal += "Active,"
        }
        
        my_goal += "</u>"
        
        my_goal += " I now choose to collapse my mind's lies by willingly canceling my goal (driver) for <u style=\\\"color:#336699\\\">" + FSFFString  + " to " + thirdscreenstring
        
        my_goal += "</u>"
        
        print("mygoal=",my_goal)
        
        if(option4==1){
            new_final += "& capacity to generate my emotion of " + FSSFString + ","
        }
        if(option3==1){
            new_final += "to heal my denial,"
        }
        if(option2==1){
            new_final = "restore me to my NEWBORN ESSENCE, LOVE,"
        }
        if(option1==1){
            new_final += "to incline me toward healing,"
        }
        
         new_final += "Help me open a direct, conscious relationship with & gently remove the denied, dissociated* & projected parts of my Carbon Based Memory,"
        
        if new_final.isEmpty{
            new_final = ","
        }
        
        Constants.current5="\"step5\": {\n" +
            "      \"my_goal\": \""+my_goal+"\",\n" +
            "      \"invitedname\": \""+invitedname.text!+"\",\n" +
            "      \"invite\": \""+new_final.substring(to: new_final.index(before: new_final.endIndex))+"\"\n" +
            "},";
        
        performSegue(withIdentifier: "toForm6Current", sender: self)
    }
    
    //@IBOutlet weak var my_goal: UITextView!
    @IBOutlet weak var invitedname: UITextField!
    let textfieldDelegate = RDTextFieldDelegate()
    @IBOutlet weak var NextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textfieldDelegate.initWithTextFields([self.invitedname], onView: self.view)
        
        self.invitedname.layer.masksToBounds = false
        self.invitedname.layer.cornerRadius = 7
        self.invitedname.layer.shadowColor = UIColor.lightGray.cgColor
        self.invitedname.layer.borderWidth = 1.0
        self.invitedname.clipsToBounds = false
        
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
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)
        
        if UIDevice().userInterfaceIdiom == .phone {
            
            ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 2050)
            
        }else{
            
            ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 1650)
        }
    
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
         healmycapacutyBtn.setTitle("and heal my capacity to generate " + FSSFString, for: .normal)
         healmycapacutyBtn.setTitle("and heal my capacity to generate " + FSSFString, for: .selected)
        
        
        FirstButton.setTitle("When upset, my perception is built out of corrupt data. The thing that drives my mind to use that particular data is my goal for " + FSFFString  + " to " + thirdscreenstring, for: .normal)
        SecandButton.setTitle("This perception a limiting, limited picture constructed from a max of 9 bits of data out of 10,000 brain cells firing", for: .selected)
         nowButton.setTitle("I now choose to collapse my mind's lies by willingly canceling my goal (driver) for " + FSFFString  + " to " + thirdscreenstring, for: .normal)
        // Do any additional setup after loading the view.
        
        bycancellingLbl.isUserInteractionEnabled = true // Remember to do this
        let taplabel: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self, action: #selector(didTapLabelDemo))
        bycancellingLbl.addGestureRecognizer(taplabel)
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
        SetAlert(Title: "Heartland Aramaic Forgiveness", Message: "*CBM – Carbon Based Memory – a cumulative, inherited multi-generational database. A storage place for skills, hostility/fear & replicate corrupt data.\n\n*Replicate Mind – A function of brain cell’s replaying information/images/generational content – the root of all Why Again?! & disease experiences.\n\n*Sustained Incoherence – see David Bohm – Denial of responsibility for distasteful results while keeping up with the thinking that creates those results.\n\n*Fear/Hostility – toxic energies that compromise intelligence by drawing us away from our True Nature – an indicator of sustained incoherence. An infallible indicator of dissociation pointing to the corrupt data at the root (Aramaic “oota”) of the repeating patterns output from my replicate mind.\n\n            *Dissociation – Denial creates a hidden, separated, unchangeable (while denied) part of the mind referred to as the “unconscious,” “heart,” or “desert.”\n\n*Shbag,True Aramaic Forgiveness – Denial and refusal to be responsible for what happens in our lives leaves us stuck in blame, dissociation/projection and unable to change the replicate mind’s content. Shbag, translated as forgive, actually means “to cancel.” It is the keyway into and the tool that empowers correction and integrates dissociated states of mind. A daily mind cleaner, required if one chooses to live as Love & have serenity, well-being & longevity!\n\n*Rookha d’Koodsha – A feminine, elemental force in humans that breaks off the effect of errors and teaches truth. A force for that which is proper for humans, the denial of which leaves me in unforgiveness (- NOT unforgivable!) The “SuperProcessor” that can reach through and heal all generations.", View: self)
        
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
extension Current_5_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Current_5_ViewController()
        return vc
    }
}
