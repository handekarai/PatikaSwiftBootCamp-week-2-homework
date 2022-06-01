//
//  SecondViewController.swift
//  PatikaHomeworkTwo
//
//  Created by Hande Kara on 5/31/22.
//

import UIKit

class FirstViewController: UIViewController {
   
    
    var name: String? = nil
    @IBOutlet weak var nameTextLabel: UILabel!
    

    @IBOutlet weak var formButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextLabel.text = name ?? "Hello Nobody"
        formButton.layer.borderWidth = 3
        formButton.layer.borderColor = UIColor.systemIndigo.cgColor
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(submitSucces),
                                               name: .nameNotification,
                                               object: nil)
    }
    
    @IBAction func formButtonPressed(_ sender: Any) {
        
        if let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController{
            self.present(vc, animated: true) {
            }
        }
        
    }
    
    @objc func submitSucces(_ notification:Notification){
        let nameFromForm = notification.userInfo!["name"] as! String
        self.nameTextLabel.text = "Hello \(nameFromForm)"
        
    }

}
