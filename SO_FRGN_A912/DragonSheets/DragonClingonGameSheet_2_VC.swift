//
//  DragonClingonGameSheet_2_VC.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 8/3/18.
//  Copyright © 2018 SpryoxMacMini. All rights reserved.
//

import UIKit
import AVFoundation
import KMPlaceholderTextView
class DragonClingonGameSheet_2_VC: UIViewController {

    @IBOutlet weak var MainScrollView: UIScrollView!
    @IBOutlet weak var MainUiView: UIView!
    @IBOutlet weak var BGImageView: UIImageView!
    
   
   
    @IBOutlet weak var pagetitleLbl: UILabel!
    @IBOutlet weak var quetion_D_Lbl: UILabel!
    @IBOutlet weak var answer_D_firstTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_D_SecandTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_D_thirdTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_D_fourthTV: KMPlaceholderTextView!
    @IBOutlet weak var answerfirstScoreUIView: UIView!
    @IBOutlet weak var answerfirstScoreLbl: UILabel!
    @IBOutlet weak var answerfirstPointlLbl: UILabel!
    
    @IBOutlet weak var quetion_E_Lbl: UILabel!
    @IBOutlet weak var answer_E_firstTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_E_SecandTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_E_thirdTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_E_fourthTV: KMPlaceholderTextView!
    @IBOutlet weak var answerSecandScoreUIView: UIView!
    @IBOutlet weak var answerSecandScoreLbl: UILabel!
    @IBOutlet weak var answerSecandPointlLbl: UILabel!
    
    @IBOutlet weak var quetion_F_Lbl: UILabel!
    @IBOutlet weak var answer_F_ResultUIView: UIView!
    
    @IBOutlet weak var answer_F_resultfirstLbl: UILabel!
    @IBOutlet weak var answer_F_resultSecandLbl: UILabel!
    @IBOutlet weak var answer_F_resultthirdLbl: UILabel!
    @IBOutlet weak var answer_F_resultfourthLbl: UILabel!
    
    @IBOutlet weak var doneoutloudBtnfirst: UIButton!
    @IBOutlet weak var doneoutloudBtnSecand: UIButton!
    @IBOutlet weak var doneoutloudBtnThird: UIButton!
    @IBOutlet weak var doneoutloudBtnFourth: UIButton!
    
    @IBOutlet weak var doneoutLbl1: UILabel!
    @IBOutlet weak var doneoutLbl2: UILabel!
    @IBOutlet weak var doneoutLbl3: UILabel!
    @IBOutlet weak var doneoutLbl4: UILabel!
    
    @IBOutlet weak var answerThirdScoreUIView: UIView!
    @IBOutlet weak var answerThirdScoreLbl: UILabel!
    @IBOutlet weak var answerThirdPointlLbl: UILabel!
    
    @IBOutlet weak var breathLbl: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var totalpointsLbl: UILabel!
    let textfieldDelegate = RDTextFieldDelegate()
    
    
    var timer2 : Timer?
    
    var PointCountFirst = 0
    var PointCountSecand = 0
    var PointCountThird = 0
    var PointCountFourth = 0
    var PointCountFifth = 0
    var PointCountSixtn = 0
    var PointCountSeventh = 0
    var PointCountEight = 0
    
    var PointButton1 = 0
    var PointButton2 = 0
    var PointButton3 = 0
    var PointButton4 = 0
    
    var TotalPointCount = 0
    
    var TotalPointsFor_D = 0
    
    var PointsFor_D_1 = 0
    var PointsFor_D_2 = 0
    var PointsFor_D_3 = 0
    var PointsFor_D_4 = 0
    var PointsFor_D_5 = 0
    var PointsFor_D_6 = 0
    var PointsFor_D_7 = 0
    var PointsFor_D_8 = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        answer_D_firstTV.placeholder = "enter your thought here"
        answer_D_SecandTV.placeholder = "enter your thought here"
        answer_D_thirdTV.placeholder = "enter your thought here"
        answer_D_fourthTV.placeholder = "enter your thought here"
        
        answer_E_firstTV.placeholder = "enter your punishing thought here"
        answer_E_SecandTV.placeholder = "enter your punishing thought here"
        answer_E_thirdTV.placeholder = "enter your punishing thought here"
        answer_E_fourthTV.placeholder = "enter your punishing thought here"
        
