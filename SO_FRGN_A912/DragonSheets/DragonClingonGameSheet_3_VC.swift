//
//  DragonClingonGameSheet_3_VC.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 8/3/18.
//  Copyright © 2018 SpryoxMacMini. All rights reserved.
//

import UIKit
import AVFoundation

class DragonClingonGameSheet_3_VC: UIViewController {
    
    @IBOutlet weak var MainScrollView: UIScrollView!
    @IBOutlet weak var MainUiView: UIView!
//    @IBOutlet weak var stepnoLbl: UILabel!
//    @IBOutlet weak var quetionfirsttitleLbl: UILabel!
//    @IBOutlet weak var quetionSecandtitleLbl: UILabel!
//    @IBOutlet weak var SecandqaUIView: UIView!
//    @IBOutlet weak var SecandcheckboxBtn: UIButton!
//    @IBOutlet weak var SecandpointLbl: UILabel!
//    @IBOutlet weak var quetionthirdtitleLbl: UILabel!
//    @IBOutlet weak var thirdqaUIView: UIView!
//    @IBOutlet weak var thirdcheckboxBtn: UIButton!
//    @IBOutlet weak var thirdpointLbl: UILabel!
//    @IBOutlet weak var nextBtn: UIButton!
    
    
   
    
 
    @IBOutlet weak var pagetitleLbl: UILabel!
    @IBOutlet weak var quetion_G_Lbl: UILabel!
    @IBOutlet weak var answer_G_ResultUIView: UIView!
    @IBOutlet weak var answerfirstScoreUIView: UIView!
    @IBOutlet weak var answerfirstScoreLbl: UILabel!
    @IBOutlet weak var answerfirstPointlLbl: UILabel!
    @IBOutlet weak var answer_i_resultfirstLbl: UILabel!
    @IBOutlet weak var answer_i_resultSecandLbl: UILabel!
    @IBOutlet weak var answer_i_resultthirdLbl: UILabel!
    @IBOutlet weak var answer_i_resultfourthLbl: UILabel!
    @IBOutlet weak var answer_i_resultfifthLbl: UILabel!
    @IBOutlet weak var answer_i_resultSixthLbl: UILabel!
    @IBOutlet weak var answer_i_resultSevenLbl: UILabel!
    @IBOutlet weak var answer_i_resultEightLbl: UILabel!
    @IBOutlet weak var doneoutloudBtnfirst: UIButton!
    @IBOutlet weak var doneoutloudBtnSecand: UIButton!
    @IBOutlet weak var doneoutloudBtnThird: UIButton!
    @IBOutlet weak var doneoutloudBtnFourth: UIButton!
    @IBOutlet weak var doneoutloudBtnfifth: UIButton!
    @IBOutlet weak var doneoutloudBtnSixth: UIButton!
    @IBOutlet weak var doneoutloudBtnSeventh: UIButton!
    @IBOutlet weak var doneoutloudBtnEight: UIButton!
    @IBOutlet weak var quetionh_H_Lbl: UILabel!
    @IBOutlet weak var answer_h_firstTV: UITextView!
    @IBOutlet weak var answerSecandScoreUIView: UIView!
    @IBOutlet weak var answerSecandScoreLbl: UILabel!
    @IBOutlet weak var answerSecandPointlLbl: UILabel!
    
    @IBOutlet weak var doneoutLbl1: UILabel!
    @IBOutlet weak var doneoutLbl2: UILabel!
    @IBOutlet weak var doneoutLbl3: UILabel!
    @IBOutlet weak var doneoutLbl4: UILabel!
    @IBOutlet weak var doneoutLbl5: UILabel!
    @IBOutlet weak var doneoutLbl6: UILabel!
    @IBOutlet weak var doneoutLbl7: UILabel!
    @IBOutlet weak var doneoutLbl8: UILabel!
    
    @IBOutlet weak var quetionh_I_Lbl: UILabel!
    @IBOutlet weak var answer_h_SecandTV: UITextView!
    @IBOutlet weak var answerThirdScoreUIView: UIView!
    @IBOutlet weak var answerThirdScoreLbl: UILabel!
    @IBOutlet weak var answerThirdPointlLbl: UILabel!
    
    @IBOutlet weak var breathLbl: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var totalpointsLbl: UILabel!
    let textfieldDelegate = RDTextFieldDelegate()
    
    
    var timer3 : Timer?
    
