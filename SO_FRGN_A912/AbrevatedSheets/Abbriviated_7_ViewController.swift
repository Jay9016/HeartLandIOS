//
//  Abbriviated_7_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/6/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class Abbriviated_7_ViewController: UIViewController {

    @IBOutlet weak var acknowledge: UITextView!
    @IBOutlet weak var NextBtn: UIButton!
    @IBOutlet weak var acknowledgeLbl: UILabel!
    var vwProgressPopup : UIView? = nil
    var PdfUrl:String = ""
    let textfieldDelegate = RDTextFieldDelegate()
    
    @IBOutlet weak var BackBtn: UIButton!
    @IBAction func BackButtonAction(_ sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func submit(_ sender: UIButton) {
        Constants.reality_wakeup7 = "\"step7\":\n" +
            "\t\t{\n" +
            "\t\t    \"acknowledge\": \""+acknowledge.text!+"\"\n" +
            "\t\t}\n" +
            "\t}\n" +
            "}";
        
        self.getdatafromAPI()
        
         //self.ShowAlert("WhyAgain", AlertMessage: "Some error occured. Please try again after some time.",AlertTag: 1002)
    }
    
    func showProgress(msg: String, withIndicator: Bool)
    {
        let lblMessage = UILabel(frame: CGRect(x: 50, y: 0, width: 200, height: 50))
        lblMessage.text = msg
        lblMessage.textColor = UIColor.white
        vwProgressPopup = UIView(frame: CGRect(x: view.frame.midX - 90, y: view.frame.midY - 25 , width: 200, height: 50))
        vwProgressPopup?.layer.cornerRadius = 15
        vwProgressPopup?.backgroundColor = UIColor(white: 0, alpha: 0.7)
        if (withIndicator)
        {
            let progressActivityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.white)
            progressActivityIndicator.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
            progressActivityIndicator.startAnimating()
            vwProgressPopup?.addSubview(progressActivityIndicator)
        }
        vwProgressPopup?.addSubview(lblMessage)
        view.addSubview(vwProgressPopup!)
    }
    
    func getdatafromAPI()
    {
        showProgress(msg: "Loading...", withIndicator: true)
        var PostString:String = Constants.reality_wakeup1 + Constants.reality_wakeup2 + Constants.reality_wakeup3 + Constants.reality_wakeup4 + Constants.reality_wakeup5 + Constants.reality_wakeup6 + Constants.reality_wakeup7
        
        print(PostString)
        
        let url: String = "https://healingthewholewoman.whyagain.org/api/callapi.php"
        
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = HTTPMethod.post.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        let data = (PostString.data(using: .utf8))! as Data
        request.httpBody = data
        //        Alamofire.request(url,parameters : newObject,encoding: JSONEncoding.default)
        Alamofire.request(request).responseJSON { response in
            self.vwProgressPopup?.removeFromSuperview()
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
                if let newData = utf8Text.data(using: String.Encoding.utf8){
                    do{
                        let json = try JSON(data: newData)
                        let thedata = json["response"]
                        if(thedata.stringValue == "success"){
                            
                            let prodarray = json["response_data"]
                            let userpdf = prodarray["user_pdf"]
                            self.PdfUrl = userpdf["pdf_url"].stringValue
                            
                            print("json",json)
                            print("PdfUrl",self.PdfUrl)
                            
                            //self.showToast(message: "Some error occured. Please try again after some time.")
                            //self.ShowAlert("Heartland Aramaic Forgiveness", AlertMessage: "Success.",AlertTag: 1002)
                            
                            DispatchQueue.main.async(execute: { () -> Void in
                                self.ResetButtons()
                                self.performSegue(withIdentifier: "toShowResult", sender: self)
                                
                            })
                            
                        }else{
                            //self.showToast(message:"Your order has been placed.")
                            
                            self.ShowAlert("Heartland Aramaic Forgiveness", AlertMessage: "Some error occured. Please try again after some time.",AlertTag: 1001)
                            
                        }
                    }catch _ as NSError {
                        // error
                    }
                }
            }
        }
    }
    
    func ShowAlert(_ AlertTitle:String, AlertMessage:String, AlertTag:NSInteger) {
        
        // Initialize Alert Controller
        let alertController = UIAlertController(title: AlertTitle, message: AlertMessage, preferredStyle: .alert)
        
        // Initialize Actions
        let OkAction = UIAlertAction(title: "Ok", style: .default) { (action) -> Void in
            if AlertTag == 1002 {
                
//                DispatchQueue.main.async(execute: { () -> Void in
//                    self.ResetButtons()
//                    self.performSegue(withIdentifier: "toShowResult", sender: self)
//
//                })
            }
            
        }
        //Add Actions
        alertController.addAction(OkAction)
        
        // Move to the UI thread
        DispatchQueue.main.async(execute: { () -> Void in
            // Present Alert Controller
            self.present(alertController, animated: true, completion: nil)
        })
        
    }
    
    func ResetButtons(){
        Constants.PhysicalFirstSheet = false;
        Constants.MentalFirstSheet = false;
        Constants.EmotipnalFirstSheet = false;
        
        // Screen Fourth
        Constants.YesIChooseFirstSheet = false;
        Constants.ToinclinemebtnFirstSheet = false;
        Constants.RestoremeBtnFirstSheet = false;
        Constants.AsistmeBtnFirstSheet = false;
        //Constants.HelpmeFirstSheet = false;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "toShowResult"?:
            let destVC = segue.destination as! ResultViewController
            destVC.PdfUrl=self.PdfUrl
            break
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        acknowledgeLbl.text = "I acknowledge us for creating TRUTH, PERFECT LOVE and write a goal, based in your issue, that you are willing to set toward " + FirstScreenString
        
        self.acknowledge.layer.masksToBounds = false
        self.acknowledge.layer.cornerRadius = 7
        self.acknowledge.layer.shadowColor = UIColor.lightGray.cgColor
        self.acknowledge.layer.borderWidth = 1.0
        self.acknowledge.clipsToBounds = false
        
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
        
        textfieldDelegate.initWithTextFields([self.acknowledge], onView: self.view)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)
        
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
        DispatchQueue.main.async {
            askButton.layer.cornerRadius = askButton.frame.height / 2
        }
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
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension Abbriviated_7_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Abbriviated_7_ViewController()
        return vc
    }
}
