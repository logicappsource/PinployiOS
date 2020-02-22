//
//  FirstViewController.swift
//  Pinploy
//
//  Created by dev on 20/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import UIKit
import Alamofire
import Serpent

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
       
                Alamofire.request("https://api.pinploy.com/api/users/login", method: .post, parameters: params as Parameters, encoding: JSONEncoding.default, headers: nil).responseJSON {
                    response in
                    switch (response.result) {
                    case .success:
                           print(response.result)
                           guard let user = response.value else { return }
                           print(user)
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
            
            Alamofire.request("https://api.pinploy.com/api/users", method: .post, parameters: params as Parameters, encoding:  JSONEncoding.default, headers: nil).responseJSON {
                response in
                switch (response.result) {
                case .success:
                    self.redirectHome()

                case .failure(let error):
                    print(error)
                }
            }
        
    }
    
    
    func redirectHome() -> Void {
        print("Redirect home")

        
    }
  


}

