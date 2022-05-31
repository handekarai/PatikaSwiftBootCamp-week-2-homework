//
//  ViewController.swift
//  PatikaHomeworkTwo
//
//  Created by Hande Kara on 5/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.layer.borderColor = UIColor.orange.cgColor
        nameTextField.layer.borderWidth = 1
        surnameTextField.layer.borderColor = UIColor.orange.cgColor
        surnameTextField.layer.borderWidth = 1
        
    }


}

