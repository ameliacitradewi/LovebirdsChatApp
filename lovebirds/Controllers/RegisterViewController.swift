//
//  RegisterViewController.swift
//  lovebirds
//
//  Created by Amelia Citra on 03/03/23.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    //pop up alert if password less than 6 character
                    let alert = UIAlertController(title: "Oops!", message: e.localizedDescription, preferredStyle: .alert)
                    let alertAction = UIAlertAction(title: "OK", style: .default) { (sender: UIAlertAction) -> Void in
                    }
                    alert.addAction(alertAction)

                    // Showing alert
                    self.present(alert, animated: true) { () -> Void in
                    }
                } else {
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
    
}
