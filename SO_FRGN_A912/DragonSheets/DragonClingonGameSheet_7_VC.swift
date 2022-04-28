//
//  DragonClingonGameSheet_7_VC.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 8/3/18.
//  Copyright © 2018 SpryoxMacMini. All rights reserved.
//

import UIKit
import AVFoundation
import KMPlaceholderTextView
class DragonClingonGameSheet_7_VC: UIViewController {
    
    @IBOutlet weak var MainScrollView: UIScrollView!
    @IBOutlet weak var MainUiView: UIView!
    @IBOutlet weak var BGImageView: UIImageView!
    
    
    @IBOutlet weak var pagetitleLbl: UILabel!
    @IBOutlet weak var quetion_T_Lbl: UILabel!
    @IBOutlet weak var answer_T_firstTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_T_SecandTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_T_thirdTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_T_fourthTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_T_ScoreUIView: UIView!
    @IBOutlet weak var answer_T_ScoreLbl: UILabel!
    @IBOutlet weak var answer_T_PointlLbl: UILabel!
    
    @IBOutlet weak var quetion_U_Lbl: UILabel!
    @IBOutlet weak var answer_U_firstTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_U_SecandTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_U_thirdTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_U_fourthTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_U_ScoreUIView: UIView!
    @IBOutlet weak var answer_U_ScoreLbl: UILabel!
    @IBOutlet weak var answer_U_PointlLbl: UILabel!

    @IBOutlet weak var quetion_V_Lbl: UILabel!
    @IBOutlet weak var answer_V_firstTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_V_SecandTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_V_thirdTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_V_fourthTV: KMPlaceholderTextView!
    @IBOutlet weak var answer_V_ScoreUIView: UIView!
    @IBOutlet weak var answer_V_ScoreLbl: UILabel!
    @IBOutlet weak var answer_V_PointlLbl: UILabel!
    
    @IBOutlet weak var quetions_W_lbl: UILabel!
    @IBOutlet weak var quetion_W_boolean_UIview: UIView!
    @IBOutlet weak var quetioon_W_booleanBtn: UIButton!
    @IBOutlet weak var quetiuon_W_truefalseLbl: UILabel!
    
    @IBOutlet weak var quetion_W_answer_UIView: UIView!
    @IBOutlet weak var scorepointsLbl_W: UILabel!
    @IBOutlet weak var pointsLbl_W: UILabel!
    
    @IBOutlet weak var breathLbl: UILabel!
    @IBOutlet weak var totalpagepointsLbl: UILabel!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    let textfieldDelegate = RDTextFieldDelegate()
    
    
    var PointCountFirst = 0
    var PointCountSecand = 0
    var PointCountThird = 0
    var PointCountFourth = 0
    var PointCountFifth = 0
    var PointCountSixth = 0
    var PointCountSeventh = 0
    var PointCountEight = 0
    var PointCountNine = 0
    var PointCountTen = 0
    var PointCountEleven = 0
    var PointCountTwelth = 0
    
    var PointCountTherteen = 0
    
    
    var timer3 : Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answer_T_firstTV.placeholder = "Enter your new feeling here"
        answer_T_SecandTV.placeholder = "Enter your new feeling here"
        answer_T_thirdTV.placeholder = "Enter your new feeling here"
        answer_T_fourthTV.placeholder = "Enter your new feeling here"
        
        answer_U_firstTV.placeholder = "Enter your realization"
        answer_U_SecandTV.placeholder = "Enter your realization"
        answer_U_thirdTV.placeholder = "Enter your realization"
        answer_U_fourthTV.placeholder = "Enter your realization"
        
        answer_V_firstTV.placeholder = "Enter your decision"
        answer_V_SecandTV.placeholder = "Enter your decision"
        answer_V_thirdTV.placeholder = "Enter your decision"
        answer_V_fourthTV.placeholder = "Enter your decision"
        
        answer_T_firstTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_T_SecandTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_T_thirdTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_T_fourthTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        
        answer_U_firstTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_U_SecandTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_U_thirdTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_U_fourthTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        
        answer_V_firstTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_V_SecandTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_V_thirdTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answer_V_fourthTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        
        quetion_V_Lbl.adjustsFontSizeToFitWidth = true
        quetions_W_lbl.adjustsFontSizeToFitWidth = true
        quetion_U_Lbl.adjustsFontSizeToFitWidth = true
        quetion_T_Lbl.adjustsFontSizeToFitWidth = true
       
        totalpagepointsLbl.adjustsFontSizeToFitWidth = true
    textfieldDelegate.initWithTextFields([self.answer_T_firstTV,self.answer_T_SecandTV,self.answer_T_thirdTV,self.answer_T_fourthTV,self.answer_U_firstTV,self.answer_U_SecandTV,self.answer_U_thirdTV,self.answer_U_fourthTV,self.answer_V_firstTV,self.answer_V_SecandTV,self.answer_V_thirdTV,self.answer_V_fourthTV], onView: self.view)
        
