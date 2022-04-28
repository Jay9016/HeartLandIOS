//
//  DragonClingonGameSheet_5_VC.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 8/3/18.
//  Copyright © 2018 SpryoxMacMini. All rights reserved.
//

import UIKit
import AVFoundation
class DragonClingonGameSheet_5_VC: UIViewController {
    
    @IBOutlet weak var MainScrollView: UIScrollView!
    @IBOutlet weak var MainUiView: UIView!
    @IBOutlet weak var BGImageView: UIImageView!
    @IBOutlet weak var pagetitleLbl: UILabel!
    
    @IBOutlet weak var quetions_M_Lbl: UILabel!
    @IBOutlet weak var quetion_M_boolean_UIview: UIView!
    @IBOutlet weak var quetioon_M_booleanBtn: UIButton!
    @IBOutlet weak var quetiuon_M_truefalseLbl: UILabel!
    @IBOutlet weak var quetion_M_answer_UIView: UIView!
    @IBOutlet weak var scorepointsLbl_M: UILabel!
    @IBOutlet weak var pointsLbl_M: UILabel!
    
    
    @IBOutlet weak var quetions_N_Lbl: UILabel!
    @IBOutlet weak var quetion_N_boolean_UIview: UIView!
    @IBOutlet weak var quetioon_N_booleanBtn: UIButton!
    @IBOutlet weak var quetiuon_N_truefalseLbl: UILabel!
    @IBOutlet weak var quetion_N_answer_UIView: UIView!
    @IBOutlet weak var scorepointsLbl_N: UILabel!
    @IBOutlet weak var pointsLbl_N: UILabel!
    
    
    @IBOutlet weak var quetions_O_Lbl: UILabel!
   
    @IBOutlet weak var quetion_O_boolean_UIview: UIView!
    @IBOutlet weak var quetioon_O_booleanBtn: UIButton!
    @IBOutlet weak var quetiuon_O_truefalseLbl: UILabel!
    @IBOutlet weak var quetion_O_answer_UIView: UIView!
    @IBOutlet weak var scorepointsLbl_O: UILabel!
    @IBOutlet weak var pointsLbl_O: UILabel!
    
    @IBOutlet weak var breathLbl: UILabel!
    
    @IBOutlet weak var totalpagepointsLbl: UILabel!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    let textfieldDelegate = RDTextFieldDelegate()
    
    
    var PointCountFirst = 0
    var PointCountSecand = 0
    var PointCountThird = 0

    var timer3 : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quetions_M_Lbl.adjustsFontSizeToFitWidth = true
        quetions_N_Lbl.adjustsFontSizeToFitWidth = true
        quetions_O_Lbl.adjustsFontSizeToFitWidth = true
        totalpagepointsLbl.adjustsFontSizeToFitWidth = true
        
       // textfieldDelegate.initWithTextFields([self.answer_L_UIView], onView: self.view)
        
        if(UIDevice .current.userInterfaceIdiom == .phone) {
            
            MainScrollView.contentSize = CGSize(width: self.MainScrollView.bounds.width, height: 950)
            MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  950)
           
            
        } else {
            
            self.nextBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            MainScrollView.contentSize = CGSize(width:self.MainScrollView.bounds.width,height:1500)
            MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  1500)
            
        }
        
        quetion_M_boolean_UIview.setBorder()
        quetion_M_answer_UIView.setBorder()
        quetion_N_boolean_UIview.setBorder()
        quetion_N_answer_UIView.setBorder()
        quetion_O_boolean_UIview.setBorder()
        quetion_O_answer_UIView.setBorder()
        
        
        nextBtn.layer.borderWidth = 1.0
        nextBtn.layer.borderColor = UIColor.red.cgColor
        nextBtn.layer.masksToBounds = true
        nextBtn.layer.cornerRadius = 5
        nextBtn.layer.borderWidth = 1.0
        // Do any additional setup after loading the view.
        
        self.quetions_M_Lbl.text = "M. I am Love. I am not upset for the reason I think. Denying my feelings is the main cause of my pain and upset. My error? A mistaken goal. I made this goal (" + DragonGame.page4TV2String + ") more important than staying connected to Love"
        
        self.quetions_O_Lbl.text = "O. I pardon you " + DragonGame.page1TV1String + " for not meeting my goal of (what I thought you should do)."
        
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
    
    @IBAction func Quetion_M_RadioButtonAction(_ sender: Any) {
        
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
    
    @IBAction func Quetion_N_RadioButtonAction(_ sender: Any) {
        
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
    
    @IBAction func Quetion_O_RadioButtonAction(_ sender: Any) {
        
        
        guard let button = sender as? UIButton else { return }
        
        if !button.isSelected {
            button.isSelected = true
            
            if let image = UIImage(named: "largchecked") {
                button.setBackgroundImage(image, for: .selected)
            }
            
            PointCountThird = 10
        }
        else {
            button.isSelected = false
            
            if let image = UIImage(named: "largunchecked") {
                button.setBackgroundImage(image, for: .normal)
            }
            
            PointCountThird = 0
            
        }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        if timer3 == nil {
            
            timer3 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(DragonClingonGameSheet_3_VC.sayHello), userInfo: nil, repeats: true)
            
        }
    }
    
    @objc func sayHello()
    {
        
        let points1 =   PointCountFirst
        
        self.pointsLbl_M.text =   "Points : " + String(points1)
        
        let points2 = PointCountSecand
        
        self.pointsLbl_N.text =   "Points : " + String(points2)
        
        let points3 =  PointCountThird
        
        self.pointsLbl_O.text =   "Points : " + String(points3)
        
        
        let TotalPoint = points1 + points2 +  points3
        
        self.totalpagepointsLbl.text = "Total points at page 5 : " + String(TotalPoint)
        
        //self.answerThirdPointlLbl.text =  "Points : " + String(DragonGame.Quetion_C_PointCount)
        
        DragonGame.page5PointString = TotalPoint
    }
    
    func stopTimerTest() {
        
        if timer3 != nil {
            timer3?.invalidate()
            timer3 = nil
        }
        
    }
    
    @IBAction func NextButtonAction(_ sender: Any) {
        
        self.stopTimerTest()
        
        let DragonSheet1_VC: DragonClingonGameSheet_6_VC = self.storyboard?.instantiateViewController(withIdentifier: "DragonSheet6_VC") as! DragonClingonGameSheet_6_VC
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
