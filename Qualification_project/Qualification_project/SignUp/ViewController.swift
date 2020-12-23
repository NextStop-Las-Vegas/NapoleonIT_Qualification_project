//
//  ViewController.swift
//  Qualification_project
//
//  Created by Pavel on 21.12.2020.
//

import UIKit
import AVKit

class ViewController: UIViewController {
  
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    func setUpElements() {
        
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButton(loginButton)
        
    }
}