        answer_D_firstTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_D_SecandTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_D_thirdTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_D_fourthTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        
        answer_E_firstTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_E_SecandTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_E_thirdTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_E_fourthTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        
        
        
        pagetitleLbl.adjustsFontSizeToFitWidth = true
        quetion_D_Lbl.adjustsFontSizeToFitWidth = true
        answerfirstScoreLbl.adjustsFontSizeToFitWidth = true
        answerfirstPointlLbl.adjustsFontSizeToFitWidth = true
        quetion_E_Lbl.adjustsFontSizeToFitWidth = true
        answerSecandScoreLbl.adjustsFontSizeToFitWidth = true
        answerSecandPointlLbl.adjustsFontSizeToFitWidth = true
        quetion_F_Lbl.adjustsFontSizeToFitWidth = true
        answer_F_resultfirstLbl.adjustsFontSizeToFitWidth = true
        answer_F_resultSecandLbl.adjustsFontSizeToFitWidth = true
        answer_F_resultthirdLbl.adjustsFontSizeToFitWidth = true
        answer_F_resultfourthLbl.adjustsFontSizeToFitWidth = true
        answerThirdScoreLbl.adjustsFontSizeToFitWidth = true
        answerThirdPointlLbl.adjustsFontSizeToFitWidth = true
        answerThirdScoreLbl.adjustsFontSizeToFitWidth = true
        totalpointsLbl.adjustsFontSizeToFitWidth = true
        doneoutLbl1.adjustsFontSizeToFitWidth = true
        doneoutLbl2.adjustsFontSizeToFitWidth = true
        doneoutLbl3.adjustsFontSizeToFitWidth = true
        doneoutLbl4.adjustsFontSizeToFitWidth = true
        
        
        print(Constants.email)
        
        self.quetion_D_Lbl.adjustsFontSizeToFitWidth = true
       
        textfieldDelegate.initWithTextFields([self.answer_D_firstTV,self.answer_D_SecandTV, self.answer_D_thirdTV,self.answer_D_fourthTV,self.answer_E_firstTV,self.answer_E_SecandTV,self.answer_E_thirdTV,self.answer_E_fourthTV], onView: self.view)
        
//        self.title = "Dragon Clingon Game"
//
//        if UIDevice().userInterfaceIdiom == .phone {
//
//            MainScrollView.contentSize = CGSize(width: 375, height: 950)
//            MainUiView.frame = CGRect(x: 0, y: 0, width:  375, height:  950)
//
//        }
        
        if(UIDevice .current.userInterfaceIdiom == .phone) {
            
            MainScrollView.contentSize = CGSize(width: self.MainScrollView.bounds.width, height: 1150)
            MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  1150)
            
        } else {
            
            self.nextBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            MainScrollView.contentSize = CGSize(width:self.MainScrollView.bounds.width,height:1500)
            MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  1500)
            
        }
