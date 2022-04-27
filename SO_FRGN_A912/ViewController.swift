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
        
        if  UserDefaults.exists(key: "IsInfoSave") == true{
            
            performSegue(withIdentifier: "ToSheetSecand", sender: self)
            
        }else{
            performSegue(withIdentifier: "toPersonalInfo", sender: self)
        }
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        UserDefaults.standard.set("", forKey: "Name")
//        UserDefaults.standard.set("", forKey: "mobile")
//        UserDefaults.standard.set("", forKey: "email")
//        UserDefaults.standard.set(false, forKey: "IsInfoSave")
        
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
        
//        self.DragonClingonGameBtn.layer.masksToBounds = false
//        self.DragonClingonGameBtn.layer.cornerRadius = 10
//        self.DragonClingonGameBtn.layer.shadowColor = UIColor.black.cgColor
//        self.DragonClingonGameBtn.layer.borderWidth = 1.0
//        self.DragonClingonGameBtn.clipsToBounds = false
//        
//        let label: UILabel = UILabel(frame: CGRect(origin: .zero, size: CGSize(width: 400, height: 50)))
//        label.backgroundColor = UIColor.clear
//        label.numberOfLines = 2
//        label.font = UIFont.boldSystemFont(ofSize: 14)
//        label.textAlignment = .center
//        label.textColor = UIColor.white
//        label.text = "Heartland Aramaic Forgiveness\nwww.whyagain.org"
//        //label.font = UIFont.boldSystemFont(ofSize: 15)
//        self.navigationItem.titleView = label
        
        let longTitleLabel = UILabel()
        longTitleLabel.backgroundColor = UIColor.clear
        longTitleLabel.numberOfLines = 2
        
        if UIDevice().userInterfaceIdiom == .phone {
            
            longTitleLabel.font = UIFont.boldSystemFont(ofSize: 16)
            
        }else{
            
            longTitleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        }
        
        longTitleLabel.textAlignment = .left
        longTitleLabel.textColor = UIColor.white
        longTitleLabel.text = "Heartland Aramaic Forgiveness\nwww.whyagain.org"
        longTitleLabel.sizeToFit()
        self.navigationItem.hidesBackButton = true
        let leftItem = UIBarButtonItem(customView: longTitleLabel)
        self.navigationItem.leftBarButtonItem = leftItem
        
        self.SetFrames()
    }
    
    @IBAction func DragonClingonGameButtonAction(_ sender: Any) {//DragonIditifier
        
        performSegue(withIdentifier: "ToDrgaonGameIdentifier", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print(self.IsGotoDragonSheet)
        
        if self.IsGotoDragonSheet == false{
            
            switch segue.identifier {
            case "toPersonalInfo"?:
                let destVC = segue.destination as! PersonalInfoViewController
                destVC.whichSheet=sheetname
        
            case "ToSheetSecand"?:
                let destVC = segue.destination as! Current_1_ViewController
                destVC.whichSheet=sheetname
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
            self.RealityWakeUpBtn.frame.origin.y = 100
            self.CurrentStepBtn.frame.origin.y = self.GetYandHeight(passView: RealityWakeUpBtn)
            self.DragonClingonGameBtn.frame.origin.y = self.GetYandHeight(passView: CurrentStepBtn)
            self.CommitmentButton.frame.origin.y = self.GetYandHeight(passView: DragonClingonGameBtn)
            self.middleLbl.frame.origin.y = self.GetYandHeight(passView: CommitmentButton)
            self.HeartShapeBtnLeft.frame.origin.y = self.GetYandHeight(passView: CommitmentButton)
            self.HeartShapeBtnRight.frame.origin.y = self.GetYandHeight(passView: CommitmentButton)
            self.couplelogo_ImgView.frame.origin.y = self.GetYandHeight(passView: middleLbl)
            self.nameLbl.frame.origin.y = self.GetYandHeight(passView: couplelogo_ImgView)
            self.KnowMoreBtn.frame.origin.y = self.GetYandHeight(passView: nameLbl) - 10
            self.BottomLblFirst.frame.origin.y = self.GetYandHeight(passView: KnowMoreBtn) - 10
            self.BottomLblSecand.frame.origin.y = self.GetYandHeight(passView: BottomLblFirst) - 10
            self.BottomLblThird.frame.origin.y = self.GetYandHeight(passView: BottomLblSecand) - 10
        } else {
            self.RealityWakeUpBtn.frame.origin.y = 100
            self.CurrentStepBtn.frame.origin.y = self.GetYandHeight(passView: RealityWakeUpBtn)
            self.DragonClingonGameBtn.frame.origin.y = self.GetYandHeight(passView: CurrentStepBtn)
            self.CommitmentButton.frame.origin.y = self.GetYandHeight(passView: DragonClingonGameBtn)
            self.middleLbl.frame.origin.y = self.GetYandHeight(passView: CommitmentButton)
            self.HeartShapeBtnLeft.frame.origin.y = self.GetYandHeight(passView: CommitmentButton)
            self.HeartShapeBtnRight.frame.origin.y = self.GetYandHeight(passView: CommitmentButton)
            self.couplelogo_ImgView.frame.origin.y = self.GetYandHeight(passView: middleLbl)
            
        }
        
        
//        if UIDevice().userInterfaceIdiom == .phone {
//            //[UIScreen mainScreen].bounds.size.height > 480.0f ? 200 : 100;
//            if UIScreen.main.bounds.height == 667{
//
//
//
//                print("i am here")
//            }else if UIScreen.main.bounds.height == 812{
//
//
//                self.couplelogo_ImgView.frame = CGRect(x: 112, y: 370, width: 150, height: 150)
//                self.mainbg_ImgView.frame = CGRect(x: 0, y: 0, width: 375, height: 812)
//
//                self.RealityWakeUpBtn.frame = CGRect(x: 17, y: 120, width: 335, height: 40)
//                self.CurrentStepBtn.frame = CGRect(x: 17, y: 170, width: 335, height: 40)
//                self.DragonClingonGameBtn.frame = CGRect(x: 17, y: 220, width: 335, height: 40)
//                self.CommitmentButton.frame = CGRect(x: 17, y: 270, width: 335, height: 40)
//                self.middleLbl.frame = CGRect(x: 37, y: 280, width: 300, height: 35)
//                self.HeartShapeBtnLeft.frame = CGRect(x: 15, y: 280, width: 30, height: 30)
//                self.HeartShapeBtnRight.frame = CGRect(x: 330, y: 280, width: 30, height: 30)
//                self.nameLbl.frame = CGRect(x: 37, y: 530, width: 300, height: 30)
//                self.KnowMoreBtn.frame = CGRect(x: 130, y: 560, width: 120, height: 40)
//                self.BottomLblFirst.frame = CGRect(x: 20, y: 610, width: 350, height: 35)
//                self.BottomLblSecand.frame = CGRect(x: 20, y: 640, width: 350, height: 35)
//                self.BottomLblThird.frame = CGRect(x: 20, y: 670, width: 350, height: 35)
//
//            }else if UIScreen.main.bounds.height == 568{
//
//                self.RealityWakeUpBtn.frame = CGRect(x: 10, y: 100, width: 300, height: 40)
//                self.CurrentStepBtn.frame = CGRect(x: 10, y: 150, width: 300, height: 40)
//                self.DragonClingonGameBtn.frame = CGRect(x: 10, y: 200, width: 300, height: 40)
//                self.CommitmentButton.frame = CGRect(x: 17, y: 250, width: 335, height: 40)
//
//                self.middleLbl.frame = CGRect(x: 35, y: 260, width: 250, height: 35)
//                self.HeartShapeBtnLeft.frame = CGRect(x: 15, y: 260, width: 30, height: 30)
//                self.HeartShapeBtnRight.frame = CGRect(x: 280, y: 260, width: 30, height: 30)
//
//                self.couplelogo_ImgView.frame = CGRect(x: 100, y: 300, width: 110, height: 110)
//                self.mainbg_ImgView.frame = CGRect(x: 0, y: 0, width: 320, height: 568)
//
//                self.nameLbl.frame = CGRect(x: 20, y: 420, width: 280, height: 20)
//                self.KnowMoreBtn.frame = CGRect(x: 20, y: 450, width: 280, height: 20)
//                self.BottomLblFirst.frame = CGRect(x: 20, y: 480, width: 280, height: 20)
//                self.BottomLblSecand.frame = CGRect(x: 0, y: 510, width: 320, height: 20)
//                self.BottomLblThird.frame = CGRect(x: 20, y: 540, width: 280, height: 20)
//
//
//                self.nameLbl.adjustsFontSizeToFitWidth = true
//                self.KnowMoreBtn.titleLabel?.adjustsFontSizeToFitWidth = true
//                self.BottomLblFirst.adjustsFontSizeToFitWidth = true
//                self.BottomLblSecand.adjustsFontSizeToFitWidth = true
//                self.BottomLblThird.adjustsFontSizeToFitWidth = true
//
//                self.middleLbl.adjustsFontSizeToFitWidth = true
//
//                self.BottomLblFirst.font =  UIFont.systemFont(ofSize: 11, weight: .bold)
//                self.BottomLblSecand.font =  UIFont.systemFont(ofSize: 11, weight: .bold)
//                self.BottomLblThird.font =  UIFont.systemFont(ofSize: 11, weight: .bold)
//                self.middleLbl.font =  UIFont.systemFont(ofSize: 12, weight: .bold)
//                self.RealityWakeUpBtn.titleLabel?.font =  UIFont.systemFont(ofSize: 15, weight: .bold)
//                self.CurrentStepBtn.titleLabel?.font =  UIFont.systemFont(ofSize: 15, weight: .bold)
//                self.DragonClingonGameBtn.titleLabel?.font =  UIFont.systemFont(ofSize: 15, weight: .bold)
//
//
//            }
//        }
        
    }
    
    func GetYandHeight(passView:UIView)->CGFloat {
        
        var NewY : CGFloat = 0
        
        NewY = passView.frame.origin.y + passView.frame.size.height + 10
        
        return NewY
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

