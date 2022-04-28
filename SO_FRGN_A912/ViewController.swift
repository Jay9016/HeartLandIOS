//
//  ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 11/29/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit

extension UserDefaults {
    
    static func exists(key: String) -> Bool {
        return UserDefaults.standard.object(forKey: key) != nil
    }
    
}

class ViewController: UIViewController {
    var sheetname : String = ""
    var IsGotoDragonSheet = Bool()
    @IBOutlet weak var RealityWakeUpBtn: UIButton!
    @IBOutlet weak var CurrentStepBtn: UIButton!
    @IBOutlet weak var DragonClingonGameBtn: UIButton!
    @IBOutlet weak var CommitmentButton: UIButton!
    @IBOutlet weak var KnowMoreBtn: UIButton!
    @IBOutlet weak var EventBtn: UIButton!
    @IBOutlet weak var MoreBtn: UIButton!
    @IBOutlet weak var SendUsQuestionsBtn: UIButton!
    @IBOutlet weak var HeartShapeBtnLeft: UIImageView!
    @IBOutlet weak var HeartShapeBtnRight: UIImageView!
    @IBOutlet weak var middleLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var BottomLblFirst: UILabel!
    @IBOutlet weak var BottomLblSecand: UILabel!
    @IBOutlet weak var BottomLblThird: UILabel!
    @IBOutlet weak var couplelogo_ImgView: UIImageView!
//    @IBOutlet weak var Main_BG: UIImageView!
    @IBOutlet weak var mainbg_ImgView: UIImageView!
    @IBOutlet weak var ListenRadioShowBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
        self.RealityWakeUpBtn.layer.masksToBounds = false
        self.RealityWakeUpBtn.layer.cornerRadius = 10
        self.RealityWakeUpBtn.layer.shadowColor = UIColor.black.cgColor
        self.RealityWakeUpBtn.layer.borderWidth = 1.0
        self.RealityWakeUpBtn.clipsToBounds = false
        
        self.CurrentStepBtn.layer.masksToBounds = false
        self.CurrentStepBtn.layer.cornerRadius = 10
        self.CurrentStepBtn.layer.shadowColor = UIColor.black.cgColor
        self.CurrentStepBtn.layer.borderWidth = 1.0
        self.CurrentStepBtn.clipsToBounds = false
        
        self.DragonClingonGameBtn.layer.masksToBounds = false
        self.DragonClingonGameBtn.layer.cornerRadius = 10
        self.DragonClingonGameBtn.layer.borderColor = UIColor.black.cgColor
        self.DragonClingonGameBtn.layer.borderWidth = 1.0
        self.DragonClingonGameBtn.clipsToBounds = false
        
        self.CommitmentButton.layer.masksToBounds = false
        self.CommitmentButton.layer.cornerRadius = 10
        self.CommitmentButton.layer.borderColor = UIColor.black.cgColor
        self.CommitmentButton.layer.borderWidth = 1.0
        self.CommitmentButton.clipsToBounds = false
        
        self.EventBtn.layer.masksToBounds = false
        self.EventBtn.layer.cornerRadius = 10
        self.EventBtn.layer.borderColor = UIColor.black.cgColor
        self.EventBtn.layer.borderWidth = 1.0
        self.EventBtn.clipsToBounds = false
        
        self.MoreBtn.layer.masksToBounds = false
        self.MoreBtn.layer.cornerRadius = 10
        self.MoreBtn.layer.borderColor = UIColor.black.cgColor
        self.MoreBtn.layer.borderWidth = 1.0
        self.MoreBtn.clipsToBounds = false
        
        self.SendUsQuestionsBtn.layer.masksToBounds = false
        self.SendUsQuestionsBtn.layer.cornerRadius = 10
        self.SendUsQuestionsBtn.layer.borderColor = UIColor.black.cgColor
        self.SendUsQuestionsBtn.layer.borderWidth = 1.0
        self.SendUsQuestionsBtn.clipsToBounds = false
        
        self.ListenRadioShowBtn.layer.masksToBounds = false
        self.ListenRadioShowBtn.layer.cornerRadius = 10
        self.ListenRadioShowBtn.layer.borderColor = UIColor.black.cgColor
        self.ListenRadioShowBtn.layer.borderWidth = 1.0
        self.ListenRadioShowBtn.clipsToBounds = false
        
