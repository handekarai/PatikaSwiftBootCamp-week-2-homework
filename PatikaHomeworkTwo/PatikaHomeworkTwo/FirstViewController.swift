//
//  SecondViewController.swift
//  PatikaHomeworkTwo
//
//  Created by Hande Kara on 5/31/22.
//

import UIKit

///This class is about first page when app starts
class FirstViewController: UIViewController {
       
    @IBOutlet weak var nameTextLabel: UILabel!                                                      //Hello Label
    @IBOutlet weak var formButton: UIButton!                                                        //Go to Form Button
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextLabel.text = "Hello Nobody"                                                         //User sees at beginning
        formButton.layer.borderWidth = 3                                                            //Defines button's border thickness
        formButton.layer.borderColor = UIColor.systemIndigo.cgColor                                 //Defines button's border color
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(submitSucces),                   //Observes the notification
                                               name: .nameNotification,                             //from .nameNotification center
                                               object: nil)
    }
    
    ///When go to form is pressed, then the form page opens from bottom of app to up
    @IBAction func formButtonPressed(_ sender: Any) {
        
        if let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(
            withIdentifier: "SecondViewController") as? SecondViewController{
            self.present(vc, animated: true) {
            }
        }
    }
    
    ///Submit button triggers this function, hello label is uptated according to name
    @objc func submitSucces(_ notification:Notification){
        guard let nameFromForm = notification.userInfo?["name"] as? String else { return }
        self.nameTextLabel.text = "Hello \(nameFromForm)"
    }

}
