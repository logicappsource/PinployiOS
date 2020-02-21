//
//  FirstViewController.swift
//  Pinploy
//
//  Created by dev on 20/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import UIKit
import Alamofire

class AuthVC: UIViewController {

    @IBOutlet weak var inputEmail: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Authenticate user
    @IBAction func auth(_ sender: Any) {
             let email = inputEmail.text
             let password = inputPassword.text
             let params = ["email": email, "password": password]
        
             AF.request("https://api.pinploy.com/api/users/login", method: .post, parameters: params as Parameters, encoding: JSONEncoding.default, headers: nil).responseJSON {
                 response in
                 switch (response.result) {
                 case .success:
                     print(response.result)
                     self.redirectHome()
                 case .failure:
                     print(Error.self)
                 }
             }
    }
    
    // Signup User
    @IBAction func signupUser(_ sender: Any) {
            let email = inputEmail.text
            let password = inputPassword.text
            let params = ["email": email, "password": password]
            
            AF.request("https://api.pinploy.com/api/users/login", method: .post, parameters: params as Parameters, encoding:  JSONEncoding.default, headers: nil).responseJSON {
                response in
                switch (response.result) {
                case .success:
                    print(response.result)
                case .failure(let error):
                    print(error)
                }
            }
    }
    
    
    func redirectHome() {
        
    }
  


}

