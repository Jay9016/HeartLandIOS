//
//  AlertView.swift
//  SO_FRGN_A912
//
//  Created by Jigar Sojitra on 08/06/21.
//  Copyright © 2021 SpryoxMacMini. All rights reserved.
//

import Foundation
import UIKit

func SetAlert(Title:String,Message:String,View:UIViewController)  {
    
    let alertBackView = UIView()
    alertBackView.frame = View.view.bounds
    alertBackView.backgroundColor = UIColor.clear
    View.view.addSubview(alertBackView)
    
    let AlertView = UIView()
    AlertView.frame = CGRect(x: 0, y: 0, width: View.view.frame.size.width * 0.8, height: View.view.frame.size.height * 0.6)
    AlertView.backgroundColor = UIColor.white
    AlertView.layer.cornerRadius = 10
    AlertView.center = View.view.center
    alertBackView.addSubview(AlertView)
    
    let TitleLabel = UILabel()
    TitleLabel.frame = CGRect(x: 0, y: 0, width: AlertView.frame.size.width, height: AlertView.frame.size.height * 0.1)
    TitleLabel.text = Title
    TitleLabel.textAlignment = .center
    TitleLabel.font = UIFont.boldSystemFont(ofSize: 18)
    AlertView.addSubview(TitleLabel)
    
    let TextView = UITextView()
    TextView.isEditable = false
    TextView.isSelectable = false
    TextView.frame = CGRect(x: 0, y: TitleLabel.frame.size.height + 5, width: AlertView.frame.size.width, height: AlertView.frame.size.height * 0.8)
    TextView.text = Message
    TextView.textAlignment = .center
    TextView.font = UIFont.systemFont(ofSize: 15)
    TextView.textColor = UIColor.black
    AlertView.addSubview(TextView)
    
    let OkButton = UIButton()
    OkButton.frame = CGRect(x: 0, y: TextView.frame.origin.y + TextView.frame.size.height, width: AlertView.frame.size.width, height: AlertView.frame.size.height * 0.09)
    OkButton.setTitle("OK", for: .normal)
    OkButton.setTitleColor(UIColor.systemBlue, for: .normal)
    OkButton.setOnClickListener {
        alertBackView.removeFromSuperview()
    }
    AlertView.addSubview(OkButton)
    
}

class ClosureSleeve {
  let closure: () -> ()

  init(attachTo: AnyObject, closure: @escaping () -> ()) {
    self.closure = closure
    objc_setAssociatedObject(attachTo, "[\(arc4random())]", self, .OBJC_ASSOCIATION_RETAIN)
  }

  @objc func invoke() {
    closure()
  }
}

extension UIControl {
    func setOnClickListener(for controlEvents: UIControl.Event = .primaryActionTriggered, action: @escaping () -> ()) {
        let sleeve = ClosureSleeve(attachTo: self, closure: action)
        addTarget(sleeve, action: #selector(ClosureSleeve.invoke), for: controlEvents)
    }
}
