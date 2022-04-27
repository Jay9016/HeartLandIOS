//
//  Abbriviated_3_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/6/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit
var ScreenThirdString:String = ""
class Abbriviated_3_ViewController: UIViewController {

    @IBOutlet weak var goal: UITextView!
    @IBOutlet weak var goal_2: UITextView!
    @IBOutlet weak var NextBtn: UIButton!
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var Wordlabel: UILabel!
    @IBAction func BackButtonAction(_ sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
        
    }
    let textfieldDelegate = RDTextFieldDelegate()

    @IBAction func next(_ sender: UIButton) {
        
        if let text = goal.text, !text.isEmpty
        {
            ScreenThirdString = goal.text
        }
        
        Constants.reality_wakeup3 =
            "\"step3\":\n" +
            "\t\t{\n" +
            "\t\t    \"goal\": \""+goal.text!+"\",\n" +
            "\t\t    \"goal_2\": \""+goal_2.text!+"\"\n" +
        "\t\t},";
        performSegue(withIdentifier: "toForm4Abbreviated", sender: self)
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
        
        self.goal_2.layer.masksToBounds = false
        self.goal_2.layer.cornerRadius = 7
        self.goal_2.layer.shadowColor = UIColor.lightGray.cgColor
        self.goal_2.layer.borderWidth = 1.0
        self.goal_2.clipsToBounds = false
        
        self.goal.layer.masksToBounds = false
        self.goal.layer.cornerRadius = 7
        self.goal.layer.shadowColor = UIColor.lightGray.cgColor
        self.goal.layer.borderWidth = 1.0
        self.goal.clipsToBounds = false
        
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
        textfieldDelegate.initWithTextFields([self.goal,self.goal_2], onView: self.view)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)
        
        Wordlabel.text = "\(Wordlabel.text!) \(FirstScreenString)"
        
    }

    @objc func handleTap(_ sender: UITapGestureRecognizer) {        // handling code
        
        self.view.endEditing(true)
        
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
extension Abbriviated_3_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Abbriviated_3_ViewController()
        return vc
    }
}
