//
//  ViewController.swift
//  nvleonovich_homework
//
//  Created by nvleonovich on 29.03.2020.
//  Copyright © 2020 nvleonovich. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var scrollBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var titleLoginField: UILabel!
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var titlePasswordField: UILabel!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loaderElement1: UIImageView!
    @IBOutlet weak var loaderElement2: UIImageView!
    @IBOutlet weak var loaderElement3: UIImageView!
    @IBOutlet weak var loaderStack: UIStackView!
    
    let animation = Animations()
    
    override func viewWillAppear(_ animated: Bool) {
        animateLoader()
    }
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
    
    func animateLoader() {
        animation.fadeElement(loaderElement1, duration: 0.75, delay: 0.75)
        animation.fadeElement(loaderElement2, duration: 0.75, delay: 1)
        animation.fadeElement(loaderElement3, duration: 0.75, delay: 1.25)
    }
    
    @IBAction func loginPressed(_sender: UIButton, forEvent event: UIEvent) {

    }
    
    @objc func keyboardWasShown(notification: Notification) {
      let userInfo = (notification as NSNotification).userInfo as! [String: Any]
      let frame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! CGRect

      scrollBottomConstraint.constant = frame.height
    }

    @objc func keyboardWillBeHidden(notification: Notification) {
      scrollBottomConstraint.constant = 0
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        // Проверяем данные
        let checkResult = checkUserData()
        
        // Если данные не верны, покажем ошибку
        if !checkResult {
            showLoginError()
        }
        
        // Вернем результат
        return checkResult
    }
    
    func checkUserData() -> Bool {
        guard let login = loginField.text,
            let password = passwordField.text else { return false }
        
        if login == "admin" && password == "1234" {
            return true
        } else {
            return false
        }
    }
    
    func showLoginError() {
        // Создаем контроллер
        let alter = UIAlertController(title: "Ошибка", message: "Введены неверные данные пользователя", preferredStyle: .alert)
        // Создаем кнопку для UIAlertController
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        // Добавляем кнопку на UIAlertController
        alter.addAction(action)
        // Показываем UIAlertController
        present(alter, animated: true, completion: nil)
    }


}

    
