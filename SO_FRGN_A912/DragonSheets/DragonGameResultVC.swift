//
//  DragonGameResultVC.swift
//  SO_FRGN_A912
//
//  Created by SpryoxMacMini on 8/4/18.
//  Copyright © 2018 SpryoxMacMini. All rights reserved.
//

import UIKit
import AVFoundation
class DragonGameResultVC: UIViewController,UITableViewDelegate,UITableViewDataSource,UIImagePickerControllerDelegate, UINavigationControllerDelegate,UIPopoverControllerDelegate  {

    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var resultUIView: UIView!
    @IBOutlet weak var titlefirstLbl: UILabel!
    @IBOutlet weak var totalpointsLbl: UILabel!
    @IBOutlet weak var resultTblView: UITableView!
    @IBOutlet weak var criteriaUIView: UIView!
    @IBOutlet weak var titlesecandLbl: UILabel!
    @IBOutlet weak var criteriaTblView: UITableView!
    @IBOutlet weak var saveresultBtn: UIButton!
    
    var PagaNumber = [String]()
    
    var PointAtPage = [Int]()
   
    var CriteRiaPoint = [String]()
    
    var CriteriaDesc = [String]()
    
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var folderBtn: UIBarButtonItem!
    @IBOutlet weak var cloudBtn: UIBarButtonItem!
    @IBOutlet weak var saveBarBtn: UIBarButtonItem!
    
    @IBOutlet weak var instructionpopupview: UIView!
    
    @IBOutlet weak var instructionlbl1: UILabel!
    
    @IBOutlet weak var instructionlbl2: UILabel!
    
    @IBOutlet weak var instructionlbl3: UILabel!
    
    @IBOutlet weak var okBtn: UIButton!
    var popover:UIPopoverController?=nil
    
    @IBAction func SaveButtonAction(_ sender: Any) {
        
        UIGraphicsBeginImageContextWithOptions(view.frame.size, true, 0)
        guard let context = UIGraphicsGetCurrentContext() else { return }
        view.layer.render(in: context)
        guard let image = UIGraphicsGetImageFromCurrentImageContext() else { return }
        UIGraphicsEndImageContext()
        
        //Save it to the camera roll
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        
        
    }
    var picker: UIImagePickerController? = UIImagePickerController()
    var imageDatabaseData: Data = Data()
    
    
    var TotalPoints : Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.instructionpopupview.setBorder()
        
        self.okBtn.setBorder()
        
        self.view.bringSubview(toFront: instructionpopupview)
        
