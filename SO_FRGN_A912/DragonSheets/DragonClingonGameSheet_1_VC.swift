//
//  DragonClingonGameSheet_1_VC.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 8/2/18.
//  Copyright © 2018 SpryoxMacMini. All rights reserved.
//

import UIKit
import AVFoundation
import KMPlaceholderTextView

class DragonClingonGameSheet_1_VC: UIViewController {

    @IBOutlet weak var MainScrollView: UIScrollView!
    @IBOutlet weak var MainUiView: UIView!
    @IBOutlet weak var BGImageView: UIImageView!
  //  @IBOutlet weak var stepnoLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var quetionfirsttitleLbl: UILabel!
    @IBOutlet weak var answerfirstTV: UITextView!
    @IBOutlet weak var quetionSecandtitleLbl: UILabel!
    @IBOutlet weak var answerSecandTV: UITextView!
    @IBOutlet weak var quetionthirdtitleLbl: UILabel!
    @IBOutlet weak var thirdqaUIView: UIView!
    @IBOutlet weak var thirdpointLbl: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var answerThirdTV: KMPlaceholderTextView!
    @IBOutlet weak var answerFourthTV: KMPlaceholderTextView!
    @IBOutlet weak var answerFifthTV: KMPlaceholderTextView!
    @IBOutlet weak var answerSixthTV: KMPlaceholderTextView!
    
    let textfieldDelegate = RDTextFieldDelegate()
    
    @IBOutlet weak var breathLbl: UILabel!
    
    @IBOutlet weak var totalpointsLbl: UILabel!
    
    var timer1 : Timer?
    
    var PointCountFirst = 0
    
    var PointCountSecand = 0
    
    var PointCountThird = 0
    
    var PointCountFourth = 0
    
    var TotalPointCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        answerThirdTV.placeholder = "enter your feeling here"
        answerFourthTV.placeholder = "enter your feeling here"
        answerFifthTV.placeholder = "enter your feeling here"
        answerSixthTV.placeholder = "enter your feeling here"
        
        answerThirdTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)//UIColor.lightGray
        answerFourthTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answerFifthTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        answerSixthTV.placeholderColor = UIColor.darkGray//UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        
        titleLbl.adjustsFontSizeToFitWidth = true
        quetionfirsttitleLbl.adjustsFontSizeToFitWidth = true
        quetionthirdtitleLbl.adjustsFontSizeToFitWidth = true
        thirdpointLbl.adjustsFontSizeToFitWidth = true
        quetionSecandtitleLbl.adjustsFontSizeToFitWidth = true
        
        
        if(UIDevice .current.userInterfaceIdiom == .phone) {
            
            MainUiView.backgroundColor = UIColor.red
            MainScrollView.contentSize = CGSize(width: self.MainScrollView.bounds.width, height: 950)
            MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  950)
            
            
        } else {
            
            self.nextBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            MainScrollView.contentSize = CGSize(width:self.MainScrollView.bounds.width,height:1500)
            MainUiView.frame = CGRect(x: 0, y: 0, width:  self.MainScrollView.bounds.width, height:  1500)
            
        }
        
        
//        if UIDevice().userInterfaceIdiom == .phone {
//
//            MainScrollView.contentSize = CGSize(width: 375, height: 950)
//            MainUiView.frame = CGRect(x: 0, y: 0, width:  375, height:  950)
//
//        }
//
        answerfirstTV.layer.borderWidth = 1.0
        answerfirstTV.layer.borderColor = UIColor.white.cgColor
        answerfirstTV.layer.masksToBounds = true
        answerfirstTV.layer.cornerRadius = 5
        answerfirstTV.layer.borderWidth = 1.0
        
        answerSecandTV.layer.borderWidth = 1.0
        answerSecandTV.layer.borderColor = UIColor.white.cgColor
        answerSecandTV.layer.masksToBounds = true
        answerSecandTV.layer.cornerRadius = 5
        answerSecandTV.layer.borderWidth = 1.0
        
        answerThirdTV.layer.borderWidth = 1.0
        answerThirdTV.layer.borderColor = UIColor.white.cgColor
        answerThirdTV.layer.masksToBounds = true
        answerThirdTV.layer.cornerRadius = 5
        answerThirdTV.layer.borderWidth = 1.0
        
        answerFourthTV.layer.borderWidth = 1.0
        answerFourthTV.layer.borderColor = UIColor.white.cgColor
        answerFourthTV.layer.masksToBounds = true
        answerFourthTV.layer.cornerRadius = 5
        answerFourthTV.layer.borderWidth = 1.0
        
        answerFifthTV.layer.borderWidth = 1.0
        answerFifthTV.layer.borderColor = UIColor.white.cgColor
        answerFifthTV.layer.masksToBounds = true
        answerFifthTV.layer.cornerRadius = 5
        answerFifthTV.layer.borderWidth = 1.0
        
        answerSixthTV.layer.borderWidth = 1.0
        answerSixthTV.layer.borderColor = UIColor.white.cgColor
        answerSixthTV.layer.masksToBounds = true
        answerSixthTV.layer.cornerRadius = 5
        answerSixthTV.layer.borderWidth = 1.0
        
        thirdqaUIView.layer.borderWidth = 1.0
        thirdqaUIView.layer.borderColor = UIColor.white.cgColor
        thirdqaUIView.layer.masksToBounds = true
        thirdqaUIView.layer.cornerRadius = 5
        thirdqaUIView.layer.borderWidth = 1.0
        
        thirdqaUIView.layer.borderWidth = 1.0
        thirdqaUIView.layer.borderColor = UIColor.white.cgColor
        thirdqaUIView.layer.masksToBounds = true
        thirdqaUIView.layer.cornerRadius = 5
        thirdqaUIView.layer.borderWidth = 1.0
        
        nextBtn.layer.borderWidth = 1.0
        nextBtn.layer.borderColor = UIColor.red.cgColor
        nextBtn.layer.masksToBounds = true
        nextBtn.layer.cornerRadius = 5
        nextBtn.layer.borderWidth = 1.0
        // Do any additional setup after loading the view.
        
        textfieldDelegate.initWithTextFields([self.answerfirstTV,self.answerSecandTV, self.answerThirdTV,self.answerFourthTV, self.answerFifthTV,self.answerSixthTV], onView: self.view)
        
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
        
        self.ShowAlert("Warning", AlertMessage:"You will lose your answers \n are you sure you want to go back?", AlertTag: 1002)
       
        
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

