//
//  ViewController.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 29.03.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var titleLoginField: UILabel!
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var titlePasswordField: UILabel!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleView.text = "Авторизация"
        titleLoginField.text = "Логин"
        titlePasswordField.text = "Пароль"
        loginButton.setTitle("Войти", for: UIControl.State.normal)
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWasShown(notification:)),
            name: UIResponder.keyboardWillShowNotification,
                object: nil)
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillBeHidden(notification:)),
            name: UIResponder.keyboardWillHideNotification,
                object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2")
    }
    
    @IBAction func loginPressed(_sender: UIButton, forEvent event: UIEvent) {
        
        let login = loginField.text!
        let password = passwordField.text!
        
        if login == "admin" && password == "1234" {
            print("Успешная авторизация")
        } else {
            print("Неправильный пароль или логин")
        }
        
    }
    
    @objc func keyboardWasShown(notification: Notification) {
      let userInfo = (notification as NSNotification).userInfo as! [String: Any]
      let frame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! CGRect

      scrollBottomConstraint.constant = frame.height
    }

    @objc func keyboardWillBeHidden(notification: Notification) {
      scrollBottomConstraint.constant = 0
    }
}

    
