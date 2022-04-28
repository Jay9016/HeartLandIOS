//
//  InstructionViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 8/2/18.
//  Copyright © 2018 SpryoxMacMini. All rights reserved.
//

import UIKit

class DragonInstructionViewController: UIViewController {
   
    @IBOutlet weak var MainBgView: UIView!
    @IBOutlet weak var DragonImgView: UIImageView!
    
    @IBOutlet weak var firstinstructionLbl: UILabel!
    @IBOutlet weak var secsbdinstructionLbl: UILabel!
    @IBOutlet weak var thirdinstructionLbl: UILabel!
    
    @IBOutlet weak var TipsView: UIView!
    @IBOutlet weak var tip1Lbl: UILabel!
    @IBOutlet weak var tip2Lb2: UILabel!
    @IBOutlet weak var tip3Lb3: UILabel!
    @IBOutlet weak var tip4Lb4: UILabel!
    @IBOutlet weak var tip5Lb3: UILabel!
    @IBOutlet weak var tip6Lb4: UILabel!
    
    @IBOutlet weak var startBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
  
       
        firstinstructionLbl.adjustsFontSizeToFitWidth = true
        secsbdinstructionLbl.adjustsFontSizeToFitWidth = true
        thirdinstructionLbl.adjustsFontSizeToFitWidth = true
        
        
        tip1Lbl.adjustsFontSizeToFitWidth = true
        tip2Lb2.adjustsFontSizeToFitWidth = true
        tip3Lb3.adjustsFontSizeToFitWidth = true
        tip4Lb4.adjustsFontSizeToFitWidth = true
        tip5Lb3.adjustsFontSizeToFitWidth = true
        tip6Lb4.adjustsFontSizeToFitWidth = true
        
//        navigationController?.navigationBar.barTintColor = .red
//        navigationController?.navigationBar.tintColor = .white
//        navigationController?.navigationBar.isTranslucent = false
        
//        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white,NSAttributedStringKey.font: UIFont(name: "HelveticaNeue-Bold", size: 15)!]
        
//        self.title = "Drag-on & Cling-on Game"
        
        
//        let button = UIButton.init(type: .custom)
//        button.setImage(UIImage.init(named: "back"), for: UIControlState.normal)
//        button.addTarget(self, action:#selector(self.callMethod), for:.touchUpInside)
//        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 30)
//        button.tintColor = UIColor.white
//        //CGRectMake(0, 0, 30, 30)
//        let barButton = UIBarButtonItem.init(customView: button)
//        self.navigationItem.leftBarButtonItem = barButton
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
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
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        longTitleLabel.addGestureRecognizer(tap)
        
        
        firstinstructionLbl.layer.borderWidth = 1.0
        firstinstructionLbl.layer.borderColor = UIColor.white.cgColor
        firstinstructionLbl.layer.masksToBounds = true
        firstinstructionLbl.layer.cornerRadius = 5
        firstinstructionLbl.layer.borderWidth = 1.0
        
        secsbdinstructionLbl.layer.borderWidth = 1.0
        secsbdinstructionLbl.layer.borderColor = UIColor.white.cgColor
        secsbdinstructionLbl.layer.masksToBounds = true
        secsbdinstructionLbl.layer.cornerRadius = 5
        secsbdinstructionLbl.layer.borderWidth = 1.0
        
        thirdinstructionLbl.layer.borderWidth = 1.0
        thirdinstructionLbl.layer.borderColor = UIColor.white.cgColor
        thirdinstructionLbl.layer.masksToBounds = true
        thirdinstructionLbl.layer.cornerRadius = 5
        thirdinstructionLbl.layer.borderWidth = 1.0
        
        TipsView.layer.borderWidth = 1.0
        TipsView.layer.borderColor = UIColor.white.cgColor
        TipsView.layer.masksToBounds = true
        TipsView.layer.cornerRadius = 5
        TipsView.layer.borderWidth = 1.0
        
        startBtn.layer.borderWidth = 1.0
        startBtn.layer.borderColor = UIColor.white.cgColor
        startBtn.layer.masksToBounds = true
        startBtn.layer.cornerRadius = 10
        startBtn.layer.borderWidth = 1.0
        
       startBtn.backgroundColor = UIColor.red
        
        if(UIDevice .current.userInterfaceIdiom == .pad) {
            
            self.startBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            
        }
        
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
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
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.tintColor = .white
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func StartButtonAction(_ sender: Any) {
        
        let DragonSheet1_VC: DragonClingonGameSheet_1_VC = self.storyboard?.instantiateViewController(withIdentifier: "DragonSheet1_VC") as! DragonClingonGameSheet_1_VC
        self.navigationController?.pushViewController(DragonSheet1_VC, animated: true)
        
    }
    
    @IBAction func BackButtonAction(_ sender: Any) {
     
        self.dismiss(animated: true, completion: nil)
    
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        
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

extension UIViewController: UIGestureRecognizerDelegate {
    private func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}
