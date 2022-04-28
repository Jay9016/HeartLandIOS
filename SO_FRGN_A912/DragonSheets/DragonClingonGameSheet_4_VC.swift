//
//  DragonClingonGameSheet_4_VC.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 8/3/18.
//  Copyright © 2018 SpryoxMacMini. All rights reserved.
//

import UIKit
import AVFoundation
class DragonClingonGameSheet_4_VC: UIViewController {
    
    @IBOutlet weak var MainScrollView: UIScrollView!
    @IBOutlet weak var MainUiView: UIView!

    
    @IBOutlet weak var pagetitlelbl: UILabel!
    @IBOutlet weak var quetions_J_Lbl: UILabel!
    @IBOutlet weak var quetion_J_boolean_UIview: UIView!
    @IBOutlet weak var quetioon_J_booleanBtn: UIButton!
    @IBOutlet weak var quetiuon_J_truefalseLbl: UILabel!
    @IBOutlet weak var quetion_J_answer_UIView: UIView!
    @IBOutlet weak var scorepointsLbl_J: UILabel!
    @IBOutlet weak var pointsLbl_J: UILabel!
    
    
    @IBOutlet weak var quetions_K_Lbl: UILabel!
    @IBOutlet weak var quetion_K_boolean_UIview: UIView!
    @IBOutlet weak var quetioon_K_booleanBtn: UIButton!
    @IBOutlet weak var quetiuon_K_truefalseLbl: UILabel!
    @IBOutlet weak var quetion_K_answer_UIView: UIView!
    @IBOutlet weak var scorepointsLbl_K: UILabel!
    @IBOutlet weak var pointsLbl_K: UILabel!
    
    
    @IBOutlet weak var quetions_L_Lbl: UILabel!
    @IBOutlet weak var answer_L_UIView: UITextView!
    @IBOutlet weak var quetion_L_answer_UIView: UIView!
    @IBOutlet weak var scorepointsLbl_L: UILabel!
    @IBOutlet weak var pointsLbl_L: UILabel!
    
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
        
        
        quetions_J_Lbl.adjustsFontSizeToFitWidth = true
        quetions_K_Lbl.adjustsFontSizeToFitWidth = true
        quetions_L_Lbl.adjustsFontSizeToFitWidth = true
        totalpagepointsLbl.adjustsFontSizeToFitWidth = true
        
        textfieldDelegate.initWithTextFields([self.answer_L_UIView], onView: self.view)
        
        //self.title = "Dragon Clingon Game"
        
//        if UIDevice().userInterfaceIdiom == .phone {
//
//            MainScrollView.contentSize = CGSize(width: 375, height: 950)
//            MainUiView.frame = CGRect(x: 0, y: 0, width:  375, height:  950)
//
//        }
        
        if(UIDevice .current.userInterfaceIdiom == .phone) {
            MainScrollView.contentSize = CGSize(width: self.MainScrollView.bounds.width, height: 950)
            MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  950)
        } else {
            
            self.nextBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            MainScrollView.contentSize = CGSize(width:self.MainScrollView.bounds.width,height:1500)
            MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  1500)
            
        }

       
        quetion_J_boolean_UIview.setBorder()
        quetion_J_answer_UIView.setBorder()
       
        
        quetion_K_boolean_UIview.setBorder()
        quetion_K_answer_UIView.setBorder()

  
        answer_L_UIView.setBorder()
        quetion_L_answer_UIView.setBorder()
        
        
        self.quetions_L_Lbl.text = "L. What did I want to happen in situation (" + DragonGame.page1TV2String + ") instead of what did happen? (use positive upbeat language)"
        
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
    
    
    @IBAction func Quetion_J_RadioButtonAction(_ sender: Any) {
       
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "largchecked") {
                button.setBackgroundImage(image, for: .selected)
            }
            PointCountFirst = 5
            
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "largunchecked") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointCountFirst = 0
        }
    }
    
    @IBAction func Quetion_K_RadioButtonAction(_ sender: Any) {
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "largchecked") {
                button.setBackgroundImage(image, for: .selected)
            }
            
            PointCountSecand = 5
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "largunchecked") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointCountSecand = 0
            
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if timer3 == nil {
            
            timer3 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(DragonClingonGameSheet_3_VC.sayHello), userInfo: nil, repeats: true)
            
        }
        
    }
    
    @objc func sayHello()
    {
        
        if let text = answer_L_UIView.text, !text.isEmpty
        {
            PointCountThird = 5
            
            
        }else{
            
            PointCountThird = 0
            
        }
        
        
        let points1 =   PointCountFirst
        
        self.pointsLbl_J.text =   "Points : " + String(points1)
        
        let points2 = PointCountSecand
        
        self.pointsLbl_K.text =   "Points : " + String(points2)
        
        let points3 =  PointCountThird
        
        self.pointsLbl_L.text =   "Points : " + String(points3)
        
        
        let TotalPoint = points1 + points2 +  points3
        
        self.totalpagepointsLbl.text = "Total points at page 4 : " + String(TotalPoint)
        
        //self.answerThirdPointlLbl.text =  "Points : " + String(DragonGame.Quetion_C_PointCount)
        
        DragonGame.page4PointString = TotalPoint
    }
    
    func stopTimerTest() {
        
        if timer3 != nil {
            timer3?.invalidate()
            timer3 = nil
        }
        
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
    
    @IBAction func NextButtonAction(_ sender: Any) {
        
        
        print(DragonGame.page3PointString)
        
        self.stopTimerTest()
        
        DragonGame.page4TV2String = self.answer_L_UIView.text
        
        let DragonSheet1_VC: DragonClingonGameSheet_5_VC = self.storyboard?.instantiateViewController(withIdentifier: "DragonSheet5_VC") as! DragonClingonGameSheet_5_VC
        self.navigationController?.pushViewController(DragonSheet1_VC, animated: true)
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
