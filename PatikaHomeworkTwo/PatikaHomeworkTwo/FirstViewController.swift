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
        
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(submitSucces),
                                               name: NSNotification.Name("com.hande"),
                                               object: nil)
        nameTextLabel.text = name ?? "Hello Nobody"
    }
    
    @IBAction func formButtonPressed(_ sender: Any) {
        
        if let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController{
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    @objc func submitSucces(_ notification:Notification){
        let nameFromForm = notification.userInfo!["name"] as! String
        self.nameTextLabel.text = nameFromForm
        
    }

}
