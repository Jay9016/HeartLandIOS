//
//  DragonClingonGameSheet_6_VC.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 8/3/18.
//  Copyright © 2018 SpryoxMacMini. All rights reserved.
//

import UIKit
import AVFoundation
class DragonClingonGameSheet_6_VC: UIViewController {
    
    @IBOutlet weak var MainScrollView: UIScrollView!
    @IBOutlet weak var MainUiView: UIView!
    @IBOutlet weak var BGImageView: UIImageView!
   
    
    @IBOutlet weak var pagetitleLbl: UILabel!
    @IBOutlet weak var quetions_P_Lbl: UILabel!
    @IBOutlet weak var quetion_P_boolean_UIview: UIView!
    @IBOutlet weak var quetioon_P_booleanBtn: UIButton!
    @IBOutlet weak var quetiuon_P_truefalseLbl: UILabel!
    @IBOutlet weak var quetion_P_answer_UIView: UIView!
    @IBOutlet weak var scorepointsLbl_P: UILabel!
    @IBOutlet weak var pointsLbl_P: UILabel!
    
    
    @IBOutlet weak var quetions_Q1_lbl: UILabel!
    @IBOutlet weak var answer_Q1_Lbl: UITextView!
    @IBOutlet weak var quetions_Q2_lbl: UILabel!
    @IBOutlet weak var answer_Q2_Lbl: UITextView!
    
    @IBOutlet weak var quetion_Q_answer_UIView: UIView!
    @IBOutlet weak var scorepointsLbl_Q: UILabel!
    @IBOutlet weak var pointsLbl_Q: UILabel!
    
    
    @IBOutlet weak var quetions_R_lbl: UILabel!
    @IBOutlet weak var quetion_R_boolean_UIview: UIView!
    @IBOutlet weak var quetioon_R_booleanBtn: UIButton!
    @IBOutlet weak var quetiuon_R_truefalseLbl: UILabel!

    
    @IBOutlet weak var quetion_R_answer_UIView: UIView!
    @IBOutlet weak var scorepointsLbl_R: UILabel!
    @IBOutlet weak var pointsLbl_R: UILabel!
    
    
    
    @IBOutlet weak var quetions_S_lbl: UILabel!
    @IBOutlet weak var quetion_S_boolean_UIview: UIView!
    @IBOutlet weak var quetioon_S_booleanBtn: UIButton!
    @IBOutlet weak var quetiuon_S_truefalseLbl: UILabel!
    
    @IBOutlet weak var quetion_S_answer_UIView: UIView!
    @IBOutlet weak var scorepointsLbl_S: UILabel!
    @IBOutlet weak var pointsLbl_S: UILabel!
    
    @IBOutlet weak var breathLbl: UILabel!
    @IBOutlet weak var totalpagepointsLbl: UILabel!
    
    
    
    @IBOutlet weak var nextBtn: UIButton!
    
    let textfieldDelegate = RDTextFieldDelegate()
    
    
    var PointCountFirst = 0
    var PointCountSecand = 0
    var PointCountThird = 0
    var PointCountFourth = 0
    
    var timer3 : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quetions_P_Lbl.adjustsFontSizeToFitWidth = true
        quetions_Q1_lbl.adjustsFontSizeToFitWidth = true
        quetions_Q2_lbl.adjustsFontSizeToFitWidth = true
        quetions_R_lbl.adjustsFontSizeToFitWidth = true
        quetions_S_lbl.adjustsFontSizeToFitWidth = true
        totalpagepointsLbl.adjustsFontSizeToFitWidth = true
        
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
        
        //self.title = "Dragon Clingon Game"
        
        textfieldDelegate.initWithTextFields([self.answer_Q1_Lbl,self.answer_Q2_Lbl], onView: self.view)
        
//        if UIDevice().userInterfaceIdiom == .phone {
//
//            MainScrollView.contentSize = CGSize(width: 375, height: 950)
//            MainUiView.frame = CGRect(x: 0, y: 0, width:  375, height:  950)
//
//        }
        
