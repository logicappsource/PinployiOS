//
//  User.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation
import ObjectMapper


struct User: Mappable { // codeable
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
    
    
    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        id <- map["id"]
        firstName <- map["firstName"]
        lastName <- map["lastName"]
        email <- map["email"]
        emailVerified <- map["emailVerified"]
        emailToken <- map["emailToken"]
        password <- map["password"]
        phone <- map["phone"]
        profileImg <- map["profileImg"]
        dob <- map["dob"]
        gender <- map["gender"]
        address <- map["address"]
        city <- map["city"]
        zipCode <- map["zipCode"]
        description <- map["description"]
        education <- map["education"]
        isActive <- map["isActive"]
        stripeCustomerId <- map["stripeCustomerId"]
        stripeAccountId <- map["stripeAccountId"]
        stripeVerified <- map["stripeVerified"]
        profileRating <- map["profileRating"]
        taskCreated <- map["taskCreated"]
        tasksCompleted <- map["tasksCompleted"]
        offersMade <- map["offersMade"]
        userRoleId <- map["userRoleId"]
        role <- map["role"]
        tasks <- map["tasks"]
        offers <- map["offers"]
        comments <- map["comments"]
        targets <- map["targets"]
        reporters <- map ["reporters"]
        sendMessages <- map["sendMessages"]
        receivedMessages <- map["receivedMessages"]
        createdConversations <- map["createdConversations"]
        receivedConversations <- map["receivedConversations"]
        sendReviews <- map["sendReviews"]
        sendReviews <- map["sendReviews"]
        createdAt <- map["createdAt"]
        updatedAt <- map["updatedAt"]
    }

    
}


    
    
    /*
    init(id: Int, firstName: String, lastName: String, email: String, emailVerified: Bool, emailToken: String, password: String, phone: String, profileImg: String, dob: Date, gender: String, address: String, city: String, zipCode: String, description: String, education: String, isActive: Bool, stripeCustomerId: String, stripeAccountId: String, stripeVerified: Bool, profileRating: Double, tasksCreated: Int, tasksCompleted: Int, offersMade: Int, userRoleId: Int, role: [Int], tasks: [Task], offers: [Offer], comments: [Comment], targets: [User], reporters: [User], sendMessages: [Message], receivedMessages: [Message], createdConversations: [Conversation], receivedConversation: [Conversation], sendReviews: [Review], receivedReviews: [Review], createdAt: String, updatedAt: String){
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.emailVerified = emailVerified
        self.emailToken = emailToken
        self.password = password
        self.phone = phone
        self.profileImg = profileImg
        self.dob = dob
        self.gender = gender
        self.address = address
        self.city = city
        self.zipCode = zipCode
        self.description = description
        self.education = education
        self.isActive = isActive
        self.stripeCustomerId = stripeCustomerId
        self.stripeAccountId = stripeAccountId
        self.stripeVerified = stripeVerified
        self.profileRating = profileRating
        self.comments = comments
        self.targets = targets
        self.reporters = reporters
        self.sendMessages = sendMessages
        self.receivedMessages = receivedMessages
        self.createdAt = createdAt
        self.updatedAt = updatedAt
       }
    */


/*
extension User: Decodable {
    enum CodingKeys: CodingKey {
        case id = "id"
        case firstName = "firstName"
        case lastName = "lastName"
        case email = "email"
        case emailVerified = "emailVerified"
        case emailToken = "emailtoken"
        case password = "password"
        case phone = "phone"
        case profileImg = "profileImg"
        case dob = "dob"
        case gender = "gender"
        case address = "address"
        case city = "city"
        case zipCode = "zipCode"
        case description = "description"
        case education = "education"
        case isActive = "isActive"
        case stripeCustomerId = "stripeCustomerId"
        case stripeAccountId = "stripeAccountId"
        case stripeVerified = "stripeVerified"
        case profileRating = "profileRating"
        case taskCreated = "taskCreated"
        case tasksCompleted = "tasksCompleted"
        case offersMade = "offersMade"
        case userRoleId = "userRoleId"
        case role = "role"
        case tasks = "tasks"
        case offers = "offers"
        case comments = "comments"
        case targets = "targets"
        case reporters = "reportes"
        case sendMessages = "sendMessages"
        case receivedMessages = "receivedMessages"
        case createdConversations = "createdConversations"
        case receivedConversations = "receivedConversations"
        case sendReviews = "sendReviews"
        case receivedRevies = "receivedRevies"
        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
}
    
    init(from decoder: Decoder) throws {
        let cointainer = try.encoder.container(keyedBy: CodingKeys.self)
        
        
        self.init(id: id)
    }
}
*/

