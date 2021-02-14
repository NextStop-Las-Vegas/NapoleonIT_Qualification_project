//
//  AuthViewController.swift
//  Qualification_project
//
//  Created by Pavel on 23.12.2020.
//

import UIKit
import Firebase

class AuthViewController: UIViewController {
    
    var signUp: Bool = true{
        willSet{
            if newValue{
                titleLabel.text = "Регистрация"
                nameField.isHidden = false
                enterButton.setTitle("Войти", for: .normal)
            }else{
                titleLabel.text = "Вход"
                nameField.isHidden = true
                enterButton.setTitle("Регистрация", for: .normal)
            }
        }
    }
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
        emailField.delegate = self
        passwordField.delegate = self
    }
    
    @IBAction func switchLogin(_ sender: UIButton) {
        signUp = !signUp
    }
    func showAlert(){
        let alert = UIAlertController(title: "Ошибка", message: "Заполните все поля", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

extension AuthViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        let name = nameField.text!
        let email = emailField.text!
        let password = passwordField.text!
        
        if(signUp){
            if(!name.isEmpty && !email.isEmpty && !password.isEmpty){
                Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                    if error == nil{
                        if let result = result{
                            print(result.user.uid)
                        }
                    }
                }
            }else{
                showAlert()
            }
        }else{
        }
            if(!email.isEmpty && !password.isEmpty){
                
            }else{
                showAlert()
            }
        
        
        
        return true
    }
}
