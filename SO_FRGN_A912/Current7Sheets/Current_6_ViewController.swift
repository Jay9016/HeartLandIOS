//
//  Current_6_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/8/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit

class Current_6_ViewController: UIViewController {

    @IBOutlet weak var lastLabel: UILabel!
    @IBOutlet weak var feel: UITextField!
    @IBOutlet weak var situation: UITextView!
    @IBOutlet weak var goal_3: UITextView!
    let textfieldDelegate = RDTextFieldDelegate()
    @IBOutlet weak var NextBtn: UIButton!
    @IBOutlet weak var BackBtn: UIButton!
    @IBAction func BackButtonAction(_ sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
        
    }
    @IBAction func next(_ sender: UIButton) {
        
        Constants.current6 = "\"step6\":\n" +
            "\t\t{\n" +
            "\t\t    \"feel\": \""+feel.text!+"\",\n" +
            "\t\t    \"situation\": \""+situation.text!+"\",\n" +
            "\t\t    \"goal_3\": \""+goal_3.text!+"\"\n" +
            "\t\t},";
            
//            "\"step6\": {\n" +
//            "      \"feel\": \""+feel.text!+"\",\n" +
//            "      \"situation\": \""+situation.text!+"\",\n" +
//            "      \"goal_3\": \""+goal_3.text!+"\"\n" +
//            "},";
//
//        _ = "\"step6\":\n" +
//            "\t\t{\n" +
//            "\t\t    \"feel\": \""+feel.text!++"\",\n" +
//            "\t\t    \"situation\": \""+situation.text!+"\",\n" +
//            "\t\t    \"goal_3\": \""+goal_3.text!+"\"\n" +
//            "\t\t},";
        
//        Constants.current5="\"step5\": {\n" +
//            "      \"my_goal\": \""+my_goal+"\",\n" +
//            "      \"invitedname\": \""+invitedname.text!+"\",\n" +
//            "      \"invite\": \""+new_final.substring(to: new_final.index(before: new_final.endIndex))+"\"\n" +
//            "},";
        
        performSegue(withIdentifier: "toForm7Current", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let label: UILabel = UILabel(frame: CGRect(origin: .zero, size: CGSize(width: 200, height: 50)))
//        label.backgroundColor = UIColor.clear
//        label.numberOfLines = 2
//        label.font = UIFont.boldSystemFont(ofSize: 14)
//        label.textAlignment = .left
//
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
        
        self.feel.layer.masksToBounds = false
        self.feel.layer.cornerRadius = 7
        self.feel.layer.shadowColor = UIColor.lightGray.cgColor
        self.feel.layer.borderWidth = 1.0
        self.feel.clipsToBounds = false
        
        self.situation.layer.masksToBounds = false
        self.situation.layer.cornerRadius = 7
        self.situation.layer.shadowColor = UIColor.lightGray.cgColor
        self.situation.layer.borderWidth = 1.0
        self.situation.clipsToBounds = false
        
        self.goal_3.layer.masksToBounds = false
        self.goal_3.layer.cornerRadius = 7
        self.goal_3.layer.shadowColor = UIColor.lightGray.cgColor
        self.goal_3.layer.borderWidth = 1.0
        self.goal_3.clipsToBounds = false
        
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
        textfieldDelegate.initWithTextFields([self.feel,self.situation, self.goal_3], onView: self.view)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)

        lastLabel.text = "I ask to be shown a time when I have not fulfilled a goal similar to " + thirdscreenstring + " for myself or another"
        // Do any additional setup after loading the view.
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
extension Current_6_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Current_6_ViewController()
        return vc
    }
}