//        answerfirstTV.layer.borderWidth = 1.0
//        answerfirstTV.layer.borderColor = UIColor.white.cgColor
//        answerfirstTV.layer.masksToBounds = true
//        answerfirstTV.layer.cornerRadius = 5
//        answerfirstTV.layer.borderWidth = 1.0
//

        
        nextBtn.layer.borderWidth = 1.0
        nextBtn.layer.borderColor = UIColor.red.cgColor
        nextBtn.layer.masksToBounds = true
        nextBtn.layer.cornerRadius = 5
        nextBtn.layer.borderWidth = 1.0
        
        pagetitleLbl.setBorder()
       
        answer_D_firstTV.setBorder()
        answer_D_SecandTV.setBorder()
        answer_D_thirdTV.setBorder()
        answer_D_fourthTV.setBorder()
        answerfirstScoreUIView.setBorder()

        answer_E_firstTV.setBorder()
        answer_E_SecandTV.setBorder()
        answer_E_thirdTV.setBorder()
        answer_E_fourthTV.setBorder()
        answerSecandScoreUIView.setBorder()

        answer_F_ResultUIView.setBorder()
        
        answer_F_resultfirstLbl.setBorder()
        answer_F_resultSecandLbl.setBorder()
        answer_F_resultthirdLbl.setBorder()
        answer_F_resultfourthLbl.setBorder()
        
        answerThirdScoreUIView.setBorder()
        
        doneoutloudBtnfirst.setBorder()
        doneoutloudBtnSecand.setBorder()
        doneoutloudBtnThird.setBorder()
        doneoutloudBtnFourth.setBorder()
        // Do any additional setup after loading the view.
        
        //textfieldDelegate.initWithTextFields([self.answerfirstTV,self.answerSecandTV, self.answerthirdTV], onView: self.view)
        
        quetion_D_Lbl.text = " D. NAME THOSE “CLING-ONS”! List your thoughts, beliefs, or judgments about this situation or person (" + DragonGame.page1TV1String + "): (Really go for it! Say what you think!)"
        
        
        quetion_E_Lbl.text = " E. List your punishing thoughts about this situation or person (" + DragonGame.page1TV1String + "):(Like....what I’d like to do to them … be explicit!)"
        
        answer_F_resultfirstLbl.text = DragonGame.page1TV3String
        answer_F_resultSecandLbl.text = DragonGame.page1TV4String
        answer_F_resultthirdLbl.text = DragonGame.page1TV5String
        answer_F_resultfourthLbl.text = DragonGame.page1TV6String
        
        answer_F_resultfirstLbl.padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        answer_F_resultSecandLbl.padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        answer_F_resultthirdLbl.padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        answer_F_resultfourthLbl.padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)

        
        if (answer_F_resultfirstLbl.text?.isEmpty)! {
            
            
            self.answer_F_resultfirstLbl.text = "No thought listed"
            doneoutloudBtnfirst.isEnabled = false
           
        }
        
        if (answer_F_resultSecandLbl.text?.isEmpty)! {
            
            self.answer_F_resultSecandLbl.text = "No thought listed"
            doneoutloudBtnSecand.isEnabled = false
            
        }
        
        if (answer_F_resultthirdLbl.text?.isEmpty)! {
            
            
            self.answer_F_resultthirdLbl.text = "No thought listed"
            doneoutloudBtnThird.isEnabled = false
            
            
        }
        
        if (answer_F_resultfourthLbl.text?.isEmpty)! {
            
            self.answer_F_resultfourthLbl.text = "No thought listed"
            doneoutloudBtnFourth.isEnabled = false
            
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
        //self.navigationController?.popViewController(animated: true)
        self.ShowAlert("Warning", AlertMessage:"You will lose your answers \n are you sure you want to go back?", AlertTag: 1002)
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {        // handling code
        
        self.view.endEditing(true)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if timer2 == nil {
            
            timer2 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(DragonClingonGameSheet_2_VC.sayHello), userInfo: nil, repeats: true)
            
        }
        
    }
    
    @objc func sayHello()
    {
        
//        print("i am in timer secand")
//
//        print(PointButton1)
//        print(PointButton2)
//        print(PointButton3)
//        print(PointButton4)
        
        if let text = answer_D_firstTV.text, !text.isEmpty
        {
            PointCountFirst = 1
            PointsFor_D_1 = 1
            
            
        }else{
            
            PointCountFirst = 0
            PointsFor_D_1 = 0
            
        }
        
        if let text = answer_D_SecandTV.text, !text.isEmpty
        {
            
            PointCountSecand = 1
            PointsFor_D_2 = 1
            
        }else{
            
            PointCountSecand = 0
            PointsFor_D_2 = 0
            
        }
        
        if let text = answer_D_thirdTV.text, !text.isEmpty
        {
            
            PointsFor_D_3 = 1
            PointCountThird = 1
            
        }else{
            
            PointsFor_D_3 = 0
            PointCountThird = 0
            
        }
        if let text = answer_D_fourthTV.text, !text.isEmpty
        {
            
            
            PointsFor_D_4 = 1
            PointCountFourth = 1
            
        }else{
            
            PointsFor_D_4 = 0
            PointCountFourth = 0
            
        }
        if let text = answer_E_firstTV.text, !text.isEmpty
        {
            
            PointsFor_D_5 = 1
            PointCountFifth = 1
            
            
        }else{
            
            PointsFor_D_5 = 0
            PointCountFifth = 0
            
        }
        
        if let text = answer_E_SecandTV.text, !text.isEmpty
        {
            
            PointsFor_D_6 = 1
            PointCountSixtn = 1
            
            
        }else{
            
            PointsFor_D_6 = 0
            PointCountSixtn = 0
            
        }
        
        if let text = answer_E_thirdTV.text, !text.isEmpty
        {
            
            PointsFor_D_7 = 1
            PointCountSeventh = 1
            
        }else{
            
            PointsFor_D_7 = 0
            PointCountSeventh = 0
            
        }
        if let text = answer_E_fourthTV.text, !text.isEmpty
        {
            
            PointsFor_D_8 = 1
            PointCountEight = 1
            
        }else{
            
            PointsFor_D_8 = 0
            PointCountEight = 0
            
        }
        
        let points1 = PointCountFirst + PointCountSecand + PointCountThird + PointCountFourth
        
        self.answerfirstPointlLbl.text =   "Points : " + String(points1)
        
        let points2 =  PointCountFifth + PointCountSixtn + PointCountSeventh + PointCountEight
        
        self.answerSecandPointlLbl.text =   "Points : " + String(points2)
        
        let points3 =   DragonGame.Quetion_C_PointCount + PointButton1 + PointButton2 + PointButton3 + PointButton4
        
        self.answerThirdPointlLbl.text =   "Points : " + String(points3)
        
//        DragonGame.Quetion_D_PointCount = points1
//
//        DragonGame.Quetion_E_PointCount = points2
        
        DragonGame.Quetion_D_PointCount = PointsFor_D_1 + PointsFor_D_2 + PointsFor_D_3 + PointsFor_D_4
        
        DragonGame.Quetion_E_PointCount = PointsFor_D_5 + PointsFor_D_6 + PointsFor_D_7 + PointsFor_D_8
        
        DragonGame.Quetion_F_PointCount = DragonGame.Quetion_C_PointCount + points3
        
        let TotalPoint = points1 + points2 +  points3
        
        self.totalpointsLbl.text = "Total points at page 2 : " + String(TotalPoint)
        
        //self.answerThirdPointlLbl.text =  "Points : " + String(DragonGame.Quetion_C_PointCount)
        
        DragonGame.page2PointString = TotalPoint
    }
    
    
    @IBAction func DoneOutLoudButtonFirstAction(_ sender: Any) {
        
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "checkbox") {
                button.setBackgroundImage(image, for: .selected)
            }
            
            PointButton1 = 1
            
            self.alertSound()
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "uncheckbox") {
                button.setBackgroundImage(image, for: .normal)
            }
            PointButton1 = 0
        }
    }
    
    @IBAction func DoneOutLoudButtonSeacndAction(_ sender: Any) {
        
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "checkbox") {
                button.setBackgroundImage(image, for: .selected)
            }
            
            self.alertSound()
            
            PointButton2 = 1
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "uncheckbox") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointButton2 = 0
        }
    }
    
    @IBAction func DoneOutLoudButtonThirdAction(_ sender: Any) {
        
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "checkbox") {
                button.setBackgroundImage(image, for: .selected)
            }
            
            self.alertSound()
            
            PointButton3 = 1
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "uncheckbox") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointButton3 = 0
        }
        
    }
    
    @IBAction func DoneOutLoudButtonFourthAction(_ sender: Any) {
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "checkbox") {
                button.setBackgroundImage(image, for: .selected)
            }
            self.alertSound()
            
            PointButton4 = 1
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "uncheckbox") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointButton4 = 0
            
        }
        
    }
    
    var audioPlayer:AVAudioPlayer!
    
    func alertSound() {
        
        let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "jingle-bells-sms", ofType: "mp3")!)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf:alertSound)
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }catch {
            //print("Error getting the audio file")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func stopTimerTest() {
        
        if timer2 != nil {
            timer2?.invalidate()
            timer2 = nil
        }
        
    }
    
    @IBAction func NextButtonAction(_ sender: Any) {
        

        self.stopTimerTest()
        
        DragonGame.page2TV1String = self.answer_D_firstTV.text
        DragonGame.page2TV2String = self.answer_D_SecandTV.text
        DragonGame.page2TV3String = self.answer_D_thirdTV.text
        DragonGame.page2TV4String = self.answer_D_fourthTV.text
        DragonGame.page2TV5String = self.answer_E_firstTV.text
        DragonGame.page2TV6String = self.answer_E_SecandTV.text
        DragonGame.page2TV7String = self.answer_E_thirdTV.text
        DragonGame.page2TV8String = self.answer_E_fourthTV.text
        
        print(DragonGame.Quetion_D_PointCount)
        
        let DragonSheet1_VC: DragonClingonGameSheet_3_VC = self.storyboard?.instantiateViewController(withIdentifier: "DragonSheet3_VC") as! DragonClingonGameSheet_3_VC
        self.navigationController?.pushViewController(DragonSheet1_VC, animated: true)
        
    }
    func ShowAlert(_ AlertTitle:String, AlertMessage:String, AlertTag:NSInteger) {
        
        // Initialize Alert Controller
        let alertController = UIAlertController(title: AlertTitle, message: AlertMessage, preferredStyle: .alert)
        
        // Initialize Actions
        let OkAction = UIAlertAction(title: "Yes", style: .default) { (action) -> Void in
            
            
            self.navigationController?.popViewController(animated: true)
            
            
        }
        
        let cancelAction = UIAlertAction(title: "No", style: .default, handler: {
            (action : UIAlertAction!) -> Void in
            
            
        })
        alertController.addAction(cancelAction)
        //Add Actions
        alertController.addAction(OkAction)
        
        // Move to the UI thread
        DispatchQueue.main.async(execute: { () -> Void in
            // Present Alert Controller
            self.present(alertController, animated: true, completion: nil)
        })
        
    }
    
}

