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
    @IBAction func signUpButton(_ sender: Any) {
    }
    @IBAction func crashButtonTapped(_ sender: AnyObject) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton(type: .roundedRect)
        button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
        button.setTitle("Crash", for: [])
        button.addTarget(self, action: #selector(self.signUpButton(_:)), for: .touchUpInside)
        view.addSubview(button)
        
        setUpElements()
    }
     
    override func viewWillAppear(_ animated: Bool) {
    }
    
    func setUpElements() {

        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButton(loginButton)

    }
}
