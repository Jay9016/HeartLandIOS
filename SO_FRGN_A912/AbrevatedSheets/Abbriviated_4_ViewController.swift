//
//  Abbriviated_4_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/6/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit

class Abbriviated_4_ViewController: UIViewController {
    var option : Int = 0
    @IBOutlet weak var NextBtn: UIButton!
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var yesyichooseBtn: UIButton!
    @IBAction func BackButtonAction(_ sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func next(_ sender: UIButton) {
        if(option == 0)
        {
            Constants.reality_wakeup4 =
                "\"step4\":\n" +
                "\t\t{\n" +
                "\t\t    \"reconnect\": \"No\"\n" +
            "\t\t},";
        }else{
        Constants.reality_wakeup4 =
            "\"step4\":\n" +
            "\t\t{\n" +
            "\t\t    \"reconnect\": \"Yes\"\n" +
        "\t\t},";
        }
        performSegue(withIdentifier: "toForm5Abbreviated", sender: self)
    }
    
    override func viewDidAppear(_ animated: Bool){
    
        
        if Constants.YesIChooseFirstSheet == true{
            option=1
            yesyichooseBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            yesyichooseBtn.isSelected = true
            
        }else{
            option=0
            yesyichooseBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            yesyichooseBtn.isSelected = false
            
        }
        
    }
    @IBAction func optionTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected)
        {
            option = 1
             Constants.YesIChooseFirstSheet = true
        }else{
            option = 0
             Constants.YesIChooseFirstSheet = false
        }
    }
    
    @IBAction func ReadTheFullStoryButtonAction(_ sender: Any) {
        if let url = URL(string: "http://www.whyagain.org/images/PDF/TheRoseTheButterfly.pdf"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
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
extension Abbriviated_4_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Abbriviated_4_ViewController()
        return vc
    }
}