extension UIView
{
    
    func setBorder(borderWidth:CGFloat = 1.0, borderColor:UIColor = .white,cornerradius:CGFloat = 5.0){
    
         self.layer.borderWidth = borderWidth
         self.layer.borderColor = borderColor.cgColor
         self.layer.cornerRadius = cornerradius
        
    }
    
    func roundViews(borderWidth:CGFloat, borderColor:UIColor){
        
        self.layer.borderWidth = borderWidth
        self.layer.masksToBounds = false
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = self.frame.size.width/2
        self.clipsToBounds = true
        
    }
    
    func curveViews(cornerRadius:CGFloat, borderColor:UIColor = .clear){
        
        self.layer.borderWidth = 0.0
        self.layer.masksToBounds = false
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        
    }
    
    func setShadow(height:CGFloat = 1.0, color:UIColor = .black, opacity:Float = 0.5){
        
        self.layer.cornerRadius = 2
        self.layer.masksToBounds = false
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowOpacity = opacity
        self.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: self.frame.size.height,   width:  self.frame.size.width, height: height)).cgPath
        self.layer.shadowRadius = 1.0
        
    }
    
    func fill(_ color:UIColor){
        
        self.backgroundColor = color
        
    }
    
}

extension UILabel {
    private struct AssociatedKeys {
        static var padding = UIEdgeInsets()
    }
    
    public var padding: UIEdgeInsets? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.padding) as? UIEdgeInsets
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.padding, newValue as UIEdgeInsets!, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    override open func draw(_ rect: CGRect) {
        if let insets = padding {
            self.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
        } else {
            self.drawText(in: rect)
        }
    }
    
    override open var intrinsicContentSize: CGSize {
        guard let text = self.text else { return super.intrinsicContentSize }
        
        var contentSize = super.intrinsicContentSize
        var textWidth: CGFloat = frame.size.width
        var insetsHeight: CGFloat = 0.0
        
        if let insets = padding {
            textWidth -= insets.left + insets.right
            insetsHeight += insets.top + insets.bottom
        }
        
        let newSize = text.boundingRect(with: CGSize(width: textWidth, height: CGFloat.greatestFiniteMagnitude),
                                        options: NSStringDrawingOptions.usesLineFragmentOrigin,
                                        attributes: [NSAttributedStringKey.font: self.font], context: nil)
        
        contentSize.height = ceil(newSize.size.height) + insetsHeight
        
        return contentSize
    }
}

