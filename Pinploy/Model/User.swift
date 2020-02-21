//
//  User.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation

struct User {
    var id: Int? = 0
    var firstName: String? = ""
    var lastName: String? = ""
    var email: String? = ""
    var emailVerified: Bool? = false
    var emailToken: String? = ""
    var password: String? = ""
    var phone:String? = ""
    var profileImg: String? = ""
    var dob: Date?
    var gender: String? = ""
    var address: String? = ""
    var city: String? = ""
    var zipCode: String? = ""
    var description: String? = ""
    var education: String? = ""
    var isActive: Bool? = false
    var stripeCustomerId: String? = ""
    var stripeAccountId: String? = ""
    var stripeVerified: Bool? = false
    var profileRating: Double? = 2.0
    var taskCreated: Int? = 2
    var tasksCompleted: Int? = 1
    var offersMade: Int? = 1
    var userRoleId: Int? = 1
    var role = [Int]()
    
    var tasks = [Task]()
    var offers = [Offer]()
    var comments = [Comment]()
    
    var targets = [User]()
    var reporters = [User]()
    
    var sendMessages = [Message]()
    var receivedMessages = [Message]()
    
    var createdConversations = [Conversation]()
    var receivedConversations = [Conversation]()
    
    var sendReviews = [Review]()
    var receivedRevies = [Review]()
    
    var createdAt: String? = ""
    var updatedAt: String? = ""
    
    init(id: Int, firstName: String, lastName: String, email: String, emailVerified: Bool, emailToken: String, password: String, phone: String, profileImg: String, dob: Date, gender: String, addresss: String, city: String, zipcode: String, description: String, education: String, isActive: Bool, stripeCustomerId: String, stripeAccountId: String, StripeVerified: Bool, profileRating: Double, tasksCreated: Int, tasksCompleted: Int, offersMade: Int, userRoleId: Int, role: [Int], tasks: [Task], offers: [Offer], comments: [Comment], targets: [User], reporters: [User], sendMessages: [Message], receivedMessages: [Message], createdConversations: [Conversation], receivedConversation: [Conversation], sendReviews: [Review], receivedReviews: [Review], createdAt: String, updatedAt: String){
        
    }
}