        if(UIDevice .current.userInterfaceIdiom == .phone) {
            
            MainScrollView.contentSize = CGSize(width: self.MainScrollView.bounds.width, height: 1200)
            MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  1200)
            
        } else {
            
            self.nextBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            MainScrollView.contentSize = CGSize(width:self.MainScrollView.bounds.width,height:1500)
            MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  1500)
            
        }
       
        answer_T_firstTV.setBorder()
        answer_T_SecandTV.setBorder()
        answer_T_thirdTV.setBorder()
        answer_T_fourthTV.setBorder()
        answer_T_ScoreUIView.setBorder()
        answer_U_firstTV.setBorder()
        answer_U_SecandTV.setBorder()
        answer_U_thirdTV.setBorder()
        answer_U_fourthTV.setBorder()
        answer_U_ScoreUIView.setBorder()
        answer_V_firstTV.setBorder()
        answer_V_SecandTV.setBorder()
        answer_V_thirdTV.setBorder()
        answer_V_fourthTV.setBorder()
        answer_V_ScoreUIView.setBorder()
        quetion_W_boolean_UIview.setBorder()
        quetion_W_answer_UIView.setBorder()
        
        nextBtn.layer.borderWidth = 1.0
        nextBtn.layer.borderColor = UIColor.red.cgColor
        nextBtn.layer.masksToBounds = true
        nextBtn.layer.cornerRadius = 5
        nextBtn.layer.borderWidth = 1.0
        // Do any additional setup after loading the view.
        
        self.quetion_U_Lbl.text = "U. Now describe how you see the situation regarding " + DragonGame.page1TV2String
        
        self.quetion_V_Lbl.text = "V. And I now decide to create a new goal for myself and " +  DragonGame.page1TV1String
        
        let tapView = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tapView)
        
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
    
    @IBAction func Quetion_W_RadioButtonAction(_ sender: Any) {
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "largchecked") {
                button.setBackgroundImage(image, for: .selected)
            }
            
            PointCountTherteen = 10
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "largunchecked") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointCountTherteen = 0
            
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if timer3 == nil {
            
            timer3 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(DragonClingonGameSheet_3_VC.sayHello), userInfo: nil, repeats: true)
            
        }
    }
    
    @objc func sayHello()
    {
        
        if let text = answer_T_firstTV.text, !text.isEmpty
        {
            PointCountFirst = 5
        }else{
            
            PointCountFirst = 0
        }
        
        if let text = answer_T_SecandTV.text, !text.isEmpty
        {
            PointCountSecand = 5
        }else{
            
            PointCountSecand = 0
        }
        
        if let text = answer_T_thirdTV.text, !text.isEmpty
        {
            PointCountThird = 5
        }else{
            
            PointCountThird = 0
        }
        
        if let text = answer_T_fourthTV.text, !text.isEmpty
        {
            PointCountFourth = 5
        }else{
            
            PointCountFourth = 0
        }
        
        if let text = answer_U_firstTV.text, !text.isEmpty
        {
            PointCountFifth = 5
        }else{
            
            PointCountFifth = 0
        }
        
        if let text = answer_U_SecandTV.text, !text.isEmpty
        {
            PointCountSixth = 5
        }else{
            
            PointCountSixth = 0
        }
        
        if let text = answer_U_thirdTV.text, !text.isEmpty
        {
            PointCountSeventh = 5
        }else{
            
            PointCountSeventh = 0
        }
        
        if let text = answer_U_fourthTV.text, !text.isEmpty
        {
            PointCountEight = 5
            
        }else{
            
            PointCountEight = 0
            
        }
        
        if let text = answer_V_firstTV.text, !text.isEmpty
        {
            PointCountNine = 5
        }else{
            
            PointCountNine = 0
        }
        
        if let text = answer_V_SecandTV.text, !text.isEmpty
        {
            PointCountTen = 5
        }else{
            
            PointCountTen = 0
        }
        
        if let text = answer_V_thirdTV.text, !text.isEmpty
        {
            PointCountEleven = 5
        }else{
            
            PointCountEleven = 0
        }
        
        if let text = answer_V_fourthTV.text, !text.isEmpty
        {
            PointCountTwelth = 5
            
        }else{
            
            PointCountTwelth = 0
            
        }
        
        let points1 =   PointCountFirst + PointCountSecand + PointCountThird + PointCountFourth
        
        let points2 = PointCountFifth + PointCountSixth + PointCountSeventh + PointCountEight
        
        let points3 =  PointCountNine + PointCountTen + PointCountEleven + PointCountTwelth
        
        let points4 =  PointCountTherteen
        
        self.answer_T_PointlLbl.text =   "Points : " + String(points1)
        
        self.answer_U_PointlLbl.text =   "Points : " + String(points2)
        
        self.answer_V_PointlLbl.text =   "Points : " + String(points3)
        
        self.pointsLbl_W.text =   "Points : " + String(points4)
       
        let TotalPoint = points1 + points2 +  points3 + points4
        
        self.totalpagepointsLbl.text = "Total points at page 7 : " + String(TotalPoint)
        
        //self.answerThirdPointlLbl.text =  "Points : " + String(DragonGame.Quetion_C_PointCount)
        
        DragonGame.page7PointString = TotalPoint
    }
    
    func stopTimerTest() {
        
        if timer3 != nil {
            timer3?.invalidate()
            timer3 = nil
        }
        
    }
   
    @IBAction func NextButtonAction(_ sender: Any) {
        
        
        self.stopTimerTest()
        
        let DragonSheet1_VC: DragonClingonGameSheet_8_VC = self.storyboard?.instantiateViewController(withIdentifier: "DragonSheet8_VC") as! DragonClingonGameSheet_8_VC
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
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
