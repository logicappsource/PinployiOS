//
//  APIClient.swift
//  Pinploy
//
//  Created by dev on 24/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

class APIClient {
    

    static func login( params: Parameters, completion: @escaping(Result<User>) -> Void) {
        Alamofire.request("https://api.pinploy.com/api/users/login", method: .post, parameters: params as Parameters, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            return response
                }
           }
       
    // Users
    /*
    static func login( params: Parameters, completion: @escaping(Result<User>) -> Void) {
        Alamofire.request("https://api.pinploy.com/api/users/login", method: .post, parameters: params as Parameters, encoding: JSONEncoding.default, headers: nil).responseObject { (response: DataResponse<User>) in
            completion(response)
        }
    }
    */
    static func signup(email: String, password: String, completion: @escaping(Result<User>) -> Void) {
        
    }
    
}
