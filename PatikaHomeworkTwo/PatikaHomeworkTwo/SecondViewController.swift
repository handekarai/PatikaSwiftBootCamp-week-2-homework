//
//  ViewController.swift
//  PatikaHomeworkTwo
//
//  Created by Hande Kara on 5/31/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.layer.borderColor = UIColor.orange.cgColor
        nameTextField.layer.borderWidth = 2
        surnameTextField.layer.borderColor = UIColor.orange.cgColor
        surnameTextField.layer.borderWidth = 2
        submitButton.layer.borderWidth = 3
        submitButton.layer.borderColor = UIColor.systemIndigo.cgColor
    }

    @IBAction func submitButtonPressed(_ sender: Any) {
        
        let fullName = "\(self.nameTextField.text ?? "Nobody") \(self.surnameTextField.text ?? "Nobody")"
        
        NotificationCenter.default.post(name: .nameNotification,
                                        object: nil, userInfo: ["name":fullName])
        
        self.dismiss(animated: true, completion: nil)

    }
    
}

extension NSNotification.Name{
    static let nameNotification = Notification.Name.init(rawValue: "nameNotification")
}

