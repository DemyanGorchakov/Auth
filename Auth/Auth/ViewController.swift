//
//  ViewController.swift
//  Auth
//
//  Created by Демьян Горчаков on 06.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var btnSignIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnSignIn.tintColor = UIColor(named: "MainColor")
        button.backgroundColor = UIColor(named: "MainColor")
        
        setupView(emailView)
        setupView(passwordView)
        setupView(button)
    }
    
    private func setupView(_ someView: UIView) {
        someView.layer.cornerRadius = someView.bounds.height / 2
        someView.layer.shadowColor = UIColor.black.cgColor
        someView.layer.shadowRadius = 10
        someView.layer.shadowOpacity = 0.1
        someView.layer.shadowOffset = CGSize(width: 0, height: 5)
    }
    
    @IBAction func buttonPress(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            print("1")
        case 2:
            print("2")
        case 3:
            print("3")
        default:
            print("0")
        }
    }
    
}

