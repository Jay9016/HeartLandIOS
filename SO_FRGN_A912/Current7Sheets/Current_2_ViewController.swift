//
//  Current_2_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/8/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit

class Current_2_ViewController: UIViewController {
    var phy : Int = 0
    var men : Int = 0
    var emo : Int = 0
    var love : Int = 0
    var tolove : Int = 0
    var new_final : String = ""
    var love_str : String = ""
    @IBOutlet weak var NextBtn: UIButton!
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var lovabtn: UIButton!
    @IBOutlet weak var choosetoloveBtn: UIButton!
    @IBOutlet weak var physicalBtn: UIButton!
    @IBOutlet weak var mentalBtn: UIButton!
    @IBOutlet weak var emotinalBtn: UIButton!
    @IBAction func BackButtonAction(_ sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    override func viewDidAppear(_ animated: Bool){
        
        if Constants.ToLoveBtnSecandSheet == true{
            tolove = 1
            lovabtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            lovabtn.isSelected = true
            
        }else{
            tolove = 0
            lovabtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            lovabtn.isSelected = false
            
        }
        if Constants.ToChooseLoveBtnSecandSheet == true{
            love=1
            choosetoloveBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            choosetoloveBtn.isSelected = true
            
        }else{
            love=0
            choosetoloveBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            choosetoloveBtn.isSelected = false
            
        }
        if Constants.EmotipnalSecandSheet == true{
            emo=1
            emotinalBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            emotinalBtn.isSelected = true
            
        }else{
            emo=0
            emotinalBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            emotinalBtn.isSelected = false
            
        }
        if Constants.PhysicalSecandSheet == true{
            phy=1
            physicalBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            physicalBtn.isSelected = true
            
        }else{
            phy=0
            physicalBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            physicalBtn.isSelected = false
            
        }
        
        if Constants.MentalSecandSheet == true{
            men = 1
            mentalBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            mentalBtn.isSelected = true
            
        }else{
            men = 0
            mentalBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            mentalBtn.isSelected = false
            
        }
       
    }
    
    @IBAction func emotional(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            emo=1
            Constants.EmotipnalSecandSheet = true
        }else{
            emo=0
            Constants.EmotipnalSecandSheet = false
        }
    }
    @IBAction func mental(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            men=1
            Constants.MentalSecandSheet = true
        }else{
            men=0
            Constants.MentalSecandSheet = false
        }
    }
    @IBAction func physical(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            phy=1
            Constants.PhysicalSecandSheet = true
        }else{
            phy=0
            Constants.PhysicalSecandSheet = false
        }
    }
    @IBAction func LoveTruth(_ sender: Any) {
        
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if((sender as! UIButton).isSelected){
            tolove = 1
            Constants.ToLoveBtnSecandSheet = true
        }else{
            tolove = 0
            Constants.ToLoveBtnSecandSheet = false
        }
    }
    
    @IBAction func choose_to_love(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            love=1
            Constants.ToChooseLoveBtnSecandSheet = true
        }else{
            love=0
            Constants.ToChooseLoveBtnSecandSheet = false
        }
    }
    @IBAction func next(_ sender: UIButton) {
        new_final = ""
        love_str = ""
        if(phy==1){
            new_final += "Physical,"
        }
        if(men==1){
            new_final += "Mental,"
        }
        if(emo==1){
            new_final += "Emotional,"
        }
        
        if new_final.isEmpty{
            new_final = ","
        }
        
//        if(love==1){
//            love_str = " I willingly face and process out all dis-ease producing energies for/from all my relations (generations) "
//        }
        if(tolove==1){
            love_str = "Yes"
        }
        print(love_str)
        Constants.current2 =
            "\"step2\": {\n" +
            "      \"choose_to_love\": \""+love_str+"\",\n" +
            "      \"healingsymptoms\": \""+new_final.substring(to: new_final.index(before: new_final.endIndex))+"\"\n" +
        "    },";
        performSegue(withIdentifier: "toForm3Current", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.NextBtn.layer.masksToBounds = false
        self.NextBtn.layer.cornerRadius = 7
        self.NextBtn.layer.shadowColor = UIColor.lightGray.cgColor
        self.NextBtn.layer.borderWidth = 1.0
        self.NextBtn.clipsToBounds = false
        
        self.BackBtn.layer.masksToBounds = false
        self.BackBtn.layer.cornerRadius = 7
        self.BackBtn.layer.shadowColor = UIColor.lightGray.cgColor
        self.BackBtn.layer.borderWidth = 1.0
        self.BackBtn.clipsToBounds = false
        // Do any additional setup after loading the view.
        
        let btnX = (self.view.frame.size.width - (self.view.frame.size.width * 0.42)) / 2
        let btnY = (self.view.frame.size.height - (hasBottomNotch ? 140 : 100))
        let askButton = UIButton(frame: CGRect(x: btnX, y: btnY, width: self.view.frame.size.width * 0.42, height: 30))
        askButton.backgroundColor = UIColor(red: 237/255, green: 53/255, blue: 114/255, alpha: 1.0)
        askButton.setTitle(" Instant: Ask Question", for: .normal)
        askButton.setImage(UIImage(named: "ask_question"), for: .normal)
        askButton.setTitleColor(.white, for: .normal)
        if UIDevice().userInterfaceIdiom == .phone {
            askButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 10)
        } else {
            askButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
            let btnX = (self.view.frame.size.width - (self.view.frame.size.width * 0.3)) / 2
            let btnY = self.view.frame.size.height - 150
            askButton.frame = CGRect(x: btnX, y: btnY, width: self.view.frame.size.width * 0.3, height: 50)
        }
        askButton.addTarget(self, action: #selector(handleTapAskQuestion(_:)), for: .touchUpInside)
        askButton.layer.cornerRadius = 25
        self.view.addSubview(askButton)
        
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
        
        let tapURL = UITapGestureRecognizer(target: self, action: #selector(self.handleTapURL(_:)))
        longTitleLabel.addGestureRecognizer(tapURL)
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func encodeRestorableState(with coder: NSCoder) {
        
        // preserve only ID of Profile Model Object.
        
        coder.encode(phy, forKey: "phy")
        
        super.encodeRestorableState(with: coder)
    }

    override func decodeRestorableState(with coder: NSCoder) {
        
        // preserve only ID of Profile Model Object.
        phy = Int(coder.decodeInteger(forKey: "phy"))
        print(phy)
        super.decodeRestorableState(with: coder)
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
extension Current_2_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Current_2_ViewController()
        return vc
    }
}

