//
//  ViewController.swift
//  PatikaHomeworkTwo
//
//  Created by Hande Kara on 5/31/22.
//

import UIKit


///This class is about form page that is second page of app
class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!                                                                  // first text field that is name in page
    @IBOutlet weak var surnameTextField: UITextField!                                                               //second text field that is surname in page
    @IBOutlet weak var submitButton: UIButton!                                                                      //the submit button for form
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.layer.borderColor = UIColor.orange.cgColor                                                    //color of name text field border
        nameTextField.layer.borderWidth = 2                                                                         //border thickness
        surnameTextField.layer.borderColor = UIColor.orange.cgColor
        surnameTextField.layer.borderWidth = 2
        submitButton.layer.borderWidth = 3
        submitButton.layer.borderColor = UIColor.systemIndigo.cgColor
    }

    ///submit button triggers it , get the name from text fields and post it notification center, end page is closed
    @IBAction func submitButtonPressed(_ sender: Any) {
        
        let fullName = "\(self.nameTextField.text ?? "Nobody") \(self.surnameTextField.text ?? "Nobody")"           // get full name from text fields
        
        NotificationCenter.default.post(name: .nameNotification,
                                        object: nil, userInfo: ["name":fullName])                                   //post notification for full name of user
        
        self.dismiss(animated: true, completion: nil)                                                               //for closing second page and go back first

    }
    
}

///extension for identifiying the notification center
extension NSNotification.Name{
    static let nameNotification = Notification.Name.init(rawValue: "nameNotification")
}

