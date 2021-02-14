//
//  PickDateViewController.swift
//  Qualification_project
//
//  Created by Pavel on 24.12.2020.
//

import UIKit

class PickDateViewController: UIViewController {
    
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    @IBOutlet weak var popUpLabel: UILabel!
    
    
    @IBOutlet weak var enterEmailField: UITextField!
    @IBOutlet weak var enterNameField: UITextField!
    @IBOutlet weak var bookButton: UIButton!
    @IBOutlet weak var dateField: UITextField!
    
    var dp: UIDatePicker?
    var effect: UIVisualEffect!
    
    
     
    override func viewWillAppear(_ animated: Bool) {
        dp = UIDatePicker()
        super.viewWillAppear(animated)
        dateField.inputView = dp
        if #available(iOS 13.4, *) {
            dp?.preferredDatePickerStyle = .wheels
        } else {
            // Fallback on earlier versions
        }
        dp?.datePickerMode = .dateAndTime
        let localeID = Locale.preferredLanguages.first
        dp?.locale = Locale(identifier: localeID!)
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneAction))
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolbar.setItems([flexSpace, doneButton], animated: true)

        dateField.inputAccessoryView = toolbar
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setUpElements()
        
        effect = visualEffectView.effect
        visualEffectView.effect = nil
        
        popUpView.layer.cornerRadius = 10
        
    }
    @objc func doneAction(){
        getDateFromPicker()
        view.endEditing(true)
    }
    
    func getDateFromPicker(){
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        dateField.text = formatter.string(from: dp?.date ?? Date())
    }
    
    @IBAction func getOrderTapped(_ sender: Any) {
    }
    
    func setUpElements() {
        Utilities.styleFilledOrderButton(bookButton)
    }
    
    //MARK: Animations
    func animateIn()  {
        self.view.addSubview(popUpView)
        popUpView.center = self.view.center
        
        popUpView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        popUpView.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
            self.visualEffectView.effect = self.effect
            self.popUpView.alpha = 1
            self.popUpView.transform = CGAffineTransform.identity
        }
    }
    
    func animateOut() {
        
        UIView.animate(withDuration: 0.4, animations: {
            self.popUpView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.popUpView.alpha = 0
            
            self.visualEffectView.effect = nil
            
        }) { (success: Bool) in
            self.popUpView.removeFromSuperview()
        }
    }
    //MARK: Buttons
    @IBAction func addItem (_ sender: AnyObject) {
        animateIn()
    }
    @IBAction func dissmissPopUp(_ sender: AnyObject){
        animateOut()
    }
}

