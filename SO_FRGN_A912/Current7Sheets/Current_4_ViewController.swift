//
//  Current_4_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/8/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit

class Current_4_ViewController: UIViewController {
    var recc : Int = 0
    var reccstr : String = ""
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var roseandbutterflyBtn: UIButton!
    @IBAction func BackButtonAction(_ sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    override func viewDidAppear(_ animated: Bool){
    
        if Constants.RoseAndButterFlyBtnSecandSheet == true{
            recc=1
            roseandbutterflyBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            roseandbutterflyBtn.isSelected = true
            
        }else{
            recc=0
            roseandbutterflyBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            roseandbutterflyBtn.isSelected = false
            
        }
    
    }
    
    @IBAction func reconnect(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected){
            recc=1
            Constants.RoseAndButterFlyBtnSecandSheet = true
        }else{
            Constants.RoseAndButterFlyBtnSecandSheet = false
            recc=0
        }
    }
    @IBAction func next(_ sender: UIButton) {
        if(recc==1){
            reccstr = "Yes"
        }
        Constants.current4="\"step4\": {\n" +
            "      \"reconnect\": \""+reccstr+"\"\n" +
        "    },";
        performSegue(withIdentifier: "toForm5Current", sender: self)
    }
    
    @IBOutlet weak var NextBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

//        let label: UILabel = UILabel(frame: CGRect(origin: .zero, size: CGSize(width: 200, height: 50)))
//        label.backgroundColor = UIColor.clear
//        label.numberOfLines = 2
//        label.font = UIFont.boldSystemFont(ofSize: 14)
//        label.textAlignment = .center
//        label.textColor = UIColor.white
//        label.text = "Heartland Aramaic Forgiveness\nwww.whyagain.org"
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
    }

    @IBAction func ReadTheStory(_ sender: Any) {
        
//        if let url = URL(string: "http://www.whyagain.org/index.php/en/images/PDF/TheRoseTheButterfly.pdf"), UIApplication.shared.canOpenURL(url) {
//            UIApplication.shared.open(url)
//        }
        
        if let url = URL(string: "http://www.whyagain.org/images/PDF/TheRoseTheButterfly.pdf"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func WatchVideo(_ sender: Any) {
        //https://www.youtube.com/watch?v=aOLqVshIM4w
        if let url = URL(string: "https://www.youtube.com/watch?v=aOLqVshIM4w"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
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
extension Current_4_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Current_4_ViewController()
        return vc
    }
}
