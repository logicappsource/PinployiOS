//
//  AccountInfoVC.swift
//  Pinploy
//
//  Created by dev on 09/03/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import UIKit
import Alamofire
import SwiftKeychainWrapper

class AccountInfoVC: UIViewController {
    
    var currentUser: User?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        fetchUserProfile()
    }
    
    
    func fetchUserProfile() {
        print(Constants.getUserProfile)
        Alamofire.request(Constants.getUserProfile, method: .get, headers: Constants.headers).responseArray { (response: DataResponse<[User]>) in
                  switch (response.result) {
                  case .success:
                      let myResponse = response.result.value
        
                      DispatchQueue.main.async {
                          print(myResponse)
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
