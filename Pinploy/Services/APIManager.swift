//
//  APIManager.swift
//  Pinploy
//
//  Created by dev on 09/03/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import UIKit
import Alamofire

class APIManager: NSObject {
    
    static let sharedInstance = APIManager()

     // BASE
     // dev
     // static let baseUrl = "http://dev.api.pinploy.com/api/"
     static let baseUrl = "http://localhost:3000/api/"
     static let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0OCwicm9sZSI6InVzZXIiLCJpYXQiOjE1ODM1ODgzNTUsImV4cCI6MTU4NDE5MzE1NX0.exWz2yjtebDoKbf-O_-D1GfXINCmkO3X7kqeEg6oJhU"
    

    
    
     // TASKS
     static let taskBaseUrl = baseUrl + "/tasks"
     static let getPendingTaks = taskBaseUrl + "/pending"
     // MARK: Not used
     static let getTask = taskBaseUrl + "/:id"
     static let completeTask = taskBaseUrl + ":id/complete"
     static let taskApplicants = taskBaseUrl + "/:id/applicants"
     static let getOtherTasks = taskBaseUrl + "/other/:id"
     static let getTaskDetail = taskBaseUrl + "/details/:id"
     static let getOwnTask = taskBaseUrl + "/own/:status"
     static let getTaskAppliedFor = taskBaseUrl + "/applied/:status"
     // POST
     static let createTask = taskBaseUrl + "/"
     // PUT
     static let editTask = taskBaseUrl + "/:id"
    
    
    
    
    
     // USERS
     static let usersBaseUrl = baseUrl + "/users"
     static let userLoginUrl = usersBaseUrl +  "/login"
     static let userSignUpUrl = usersBaseUrl + "/createaccount"
    
    
    static func login( params: Parameters, completion: @escaping(Result<User>) -> Void) {
        Alamofire.request("https://api.pinploy.com/api/users/login", method: .post, parameters: params as Parameters, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
                      
                        return response
                }
           }
       
    
     // MARK: Not used
     static let userSocialLogin = usersBaseUrl + "/sociallogin"
     static let userChangePassword = usersBaseUrl + "/change-password"
     static let userForgotPassword = usersBaseUrl + "/forgot-password"
     static let resetPassword = usersBaseUrl + "/reset-password"
     static let verifyEmail = usersBaseUrl + "/verify-email"
     static let resendVerifyEmail = usersBaseUrl + "/resend-email-verification"
     static let contactUs = usersBaseUrl + "/contact-us-landing"
     
    
    
    // USER SETTINGS
    // MARK: Not used
    static let userSettingsBaseUrl = baseUrl + "/users-settings"
    static let userSettingsLanguage = baseUrl +  "/language"
    // PUT
    static let changeUserSettings = baseUrl + "/"
    
    
    // REPORTS
    // MARK: Not used
    static let reportBaseUrl = baseUrl + "/reports"
    // POST
    static let reportUser = reportBaseUrl + "/"

    
    // COMMENTS
    // MARK: Not used
    static let commentBaseUrl = baseUrl + "/comments"
    // POST
    static let createComment = commentBaseUrl + "/"
    // PUT
    static let editComment = commentBaseUrl + "/:id"
    // DElETE
    static let deleteComment = commentBaseUrl + "/:id"
    
    
    // OFFERS
    // MARK: Not used
    static let offerBaseUrl = baseUrl + "/offers"
    // GET
    static let getOffer = offerBaseUrl + "/:id"
    // GET
    static let acceptOffer = offerBaseUrl + "/:id/accept"
    // GET
    static let rejectOffer = offerBaseUrl + "/:id/reject/"
    // GET
    static let cancelOffer = offerBaseUrl + "/task/:id/cancel"
    // POST
    static let createOffer = offerBaseUrl + "/"
    
    
    // REVIEWS
    // MARK: Not used
    static let reviewBaseUrl = baseUrl + "/reviews"
    // GET
    static let getReviewsForUser = reviewBaseUrl + "/user/:id"
    // GET
    static let getReviewsForOffer = reviewBaseUrl + "/offer/:id"
    // POST
    static let createReview = reviewBaseUrl + "/"
    
    
    // LOCATION
    // MARK: Not used
    static let locationBaseUrl = baseUrl + "/location"
    // GET
    static let getSuggestions = locationBaseUrl + "/suggestions"
    // GET
    static let getGeoLocation = locationBaseUrl + "/geolocation/:id"
    
    
    // PAYMENTS
    // MARK: Not used
    static let paymentsBaseUrl = baseUrl + "/payments"
    // GET
    static let getCustomer = paymentsBaseUrl + "/customers"
    // GET
    static let getAccount = paymentsBaseUrl + "/accounts"
    // POST
    static let getClientIp = paymentsBaseUrl + "/accounts"
    // PUT
    static let updateAccount = paymentsBaseUrl + "/accounts"
    // POST
    static let addExternalBankAccount = paymentsBaseUrl + "/accounts/bank_account"
    // POST
    static let createSetupIntent = paymentsBaseUrl + "/setup-intent"
    // GET
    static let getPaymentsMethods = paymentsBaseUrl + "/payment-method"
    // GET
    static let detachPaymentMethod = paymentsBaseUrl + "/payment-method/detach/:id"

}
