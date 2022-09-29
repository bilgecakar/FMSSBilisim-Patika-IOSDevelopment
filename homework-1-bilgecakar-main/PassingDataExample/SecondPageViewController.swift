//
//  SecondPageViewController.swift
//  PassingDataExample
//
//  Created by Bilge Çakar on 10.09.2022.
//

import UIKit

class SecondPageViewController: UIViewController {
    
    @IBOutlet weak var nameTextfield: UITextField!          //Represent customer's name
    @IBOutlet weak var surnameTextfield: UITextField!       //Represent customer's surname
    @IBOutlet weak var emailTextfield: UITextField!         //Represent customer's email address
    @IBOutlet weak var arrivalTextfield: UITextField!       //Represent arrival date
    @IBOutlet weak var departureTextfield: UITextField!     //Represent departure date
    @IBOutlet weak var bookButton: UIButton! {
        didSet {
            bookButton.layer.cornerRadius = 15
        }
    }
    
    var onButtonTap: ((_ data: [String]) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Delegations
        nameTextfield.delegate = self
        surnameTextfield.delegate = self
        emailTextfield.delegate = self
        arrivalTextfield.delegate = self
        departureTextfield.delegate = self
    }
    
    //When press the button, passing data to previous page
    @IBAction func bookButtonPresses(_ sender: Any) {
        
        if let name = nameTextfield.text, let surname = surnameTextfield.text, let email = emailTextfield.text, let arrivalTime = arrivalTextfield.text, let departureTime = departureTextfield.text {
            
            //Control all of textfiels are empty
            if name == "" || surname == "" || email == "" || arrivalTime == "" || departureTime == "" {
                //Create the alert
                let alert = UIAlertController(title: "Alert", message: "All fields must be filled!", preferredStyle: UIAlertController.Style.alert)
                
                //Add the actions (buttons)
                alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
                alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
                
                //Show the alert
                self.present(alert, animated: true, completion: nil)
                
            } else {
                onButtonTap?([name,surname,email,arrivalTime,departureTime])
                self.navigationController?.popToRootViewController(animated: true)
            }
        }
    }
}

//When select textfield, textfield's border color'll changes
extension SecondPageViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(named: "PrimaryColor")?.cgColor
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 0
        textField.layer.borderColor = .none
    }
}