    var PointCountFirst = 0
    var PointCountSecand = 0
    
    
    var PointButton1 = 0
    var PointButton2 = 0
    var PointButton3 = 0
    var PointButton4 = 0
    var PointButton5 = 0
    var PointButton6 = 0
    var PointButton7 = 0
    var PointButton8 = 0
    
    var TotalPointCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.title = "Dragon Clingon Game"
        
         textfieldDelegate.initWithTextFields([self.answer_h_firstTV,self.answer_h_SecandTV], onView: self.view)
//        if UIDevice().userInterfaceIdiom == .phone {
//
//            MainScrollView.contentSize = CGSize(width: 375, height: 950)
//            MainUiView.frame = CGRect(x: 0, y: 0, width:  375, height:  950)
//
//        }
//
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white,NSAttributedStringKey.font: UIFont(name: "HelveticaNeue-Bold", size: 15)!]
        
        self.title = "Drag-on & Cling-on Game"
        
        
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "back"), for: UIControlState.normal)
        button.addTarget(self, action:#selector(self.callMethod), for:.touchUpInside)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 30)
        button.tintColor = UIColor.white
        //CGRectMake(0, 0, 30, 30)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
        
        pagetitleLbl.adjustsFontSizeToFitWidth = true
        quetion_G_Lbl.adjustsFontSizeToFitWidth = true
        answerfirstScoreLbl.adjustsFontSizeToFitWidth = true
        answerfirstPointlLbl.adjustsFontSizeToFitWidth = true
        answerfirstPointlLbl.adjustsFontSizeToFitWidth = true
        
        answer_i_resultfirstLbl.adjustsFontSizeToFitWidth = true
        answer_i_resultSecandLbl.adjustsFontSizeToFitWidth = true
        answer_i_resultthirdLbl.adjustsFontSizeToFitWidth = true
        answer_i_resultfourthLbl.adjustsFontSizeToFitWidth = true
        
        answer_i_resultfifthLbl.adjustsFontSizeToFitWidth = true
        answer_i_resultSixthLbl.adjustsFontSizeToFitWidth = true
        answer_i_resultSevenLbl.adjustsFontSizeToFitWidth = true
        answer_i_resultEightLbl.adjustsFontSizeToFitWidth = true
        
        
        doneoutLbl1.adjustsFontSizeToFitWidth = true
        doneoutLbl2.adjustsFontSizeToFitWidth = true
        doneoutLbl3.adjustsFontSizeToFitWidth = true
        doneoutLbl4.adjustsFontSizeToFitWidth = true
        
        doneoutLbl5.adjustsFontSizeToFitWidth = true
        doneoutLbl6.adjustsFontSizeToFitWidth = true
        doneoutLbl7.adjustsFontSizeToFitWidth = true
        doneoutLbl8.adjustsFontSizeToFitWidth = true
        
        quetion_G_Lbl.adjustsFontSizeToFitWidth = true
        quetionh_I_Lbl.adjustsFontSizeToFitWidth = true
        totalpointsLbl.adjustsFontSizeToFitWidth = true
        
        
        if(UIDevice .current.userInterfaceIdiom == .phone) {
            
                
                MainScrollView.contentSize = CGSize(width: self.MainScrollView.bounds.width, height: 1150)
                MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  1150)
            
            
            
        } else {
            
            self.nextBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            MainScrollView.contentSize = CGSize(width:self.MainScrollView.bounds.width,height:1500)
            MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  1500)
            
        }
        
        
        //quetion_G_Lbl.setBorder()
        answer_G_ResultUIView.setBorder()
        answerfirstScoreUIView.setBorder()
        answer_i_resultfirstLbl.setBorder()
        answer_i_resultSecandLbl.setBorder()
        answer_i_resultthirdLbl.setBorder()
        answer_i_resultfourthLbl.setBorder()
        answer_i_resultfifthLbl.setBorder()
        answer_i_resultSixthLbl.setBorder()
        answer_i_resultSevenLbl.setBorder()
        answer_i_resultEightLbl.setBorder()
        doneoutloudBtnfirst.setBorder()
        doneoutloudBtnSecand.setBorder()
        doneoutloudBtnThird.setBorder()
        doneoutloudBtnFourth.setBorder()
        doneoutloudBtnfifth.setBorder()
        doneoutloudBtnSixth.setBorder()
        doneoutloudBtnSeventh.setBorder()
        doneoutloudBtnEight.setBorder()
       // quetionh_H_Lbl.setBorder()
        answer_h_firstTV.setBorder()
        answerSecandScoreUIView.setBorder()

       // quetionh_I_Lbl.setBorder()
        answer_h_SecandTV.setBorder()
        answerThirdScoreUIView.setBorder()
        nextBtn.setBorder()
    
        
        nextBtn.layer.borderWidth = 1.0
        nextBtn.layer.borderColor = UIColor.red.cgColor
        nextBtn.layer.masksToBounds = true
        nextBtn.layer.cornerRadius = 5
        nextBtn.layer.borderWidth = 1.0
        // Do any additional setup after loading the view.
        
        //textfieldDelegate.initWithTextFields([self.answerfirstTV,self.answerSecandTV, self.answerthirdTV], onView: self.view)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)

            
        quetionh_H_Lbl.text = " H. This event may be linked to earlier events in my life. Breathe & Remember! I recall when I was accused of ( " + DragonGame.page2TV1String + " " +
            DragonGame.page2TV2String + " " +
            DragonGame.page2TV3String + " " +
            DragonGame.page2TV4String  + " ). Who might have thought this (" + DragonGame.page2TV1String + " " +
            DragonGame.page2TV2String + " " +
            DragonGame.page2TV3String + " " +
            DragonGame.page2TV4String  + ") about me?"
        //  I. I recall when (E) was done to me. Who did this (E) to me?
        
        quetionh_I_Lbl.text = " I. I recall when ( " + DragonGame.page2TV5String + " " +
            DragonGame.page2TV6String + " " +
            DragonGame.page2TV7String + " " +
            DragonGame.page2TV8String  + " ) was done to me. Who did this (" + DragonGame.page2TV5String + " " +
            DragonGame.page2TV6String + " " +
            DragonGame.page2TV7String + " " +
            DragonGame.page2TV8String  + ") to me?"
        
        self.quetionh_H_Lbl.adjustsFontSizeToFitWidth = true
        self.quetionh_I_Lbl.adjustsFontSizeToFitWidth = true
        self.quetion_G_Lbl.adjustsFontSizeToFitWidth = true
        
        answer_i_resultfirstLbl.text =  DragonGame.page2TV1String
        answer_i_resultSecandLbl.text = DragonGame.page2TV2String
        answer_i_resultthirdLbl.text = DragonGame.page2TV3String
        answer_i_resultfourthLbl.text = DragonGame.page2TV4String
        answer_i_resultfifthLbl.text = DragonGame.page2TV5String
        answer_i_resultSixthLbl.text = DragonGame.page2TV6String
        answer_i_resultSevenLbl.text = DragonGame.page2TV7String
        answer_i_resultEightLbl.text = DragonGame.page2TV8String
        
        answer_i_resultfirstLbl.padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        answer_i_resultSecandLbl.padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        answer_i_resultthirdLbl.padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        answer_i_resultfourthLbl.padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        answer_i_resultfifthLbl.padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        answer_i_resultSixthLbl.padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        answer_i_resultSevenLbl.padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        answer_i_resultEightLbl.padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        
        if (answer_i_resultfirstLbl.text?.isEmpty)! {
            
            
            doneoutloudBtnfirst.isEnabled = false
            answer_i_resultfirstLbl.text =  "No thought listed"
           
        }
        
        if (answer_i_resultSecandLbl.text?.isEmpty)! {
            
            
            doneoutloudBtnSecand.isEnabled = false
            answer_i_resultSecandLbl.text = "No thought listed"
           
        }
        if (answer_i_resultthirdLbl.text?.isEmpty)! {
            
            
            doneoutloudBtnThird.isEnabled = false
            answer_i_resultthirdLbl.text = "No thought listed"
           
            
            
        }
        if (answer_i_resultfourthLbl.text?.isEmpty)! {
            
            
            doneoutloudBtnFourth.isEnabled = false
            answer_i_resultfourthLbl.text = "No thought listed"
            
            
        }
        
        if (answer_i_resultfifthLbl.text?.isEmpty)! {
            
            
            doneoutloudBtnfifth.isEnabled = false
            answer_i_resultfifthLbl.text = "No thought listed"
            
            
        }
        if (answer_i_resultSixthLbl.text?.isEmpty)! {
            
            
            doneoutloudBtnSixth.isEnabled = false
            answer_i_resultSixthLbl.text = "No thought listed"
           
            
        }
        if (answer_i_resultSevenLbl.text?.isEmpty)! {
            
            
            doneoutloudBtnSeventh.isEnabled = false
            answer_i_resultSevenLbl.text = "No thought listed"
           
            
        }
        if (answer_i_resultEightLbl.text?.isEmpty)! {
            
            
            doneoutloudBtnEight.isEnabled = false
            answer_i_resultEightLbl.text = "No thought listed"
            
        }
    }
    
    @objc func callMethod() {
        //do stuff here
        //self.navigationController?.popViewController(animated: true)
        self.ShowAlert("Warning", AlertMessage:"You will lose your answers \n are you sure you want to go back?", AlertTag: 1002)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {        // handling code
        
        self.view.endEditing(true)
        
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
            
            PointButton2 = 1
            
            self.alertSound()
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
            
            PointButton4 = 1
            
            self.alertSound()
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "uncheckbox") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointButton4 = 0
        }
        
    }
    
    @IBAction func DoneOutLoudButtonFifthAction(_ sender: Any) {
     
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "checkbox") {
                button.setBackgroundImage(image, for: .selected)
            }
            
            PointButton5 = 1
            
            self.alertSound()
            
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "uncheckbox") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointButton5 = 0
        }
        
    }
    
    @IBAction func DoneOutLoudButtonSixthAction(_ sender: Any) {
        
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "checkbox") {
                button.setBackgroundImage(image, for: .selected)
            }
            
            PointButton6 = 1
            
            self.alertSound()
            
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "uncheckbox") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointButton6 = 0
        }
        
    }
    
    @IBAction func DoneOutLoudButtonSeventhAction(_ sender: Any) {
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "checkbox") {
                button.setBackgroundImage(image, for: .selected)
            }
            
            PointButton7 = 1
            
            self.alertSound()
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "uncheckbox") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointButton7 = 0
        }
        
    }
    
    @IBAction func DoneOutLoudButtonEightAction(_ sender: Any) {
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "checkbox") {
                button.setBackgroundImage(image, for: .selected)
            }
            
            PointButton8 = 1
            
            self.alertSound()
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "uncheckbox") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointButton8 = 0
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if timer3 == nil {
            
            timer3 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(DragonClingonGameSheet_3_VC.sayHello), userInfo: nil, repeats: true)
            
        }
        
    }
    
    @objc func sayHello()
    {
        
        if let text = answer_h_firstTV.text, !text.isEmpty
        {
            PointCountFirst = 5
            
            
        }else{
            
            PointCountFirst = 0
            
        }
        
        if let text = answer_h_SecandTV.text, !text.isEmpty
        {
            
            PointCountSecand = 5
            
            
        }else{
            
            PointCountSecand = 0
            
        }
        
        let points1 =   DragonGame.Quetion_D_PointCount + DragonGame.Quetion_E_PointCount + PointButton1 + PointButton2 + PointButton3 + PointButton4 + PointButton5 + PointButton6 + PointButton7 + PointButton8
        
        
        print("points",points1)
        
        self.answerfirstPointlLbl.text =   "Points : " + String(points1)
        
        let points2 = PointCountFirst
        
        self.answerSecandPointlLbl.text =   "Points : " + String(points2)
        
        let points3 =  PointCountSecand
        
        self.answerThirdPointlLbl.text =   "Points : " + String(points3)
        
        DragonGame.Quetion_G_PointCount = PointButton1 + PointButton2 + PointButton3 + PointButton4 + PointButton5 + PointButton6 + PointButton7 + PointButton8
         
        DragonGame.Quetion_H_PointCount = points2
        
        DragonGame.Quetion_I_PointCount = points3
        
        //DragonGame.Quetion_F_PointCount = DragonGame.Quetion_C_PointCount + points3
        
        let TotalPoint = points1 + points2 +  points3
        
        self.totalpointsLbl.text = "Total points at page 3 : " + String(TotalPoint)
        
        //self.answerThirdPointlLbl.text =  "Points : " + String(DragonGame.Quetion_C_PointCount)
        
        DragonGame.page3PointString = TotalPoint
        
        
    }
    
    func stopTimerTest() {
        
        if timer3 != nil {
            timer3?.invalidate()
            timer3 = nil
        }
        
    }
    
    @IBAction func NextButtonAction(_ sender: Any) {
        
        
        print(DragonGame.page3PointString)
        
        self.stopTimerTest()
        
        DragonGame.page3TV1String = self.answer_h_firstTV.text
        DragonGame.page3TV2String = self.answer_h_SecandTV.text
        
        let DragonSheet1_VC: DragonClingonGameSheet_4_VC = self.storyboard?.instantiateViewController(withIdentifier: "DragonSheet4_VC") as! DragonClingonGameSheet_4_VC
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
