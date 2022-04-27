//
//  Current_7_ViewController.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 12/8/17.
//  Copyright © 2017 SpryoxMacMini. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class Current_7_ViewController: UIViewController {
    var chk3 : Int = 0
    var chk4 : Int = 0
    var chk5 : Int = 0
    var truth_s : Int = 0
    var love_s : Int = 0
    
    @IBOutlet weak var ScrollView: UIScrollView!
    var chk3_str : String = ""
    var chk4_str : String = ""
    var chk5_str : String = ""
    var truth_str : String = ""
    var love_str : String = ""
    
    @IBOutlet weak var lovinggoal: UILabel!
    var new_final : String = ""
    @IBOutlet weak var NextBtn: UIButton!
    var PdfUrl:String = ""
     var vwProgressPopup : UIView? = nil
    @IBOutlet weak var BackBtn: UIButton!
    @IBAction func BackButtonAction(_ sender: UIButton){
        
        self.navigationController?.popViewController(animated: true)
        
    }
    @IBAction func truth(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected)
        {
            truth_s=1
            Constants.truthBtnSeventhScreen = true
        }
        else{
            truth_s=0
            Constants.truthBtnSeventhScreen = false
        }
    }
    @IBAction func love(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected)
        {
            love_s=1
            Constants.perfectloveBtnSeventhScreen = true
        }
        else{
            love_s=0
            Constants.perfectloveBtnSeventhScreen = false
        }
    }
    @IBOutlet weak var truthBtn: UIButton!
    @IBOutlet weak var perfectloveBtn: UIButton!
    @IBOutlet weak var icommitloveBtn: UIButton!
    @IBOutlet weak var tohelpBtn: UIButton!
    @IBOutlet weak var successBtn: UIButton!
    @IBOutlet weak var acknowledge: UITextView!
    override func viewDidAppear(_ animated: Bool){
        
        //     public static var truthBtnSeventhScreen: Bool=false;
//        public static var perfectloveBtnSeventhScreen: Bool=false;
//        public static var icommitloveBtnSeventhScreen: Bool=false;
//        public static var tohelpBtnSeventhScreen: Bool=false;
//        public static var successBtnSeventhScreen: Bool=false;
        if Constants.truthBtnSeventhScreen == true{
            truth_s=1
            truthBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            truthBtn.isSelected = true
            
        }else{
            truth_s=0
            truthBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            truthBtn.isSelected = false
            
        }
        if Constants.perfectloveBtnSeventhScreen == true{
            love_s=1
            perfectloveBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            perfectloveBtn.isSelected = true
            
        }else{
            love_s=1
            perfectloveBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            perfectloveBtn.isSelected = false
            
        }
        if Constants.icommitloveBtnSeventhScreen == true{
            chk3=1
            icommitloveBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            icommitloveBtn.isSelected = true
            
        }else{
            chk3=0
            icommitloveBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            icommitloveBtn.isSelected = false
            
        }
        if Constants.tohelpBtnSeventhScreen == true{
            chk4=1
            tohelpBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            tohelpBtn.isSelected = true
            
        }else{
            chk4=0
            tohelpBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            tohelpBtn.isSelected = false
            
        }
        if Constants.successBtnSeventhScreen == true{
            chk5=1
            successBtn.setImage(UIImage(named: "checked")?.withRenderingMode(.alwaysOriginal), for: .selected)
            successBtn.isSelected = true
            
        }else{
            chk5=1
            successBtn.setImage(UIImage(named: "unchecked")?.withRenderingMode(.alwaysOriginal), for: .normal)
            successBtn.isSelected = false
            
        }
    }
    
    //        public static var icommitloveBtnSeventhScreen: Bool=false;
    //        public static var tohelpBtnSeventhScreen: Bool=false;
    //        public static var successBtnSeventhScreen: Bool=false;
    
    @IBAction func commit_to_love(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected)
        {
            chk3=1
            Constants.icommitloveBtnSeventhScreen = true
        }
        else{
            chk3=0
            Constants.icommitloveBtnSeventhScreen = false
        }
    }
    
    @IBAction func to_help(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected)
        {
            chk4=1
            Constants.tohelpBtnSeventhScreen = true
        }
        else{
            chk4=0
            Constants.tohelpBtnSeventhScreen = false
        }
        tohelpBtn.setTitle("Place the initials of and cancel the goal for " + thirdscreenstring + " for everyone who has not fulfilled this goal when I held it for them.", for: .selected)
    }
    
    @IBOutlet weak var initials: UITextField!
    @IBOutlet weak var upset_level: UITextField!
    @IBAction func successful(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if(sender.isSelected)
        {
            chk5=1
            Constants.successBtnSeventhScreen = true
        }
        else{
            chk5=0
            Constants.successBtnSeventhScreen = false
        }
    }
   
    @IBAction func next(_ sender: UIButton) {
        new_final = ""
        if(truth_s==1){
            new_final += "TRUTH,"
        }
        if(love_s==1){
            new_final += "PERFECT LOVE,"
        }
        
        if new_final.isEmpty{
            new_final = ","
        }
        if(chk3==1){
            chk3_str = "I commit to Love, to living a Human Life!"
        }
        if(chk4==1){
            chk4_str = "To help achieve this I do a mass canceling of all the times I wanted #3 from someone."
        }
        if(chk5==1){
            chk5_str = "Successful WakeUp Sheet"
        }
        Constants.current7 = "\"step7\": {\n" +
            "      \"choose_opportunity\": \""+new_final.substring(to: new_final.index(before: new_final.endIndex))+"\",\n" +
            "      \"acknowledge\": \""+acknowledge.text!+"\"\n" +
            "    },\n" +
            "    \"commit_to_love\": \""+chk3_str+"\",\n" +
            "    \"to_help\": \""+chk4_str+"\",\n" +
            "    \"initials\": \""+initials.text!+"\",\n" +
            "    \"upset_level_2\": \""+upset_level.text!+"\",\n" +
            "    \"successful\": \""+chk5_str+"\"\n" +
            "  }\n" +
        "}";
        
        print(Constants.current1 + Constants.current2 + Constants.current3 + Constants.current4 + Constants.current5 + Constants.current6 + Constants.current7)
        
        //self.ShowAlert("WhyAgain", AlertMessage: "Success.",AlertTag: 1002)
        self.getdatafromAPI()
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
        let PostString:String = Constants.current1 + Constants.current2 + Constants.current3 + Constants.current4 + Constants.current5 + Constants.current6 + Constants.current7
         print("PostString",PostString)
    
        let url: String = "http://www.wordpress-website.sprybees.com/SO_FRGN_A912/api/callapi.php"
    
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = HTTPMethod.post.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        let data = (PostString.data(using: .utf8))! as Data
        request.httpBody = data
        var obj = Parameters()
    
    var data1: NSData = PostString.data(using: .utf8)! as NSData
    var error: NSError?
    let header1 = ["Content-Type":"application/json"]
    // convert NSData to 'AnyObject'
    let anyObj: [String:Any] = try! JSONSerialization.jsonObject(with: data1 as Data, options: .mutableContainers) as! [String:Any]
    
    Alamofire.request(url, method: .post, parameters: anyObj, encoding: JSONEncoding.default, headers: header1).response { (data) in
            if let data = data.data, let utf8Text = String(data: data, encoding: .utf8) {
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
                            
                            DispatchQueue.main.async(execute: { () -> Void in
                                self.ResetButtons()
                                self.performSegue(withIdentifier: "toShowResult", sender: self)
                                
                            })
                            //self.ShowAlert("Heartland Aramaic Forgiveness", AlertMessage: "Success.",AlertTag: 1002)
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
                
                DispatchQueue.main.async(execute: { () -> Void in
                    self.ResetButtons()
                    self.performSegue(withIdentifier: "toShowResult", sender: self)
                    
                })
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
    
    
    let textfieldDelegate = RDTextFieldDelegate()
    override func viewDidLoad() {
        super.viewDidLoad()

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
        
       ScrollView.contentSize = CGSize(width: ScrollView.contentSize.width, height: 870)
        
        self.initials.layer.masksToBounds = false
        self.initials.layer.cornerRadius = 7
        self.initials.layer.shadowColor = UIColor.lightGray.cgColor
        self.initials.layer.borderWidth = 1.0
        self.initials.clipsToBounds = false
        
        self.upset_level.layer.masksToBounds = false
        self.upset_level.layer.cornerRadius = 7
        self.upset_level.layer.shadowColor = UIColor.lightGray.cgColor
        self.upset_level.layer.borderWidth = 1.0
        self.upset_level.clipsToBounds = false
        
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
        
        textfieldDelegate.initWithTextFields([self.initials,self.upset_level, self.acknowledge], onView: self.view)
        
        if UIDevice().userInterfaceIdiom == .phone {
            //[UIScreen mainScreen].bounds.size.height > 480.0f ? 200 : 100;
            if UIScreen.main.bounds.width == 375{
                
                self.ScrollView.frame = CGRect(x: 0, y: 0, width:  UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
                
                print("i am here")
            }else{
                
                self.ScrollView.frame = CGRect(x: 0, y: 0, width:  UIScreen.main.bounds.width, height:  UIScreen.main.bounds.height)
                
                print("i am here")
                
            }
        }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)
        
         tohelpBtn.setTitle("Place the initials of and cancel the goal for " + thirdscreenstring + " for everyone who has not fulfilled this goal when I held it for them.", for: .normal)
        tohelpBtn.setTitle("Place the initials of and cancel the goal for " + thirdscreenstring + " for everyone who has not fulfilled this goal when I held it for them.", for: .selected)
        
        lovinggoal.text = FSFFString + ", based on " + thirdscreenstring + " I structure a truly Loving goal toward you and offer to you "

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
extension Current_7_ViewController: UIViewControllerRestoration {
    static func viewController(withRestorationIdentifierPath identifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = Current_7_ViewController()
        return vc
    }
}
