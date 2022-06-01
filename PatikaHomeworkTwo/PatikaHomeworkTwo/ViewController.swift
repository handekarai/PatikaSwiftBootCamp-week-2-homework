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
        nameTextField.layer.borderWidth = 2
        surnameTextField.layer.borderColor = UIColor.orange.cgColor
        surnameTextField.layer.borderWidth = 2
        submitButton.layer.borderWidth = 3
        submitButton.layer.borderColor = UIColor.systemIndigo.cgColor

    }

    @IBAction func submitButtonPressed(_ sender: Any) {
        if let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController{
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