        if(UIDevice .current.userInterfaceIdiom == .phone) {
            
            MainScrollView.contentSize = CGSize(width: self.MainScrollView.bounds.width, height: 1200)
            MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  1200)
            
        } else {
            
            self.nextBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            MainScrollView.contentSize = CGSize(width:self.MainScrollView.bounds.width,height:1500)
            MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  1500)
            
        }
        
        quetion_P_boolean_UIview.setBorder()
        quetion_P_answer_UIView.setBorder()
        answer_Q1_Lbl.setBorder()
        answer_Q2_Lbl.setBorder()
        quetion_Q_answer_UIView.setBorder()
        quetion_R_boolean_UIview.setBorder()
        quetion_R_answer_UIView.setBorder()
        quetion_S_boolean_UIview.setBorder()
        quetion_S_answer_UIView.setBorder()
        
        nextBtn.layer.borderWidth = 1.0
        nextBtn.layer.borderColor = UIColor.red.cgColor
        nextBtn.layer.masksToBounds = true
        nextBtn.layer.cornerRadius = 5
        nextBtn.layer.borderWidth = 1.0
        // Do any additional setup after loading the view.
        
        
        
        //textfieldDelegate.initWithTextFields([self.answerfirstTV,self.answerSecandTV, self.answerthirdTV,self.answerfourthTV], onView: self.view)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)
        
        self.quetions_P_Lbl.text =  "P. I cancel my demand for " + DragonGame.page4TV2String
        
        
        self.quetions_S_lbl.text = "S. I release my “clingons” (judgments) of you " + DragonGame.page1TV1String + " I see that you are responsible for your life, actions & feelings."
        
    }
    
    @objc func callMethod() {
        //do stuff here
        //self.navigationController?.popViewController(animated: true)
        self.ShowAlert("Warning", AlertMessage:"You will lose your answers \n are you sure you want to go back?", AlertTag: 1002)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {        // handling code
        
        self.view.endEditing(true)
        
    }
    
    
    @IBAction func Quetion_P_RadioButtonAction(_ sender: Any) {
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "largchecked") {
                button.setBackgroundImage(image, for: .selected)
            }
            
            PointCountFirst = 10
            
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "largunchecked") {
                button.setBackgroundImage(image, for: .normal)
            }
            
             PointCountFirst = 0
        }
        
    }
    
    @IBAction func Quetion_R_RadioButtonAction(_ sender: Any) {
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "largchecked") {
                button.setBackgroundImage(image, for: .selected)
            }
            
            PointCountThird = 5
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "largunchecked") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointCountThird = 0
        }
    }
    
    @IBAction func Quetion_S_RadioButtonAction(_ sender: Any) {
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "largchecked") {
                button.setBackgroundImage(image, for: .selected)
            }
            
            PointCountFourth = 5
            
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "largunchecked") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointCountFourth = 0
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if timer3 == nil {
            
            timer3 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(DragonClingonGameSheet_3_VC.sayHello), userInfo: nil, repeats: true)
            
        }
    }
    
    @objc func sayHello()
    {
        
        if let text = answer_Q1_Lbl.text, !text.isEmpty
        {
            PointCountSecand = 10
        }
        
        if let text = answer_Q2_Lbl.text, !text.isEmpty
        {
            PointCountSecand = 10
        }
        
        let points1 =   PointCountFirst
        
        let points2 = PointCountSecand
        
        let points3 =  PointCountThird
        
        let points4 =  PointCountFourth
        
        
        self.pointsLbl_P.text =   "Points : " + String(points1)
        
        self.pointsLbl_Q.text =   "Points : " + String(points2)
        
        self.pointsLbl_R.text =   "Points : " + String(points3)
        
        self.pointsLbl_S.text =   "Points : " + String(points4)
        
        let TotalPoint = points1 + points2 +  points3 + points4
        
        self.totalpagepointsLbl.text = "Total points at page 6 : " + String(TotalPoint)
        
        //self.answerThirdPointlLbl.text =  "Points : " + String(DragonGame.Quetion_C_PointCount)
        
        DragonGame.page6PointString = TotalPoint
    }
    
    func stopTimerTest() {
        
        if timer3 != nil {
            timer3?.invalidate()
            timer3 = nil
        }
        
    }
    
 
    @IBAction func NextButtonAction(_ sender: Any) {
        
        
        self.stopTimerTest()
        
        DragonGame.page6TV1String = self.answer_Q1_Lbl.text
        
        DragonGame.page6TV2String = self.answer_Q2_Lbl.text
        
        let DragonSheet1_VC: DragonClingonGameSheet_7_VC = self.storyboard?.instantiateViewController(withIdentifier: "DragonSheet7_VC") as! DragonClingonGameSheet_7_VC
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