        self.SetFrames()
        
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
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        longTitleLabel.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        // handling code
        guard let url = URL(string: "https://whyagain.org/") else { return }
        UIApplication.shared.open(url)
    }
    
    @IBAction func DragonClingonGameButtonAction(_ sender: Any) {//DragonIditifier
        performSegue(withIdentifier: "ToDrgaonGameIdentifier", sender: self)
    }
    
    @IBAction func EventButtonAction(_ sender: Any) {//DragonIditifier
        guard let url = URL(string: "https://whyagain.org/schedule/") else { return }
        UIApplication.shared.open(url)
    }
    
    @IBAction func MoreButtonAction(_ sender: Any) {//DragonIditifier
        guard let url = URL(string: "https://whyagain.org/more/") else { return }
        UIApplication.shared.open(url)
    }
    
    @IBAction func RadioShowButtonAction(_ sender: Any) {//DragonIditifier
        guard let url = URL(string: "https://whyagain.org/mindshifters-radio-the-forgiveness-doctor/") else { return }
        UIApplication.shared.open(url)
    }
    
    func ResetButtonsOFSecand() {
        
        Constants.FirstBtnFirstScreenSecandSheet  = false;
        Constants.SecandBtnFirstScreenSecandSheet = false;
        Constants.ThirdBtnFirstScreenSecandSheet = false;
        Constants.FourthBtnFirstScreenSecandSheet = false;
        Constants.FifthBtnFirstScreenSecandSheet = false;
        Constants.SixthtBtnFirstScreenSecandSheet = false;
        Constants.SeventhBtnFirstScreenSecandSheet = false;
        Constants.EightBtnFirstScreenSecandSheet = false;
        
        // Screen Secand
        Constants.PhysicalSecandSheet = false;
        Constants.MentalSecandSheet = false;
        Constants.EmotipnalSecandSheet = false;
        Constants.ToLoveBtnSecandSheet = false;
        Constants.ToChooseLoveBtnSecandSheet = false;
        
        // Screen Fourth
        Constants.RoseAndButterFlyBtnSecandSheet = false;
        
        // Screen Fifth
        Constants.FirstButtonFifthScreen=false;
        Constants.SecandButtonFifthScreen=false;
        Constants.loveButtonFifthScreen=false;
        Constants.ActiveButtonFifthScreen=false;
        Constants.PresentButtonFifthScreen=false;
        Constants.inclinemeBtnFifthScreen=false;
        Constants.restoremeBtnFifthScreen=false;
        Constants.tohealmyFifthScreen=false;
        Constants.healmycapacutyBtnFifthScreen=false;
        
        // SeventhScreen
        Constants.truthBtnSeventhScreen=false;
        Constants.perfectloveBtnSeventhScreen=false;
        Constants.icommitloveBtnSeventhScreen=false;
        Constants.tohelpBtnSeventhScreen=false;
        Constants.successBtnSeventhScreen=false;
        
        FSFFString  = ""
        FSSFString = ""
        thirdscreenstring = ""
    }
    
    func ResetButtonsOfFirst(){
        Constants.PhysicalFirstSheet = false;
        Constants.MentalFirstSheet = false;
        Constants.EmotipnalFirstSheet = false;
        
        // Screen Fourth
        Constants.YesIChooseFirstSheet = false;
        Constants.ToinclinemebtnFirstSheet = false;
        Constants.RestoremeBtnFirstSheet = false;
        Constants.AsistmeBtnFirstSheet = false;
        
        FirstScreenString = ""
        ScreenThirdString = ""
        //Constants.HelpmeFirstSheet = false;
    }
    @IBAction func KnowMoreButtonAction(_ sender: Any) {
        
        if let url = URL(string: "https://whyagain.org/mindshifter-radio-the-forgiveness-doctor/"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print(self.IsGotoDragonSheet)
        
        if self.IsGotoDragonSheet == false{
            
            switch segue.identifier {
            case "toPersonalInfo"?:
                let destVC = segue.destination as! PersonalInfoViewController
                destVC.whichSheet=sheetname
                break
                
            case "ToSheetSecand"?:
                let destVC = segue.destination as! Current_1_ViewController
                destVC.whichSheet=sheetname
                break
                
            case "ToSheetFirst"?:
                let destVC = segue.destination as! Abbriviated_1_ViewController//ToDrgaonGameIdentifier
                destVC.whichSheet=sheetname
                
                break
            case "ToDrgaonGameIdentifier"?:
                let destVC = segue.destination as! DragonInstructionViewController//ToDrgaonGameIdentifier
                //destVC.whichSheet=sheetname
                break
                
            default:
                break
            }
        }
    }
    
    func SetFrames(){
        
        if UIDevice().userInterfaceIdiom == .phone {
            self.RealityWakeUpBtn.frame.origin.y = 20
            self.CurrentStepBtn.frame.origin.y = self.GetYandHeight(passView: RealityWakeUpBtn) - 5
            self.DragonClingonGameBtn.frame.origin.y = self.GetYandHeight(passView: CurrentStepBtn) - 5
            self.CommitmentButton.frame.origin.y = self.GetYandHeight(passView: DragonClingonGameBtn) - 5
            self.MoreBtn.frame.origin.y = self.GetYandHeight(passView: CommitmentButton) - 5
            self.EventBtn.frame.origin.y = self.GetYandHeight(passView: CommitmentButton) - 5
            self.SendUsQuestionsBtn.frame.origin.y = self.GetYandHeight(passView: EventBtn) - 5
            self.middleLbl.frame.origin.y = self.GetYandHeight(passView: SendUsQuestionsBtn) - 5
            self.HeartShapeBtnLeft.frame.origin.y = self.GetYandHeight(passView: SendUsQuestionsBtn) - 5
            self.HeartShapeBtnRight.frame.origin.y = self.GetYandHeight(passView: SendUsQuestionsBtn) - 5
            self.couplelogo_ImgView.frame.origin.y = self.GetYandHeight(passView: middleLbl) + 5
            self.nameLbl.frame.origin.y = self.GetYandHeight(passView: couplelogo_ImgView)
            self.KnowMoreBtn.frame.origin.y = self.GetYandHeight(passView: nameLbl) - 10
            self.BottomLblFirst.frame.origin.y = self.GetYandHeight(passView: KnowMoreBtn) - 5
            self.BottomLblSecand.frame.origin.y = self.GetYandHeight(passView: BottomLblFirst) - 5
            self.BottomLblThird.frame.origin.y = self.GetYandHeight(passView: BottomLblSecand) - 5
            self.ListenRadioShowBtn.frame.origin.y = self.GetYandHeight(passView: BottomLblThird) - 5
        } else {
            self.RealityWakeUpBtn.frame.origin.y = 20
            self.CurrentStepBtn.frame.origin.y = self.GetYandHeight(passView: RealityWakeUpBtn)
            self.DragonClingonGameBtn.frame.origin.y = self.GetYandHeight(passView: CurrentStepBtn)
            self.CommitmentButton.frame.origin.y = self.GetYandHeight(passView: DragonClingonGameBtn)
            self.MoreBtn.frame.origin.y = self.GetYandHeight(passView: CommitmentButton) - 5
            self.EventBtn.frame.origin.y = self.GetYandHeight(passView: CommitmentButton) - 5
            self.SendUsQuestionsBtn.frame.origin.y = self.GetYandHeight(passView: EventBtn) - 5
            self.middleLbl.frame.origin.y = self.GetYandHeight(passView: CommitmentButton)
            self.HeartShapeBtnLeft.frame.origin.y = self.GetYandHeight(passView: CommitmentButton)
            self.HeartShapeBtnRight.frame.origin.y = self.GetYandHeight(passView: CommitmentButton)
            self.couplelogo_ImgView.frame.origin.y = self.GetYandHeight(passView: middleLbl)
            
        }
    }
    
    func GetYandHeight(passView:UIView)->CGFloat {
        var NewY : CGFloat = 0
        NewY = passView.frame.origin.y + passView.frame.size.height + 10
        return NewY
    }
    
    @IBAction func ToPersonalInfo(_ sender: UIButton) {
        
        self.IsGotoDragonSheet = false
        sheetname = "sheet1"
        
        self.ResetButtonsOFSecand()
        
        if  UserDefaults.exists(key: "IsInfoSave") == true{
            performSegue(withIdentifier: "ToSheetFirst", sender: self)
        }else{
            performSegue(withIdentifier: "toPersonalInfo", sender: self)
        }
    }
    
    @IBAction func toPersonalInfo2(_ sender: UIButton) {
        
        self.IsGotoDragonSheet = false
        self.ResetButtonsOfFirst()
        sheetname = "sheet2"
        
        if UserDefaults.exists(key: "IsInfoSave") == true{
            performSegue(withIdentifier: "ToSheetSecand", sender: self)
        }else{
            performSegue(withIdentifier: "toPersonalInfo", sender: self)
        }
    }
}

