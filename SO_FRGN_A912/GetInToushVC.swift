//
//  GetInToushVC.swift
//  SO_FRGN_A912
//
//  Created by Jay Vaddoriya on 28/04/22.
//

import UIKit
import MessageUI

class GetInToushVC: UIViewController, UITextViewDelegate, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var NameTXT: UITextField!
    @IBOutlet weak var EmailTXT: UITextField!
    @IBOutlet weak var QuestionTXTVIEW: UITextView!
    @IBOutlet weak var SaveToMailingBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.NameTXT.layer.masksToBounds = false
        self.NameTXT.layer.cornerRadius = 10
        self.NameTXT.layer.borderColor = UIColor.black.cgColor
        self.NameTXT.layer.borderWidth = 1.0
        self.NameTXT.clipsToBounds = false
        
        self.EmailTXT.layer.masksToBounds = false
        self.EmailTXT.layer.cornerRadius = 10
        self.EmailTXT.layer.borderColor = UIColor.black.cgColor
        self.EmailTXT.layer.borderWidth = 1.0
        self.EmailTXT.clipsToBounds = false
        
        self.QuestionTXTVIEW.layer.masksToBounds = false
        self.QuestionTXTVIEW.layer.cornerRadius = 10
        self.QuestionTXTVIEW.layer.borderColor = UIColor.black.cgColor
        self.QuestionTXTVIEW.layer.borderWidth = 1.0
        self.QuestionTXTVIEW.clipsToBounds = false
        QuestionTXTVIEW.text = "Write Question"
        QuestionTXTVIEW.textColor = UIColor.lightGray
        QuestionTXTVIEW.delegate = self
        
        NameTXT.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0);
        EmailTXT.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0);
        QuestionTXTVIEW.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0);
        

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
        longTitleLabel.isUserInteractionEnabled = true
        self.navigationItem.hidesBackButton = true
        let leftItem = UIBarButtonItem(customView: longTitleLabel)
        self.navigationItem.leftBarButtonItem = leftItem
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTapURL(_:)))
        longTitleLabel.addGestureRecognizer(tap)
        
        let tapView = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tapView)
    }
    
    @objc func handleTapURL(_ sender: UITapGestureRecognizer? = nil) {
        // handling code
        guard let url = URL(string: "https://whyagain.org/") else { return }
        UIApplication.shared.open(url)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if QuestionTXTVIEW.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if QuestionTXTVIEW.text.isEmpty {
            textView.text = "Write Question"
            textView.textColor = UIColor.lightGray
        }
    }
    
    @IBAction func SaveMailingListAction(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    //jeanieryce@gmail.com
    //Please add me to your mailing list : Name: jay, Email ID: jvaddoriya@gmail.com
    //jvaddoriya@gmail.com
    @IBAction func SendAction(_ sender: UIButton) {
        
        view.endEditing(true)
        
        guard !(NameTXT.text?.isEmpty)! else {
            let alt = showAlertViewWithText("Name is required")
            self.present(alt, animated: true, completion: nil)
            return
        }
        
        guard !(EmailTXT.text?.isEmpty)! else {
            let alt = showAlertViewWithText("Email is required")
            self.present(alt, animated: true, completion: nil)
            return
        }
        
        guard (EmailTXT.text ?? "").isValidEmail() else {
            let alt = showAlertViewWithText("Enter valid Email")
            self.present(alt, animated: true, completion: nil)
            return
        }
        
        guard !(QuestionTXTVIEW.text?.isEmpty)! && QuestionTXTVIEW.text != "Write Question" else {
            let alt = showAlertViewWithText("Write something about your question")
            self.present(alt, animated: true, completion: nil)
            return
        }
        
        var Subject = ""
        if SaveToMailingBTN.isSelected {
            Subject = "Please add me to your mailing list : Name: \(NameTXT.text ?? ""), Email ID: \(EmailTXT.text ?? "")"
        } else {
            Subject = EmailTXT.text ?? ""
        }
        
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["jeanieryce@gmail.com"])
            mail.setSubject(Subject)
            mail.setMessageBody(QuestionTXTVIEW.text ?? "", isHTML: true)

            present(mail, animated: true)
        } else {
            // show failure alert
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
}
