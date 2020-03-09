//
//  AccountInfoVC.swift
//  Pinploy
//
//  Created by dev on 09/03/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import UIKit
import Alamofire

class AccountInfoVC: UIViewController {
    
    var currentUser: User?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        fetchUserProfile()
    }
    
    
    func fetchUserProfile() {
        
        let headers: HTTPHeaders = [
                  "Authorization": Constants.token,
                  "Content-Type" :"application/json"
              ]
              
        Alamofire.request("\(Constants.getUserProfile) + \(currentUser?.id)", method: .get, headers: headers).responseArray { (response: DataResponse<[User]>) in
                  switch (response.result) {
                  case .success:
                      let myResponse = response.result.value
                      print(myResponse)
                      DispatchQueue.main.async {
                      }
                  case .failure(let error):
                      print(error)
                  }
              }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