//    func ShowAlert(_ AlertTitle:String, AlertMessage:String, AlertTag:NSInteger) {
//
//        // Initialize Alert Controller
//        let alertController = UIAlertController(title: AlertTitle, message: AlertMessage, preferredStyle: .alert)
//
//        // Initialize Actions
//        let OkAction = UIAlertAction(title: "Ok", style: .default) { (action) -> Void in
//            if AlertTag == 1002 {
//
//                 self.navigationController?.popViewController(animated: true)
//            }
//
//        }
//        //Add Actions
//        alertController.addAction(OkAction)
//
//        let CancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) -> Void in
//
//
//
//        }
//        //Add Actions
//        alertController.addAction(OkAction)
//        //Add Actions
//        alertController.addAction(CancelAction)
//
//        // Move to the UI thread
//        DispatchQueue.main.async(execute: { () -> Void in
//            // Present Alert Controller
//            self.present(alertController, animated: true, completion: nil)
//        })
//
//    }
    override func viewDidAppear(_ animated: Bool) {
        
        if timer1 == nil {
            
            timer1 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(DragonClingonGameSheet_1_VC.sayHello), userInfo: nil, repeats: true)
            
        }
        
    }
    
    @objc func sayHello()
    {
        
       // print("i am in timer first")
        
        if let text = answerThirdTV.text, !text.isEmpty
        {
            PointCountFirst = 1
            
            
        }else{
            
            PointCountFirst = 0
            
        }
        
        if let text = answerFourthTV.text, !text.isEmpty
        {
           
            PointCountSecand = 1
           
            
        }else{
            
            PointCountSecand = 0
            
        }
        
        if let text = answerFifthTV.text, !text.isEmpty
        {
           
            PointCountThird = 1
            
        }else{
            
            PointCountThird = 0
            
        }
        if let text = answerSixthTV.text, !text.isEmpty
        {
            
            
            PointCountFourth = 1
            
        }else{
            
            PointCountFourth = 0
            
        }
        
        let points = PointCountFirst + PointCountSecand + PointCountThird + PointCountFourth
        
        self.thirdpointLbl.text =   "Points : " + String(points)
        
        DragonGame.Quetion_C_PointCount = points
        
        self.totalpointsLbl.text = "Total points at page 1 : " + String(points)
        
        DragonGame.page1PointString = points
    }
    
    func stopTimerTest() {
        
        if timer1 != nil {
            timer1?.invalidate()
            timer1 = nil
        }
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {        // handling code
        
        self.view.endEditing(true)
        
    }
    
   
    @IBAction func NextButtonAction(_ sender: Any) {
        
//        let DGResultVC: DragonGameResultVC = self.storyboard?.instantiateViewController(withIdentifier: "DGResultVC") as! DragonGameResultVC
//        self.navigationController?.pushViewController(DGResultVC, animated: true)
//
        DragonGame.page1TV1String = answerfirstTV.text
        DragonGame.page1TV2String = answerSecandTV.text
        DragonGame.page1TV3String = answerThirdTV.text
        DragonGame.page1TV4String = answerFourthTV.text
        DragonGame.page1TV5String = answerFifthTV.text
        DragonGame.page1TV6String = answerSixthTV.text
        
        self.stopTimerTest()
        let DragonSheet1_VC: DragonClingonGameSheet_2_VC = self.storyboard?.instantiateViewController(withIdentifier: "DragonSheet2_VC") as! DragonClingonGameSheet_2_VC
        self.navigationController?.pushViewController(DragonSheet1_VC, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
