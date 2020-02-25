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
    
    var termVC: TermsVC!
    
    // Navigate to terms
    @IBAction func terms(_ sender: Any) {
       performSegue(withIdentifier: "navigateTerms", sender: self)
    }
    
    let user: User? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Authenticate user
    @IBAction func auth(_ sender: Any) {
            //  let email = inputEmail.text
            // let password = inputPassword.text
            let email = "logicappsource@gmail.com"
            let password = "Kea080592#"
       
             let params = ["email": email, "password": password]
        
 
            Alamofire.request("https://api.pinploy.com/api/users/login", method: .post, parameters: params as Parameters, encoding: JSONEncoding.default, headers: nil).responseObject { (response: DataResponse<User>) in
                switch (response.result) {
                case .success:
                    print(response.result)
                    print(response)
                    
                case .failure(let error):
                    print(error)
                }
            }
        
        
        /*
        Alamofire.request("https://api.pinploy.com/api/users/login", method: .post, parameters: params as Parameters, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            switch (response.result) {
                
            case .success:
                print(response.result)
                
                // Store data into => User
                // token
                
                self.redirectHome()
            case .failure(let error):
                print(error)
                     }
                }
        */
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
                    print(response.result)
                    self.redirectHome()

                case .failure(let error):
                    print(error)
                }
            }
    }
    
    
    func redirectHome() -> Void {
        print("Redirect home")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "navigateTerms" {
            termVC = segue.destination as! TermsVC
        }
    }
  


}



/*
     APIClient.login(params: params) { (result) in
        switch (result) {
         case .success:
                print(result)
                guard let user = result.value else { return }
                print(user)
         case .failure:
             print(Error.self)
         }
     }
     */