        self.saveresultBtn.isHidden = true
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white,NSAttributedStringKey.font: UIFont(name: "HelveticaNeue-Bold", size: 15)!]
        
        saveresultBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        resultLbl.adjustsFontSizeToFitWidth = true
        titlefirstLbl.adjustsFontSizeToFitWidth = true
        totalpointsLbl.adjustsFontSizeToFitWidth = true
        titlesecandLbl.adjustsFontSizeToFitWidth = true
        
         self.picker?.delegate = self
        
        PagaNumber = ["Page 1 Points","Page 2 Points","Page 3 Points","Page 4 Points","Page 5 Points","Page 6 Points","Page 7 Points","Page 8 Points"]
        
        PointAtPage = [DragonGame.page1PointString,DragonGame.page2PointString,DragonGame.page3PointString,DragonGame.page4PointString,DragonGame.page5PointString, DragonGame.page6PointString,DragonGame.page7PointString,DragonGame.page8PointString]
        
        CriteRiaPoint = ["0 (won’t play)","1 - 40 ","41 - 80 ","81 - 120","121 - 140 ","141 - 160 ","161 - 180","181 - 200 ","Over 200"]
        
        CriteriaDesc = ["road kill","a slug","a pretty rock","a gnat","an intelligent lizard","a wise walrus","a soaring eagle","White Lightening!","Greased White Lightening!"]
        
        resultUIView.layer.borderWidth = 1.0
        resultUIView.layer.borderColor = UIColor.white.cgColor
        resultUIView.layer.masksToBounds = true
        resultUIView.layer.cornerRadius = 5
        resultUIView.layer.borderWidth = 1.0
        
        criteriaUIView.layer.borderWidth = 1.0
        criteriaUIView.layer.borderColor = UIColor.white.cgColor
        criteriaUIView.layer.masksToBounds = true
        criteriaUIView.layer.cornerRadius = 5
        criteriaUIView.layer.borderWidth = 1.0
        
        resultTblView.layer.borderWidth = 1.0
        resultTblView.layer.borderColor = UIColor.white.cgColor
        resultTblView.layer.masksToBounds = true
        resultTblView.layer.cornerRadius = 5
        resultTblView.layer.borderWidth = 1.0
        
        criteriaTblView.layer.borderWidth = 1.0
        criteriaTblView.layer.borderColor = UIColor.white.cgColor
        criteriaTblView.layer.masksToBounds = true
        criteriaTblView.layer.cornerRadius = 5
        criteriaTblView.layer.borderWidth = 1.0
        
        nextBtn.layer.borderWidth = 1.0
        nextBtn.layer.borderColor = UIColor.red.cgColor
        nextBtn.layer.masksToBounds = true
        nextBtn.layer.cornerRadius = 5
        nextBtn.layer.borderWidth = 1.0
        
        
        totalpointsLbl.text = "Total points all pages: " + String(DragonGame.page1PointString + DragonGame.page2PointString + DragonGame.page3PointString + DragonGame.page4PointString + DragonGame.page5PointString + DragonGame.page6PointString + DragonGame.page7PointString + DragonGame.page8PointString)
        
        
        if(UIDevice .current.userInterfaceIdiom == .pad) {
            
            self.nextBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
           
        }
        
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
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTapURL(_:)))
        longTitleLabel.addGestureRecognizer(tap)
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

    @objc func callMethod() {
        //do stuff here
        self.navigationController?.popViewController(animated: true)
        
    }
    
    func ShowAction() {
        
        
        if(UIDevice .current.userInterfaceIdiom == .phone) {
            
            self.view.endEditing(true)
            
            let alert: UIAlertController = UIAlertController(title: "INSTRUCTION", message: nil, preferredStyle: .actionSheet)
            
            let cameraAction = UIAlertAction(title: "1. Save your final scores for future reference.", style: .default){
                UIAlertAction in
                
                
            }
            alert.addAction(cameraAction)
            
            let gallaryAction = UIAlertAction(title: "2. Browse your past saved final scores.", style: .default){
                UIAlertAction in
                
                
            }
            alert.addAction(gallaryAction)
            
            let gallaryActio = UIAlertAction(title: "3. Print out a PDF of a blank worksheet.", style: .default){
                UIAlertAction in
                
                
            }
            alert.addAction(gallaryActio)
            
            let cancelAction = UIAlertAction(title: "Ok", style: .cancel){
                UIAlertAction in
                
            }
            alert.addAction(cancelAction)
            
            self.present(alert, animated: true, completion: nil)
            
        } else {
            
            let alert: UIAlertController = UIAlertController(title: "INSTRUCTION", message: nil, preferredStyle: .actionSheet)
            
            let cameraAction = UIAlertAction(title: "1. Save your final scores for future reference.", style: .default){
                UIAlertAction in
                
                
            }
            alert.addAction(cameraAction)
            
            let gallaryAction = UIAlertAction(title: "2. Browse your pase saved final scores.", style: .default){
                UIAlertAction in
                
                
            }
            alert.addAction(gallaryAction)
            
            let gallaryActio = UIAlertAction(title: "3. Print out a PDF of a blank worksheet.", style: .default){
                UIAlertAction in
                
                
            }
            alert.addAction(gallaryActio)
            
            let cancelAction = UIAlertAction(title: "Ok", style: .cancel){
                UIAlertAction in
                
            }
            alert.addAction(cancelAction)
            
//            popover = UIPopoverController(contentViewController: alert)
//            popover?.delegate = self
//
//            popover!.present(from: nextBtn.frame, in: self.view, permittedArrowDirections: UIPopoverArrowDirection.up, animated: true)
            
            if let currentPopoverpresentioncontroller = alert.popoverPresentationController{
                currentPopoverpresentioncontroller.sourceView = nextBtn
                currentPopoverpresentioncontroller.sourceRect = resultTblView.bounds;
                currentPopoverpresentioncontroller.permittedArrowDirections = UIPopoverArrowDirection.up;
                self.present(alert, animated: true, completion: nil)
            }
        }
       
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var CellCount: Int = Int()
        
        if tableView == resultTblView{
            
            CellCount = 8
            
        }else{
            
            CellCount = 9
        }
        
        return CellCount
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == resultTblView{
            
             let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DragonGameResultTableViewCell
            
             cell.firstLbl.text = self.PagaNumber[indexPath.row]
             cell.secandLbl.text = String(self.PointAtPage[indexPath.row])
            
             return cell
            
        }else{
            
             let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DragonGameCriteriaTableViewCell
            
             cell.firstLbl.text = self.CriteRiaPoint[indexPath.row]
             cell.secandLbl.text = self.CriteriaDesc[indexPath.row]
            
             return cell
        }

    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if(UIDevice .current.userInterfaceIdiom == .phone) {
            
            return 20
            
        } else {
            
            return 50
            
        }
        
        
    }
    
    @IBAction func NextButtonAction(_ sender: Any) {

        
        let DGShareVC: DragonGameShareVC = self.storyboard?.instantiateViewController(withIdentifier: "DGShareVC") as! DragonGameShareVC
        self.navigationController?.pushViewController(DGShareVC, animated: true)

    }
    @IBAction func OkButtonAction(_ sender: Any) {
        
       self.instructionpopupview.isHidden = true
    }
    
    @IBAction func SaveResultButtonAction(_ sender: Any) {
        
//        UIGraphicsBeginImageContextWithOptions(view.frame.size, true, 0)
//        guard let context = UIGraphicsGetCurrentContext() else { return }
//        view.layer.render(in: context)
//        guard let image = UIGraphicsGetImageFromCurrentImageContext() else { return }
//        UIGraphicsEndImageContext()
//
//        //Save it to the camera roll
//        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
//
    }
    func showAlert(Title: String, Message: String) {
        
        let alert = UIAlertController(title: Title, message: Message, preferredStyle:
            UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func FolderButtonAction(_ sender: Any) {
        
        self.openGallary()
        
    }
    
    func openGallary() {
        
        picker!.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(picker!, animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let originalimageToPost = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            picker.dismiss(animated: true, completion: nil)
        }
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func CloudButtonAction(_ sender: Any) {
        
            if let url = URL(string: "https://whyagain.org/wp/wp-content/uploads/2012/06/DragonClingonGame.pdf"), UIApplication.shared.canOpenURL(url) {
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
