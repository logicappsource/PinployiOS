//
//  User.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation
import Serpent


struct User { // codeable
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
}

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

extension User: Serializable {
    init(dictionary: NSDictionary?) {
        id                    <== (self, dictionary, "id")
        firstName             <== (self, dictionary, "first_name")
        lastName              <== (self, dictionary, "last_name")
        email                 <== (self, dictionary, "email")
        emailVerified         <== (self, dictionary, "email_verified")
        emailToken            <== (self, dictionary, "email_token")
        password              <== (self, dictionary, "password")
        phone                 <== (self, dictionary, "phone")
        profileImg            <== (self, dictionary, "profile_img")
        dob                   <== (self, dictionary, "dob")
        gender                <== (self, dictionary, "gender")
        address               <== (self, dictionary, "address")
        city                  <== (self, dictionary, "city")
        zipCode               <== (self, dictionary, "zip_code")
        description           <== (self, dictionary, "description")
        education             <== (self, dictionary, "education")
        isActive              <== (self, dictionary, "is_active")
        stripeCustomerId      <== (self, dictionary, "stripe_customer_id")
        stripeAccountId       <== (self, dictionary, "stripe_account_id")
        stripeVerified        <== (self, dictionary, "stripe_verified")
        profileRating         <== (self, dictionary, "profile_rating")
        taskCreated           <== (self, dictionary, "task_created")
        tasksCompleted        <== (self, dictionary, "tasks_completed")
        offersMade            <== (self, dictionary, "offers_made")
        userRoleId            <== (self, dictionary, "user_role_id")
        role                  <== (self, dictionary, "role")
        tasks                 <== (self, dictionary, "tasks")
        offers                <== (self, dictionary, "offers")
        comments              <== (self, dictionary, "comments")
        targets               <== (self, dictionary, "targets")
        reporters             <== (self, dictionary, "reporters")
        sendMessages          <== (self, dictionary, "send_messages")
        receivedMessages      <== (self, dictionary, "received_messages")
        createdConversations  <== (self, dictionary, "created_conversations")
        receivedConversations <== (self, dictionary, "received_conversations")
        sendReviews           <== (self, dictionary, "send_reviews")
        receivedRevies        <== (self, dictionary, "received_revies")
        createdAt             <== (self, dictionary, "created_at")
        updatedAt             <== (self, dictionary, "updated_at")
    }

    func encodableRepresentation() -> NSCoding {
        let dict = NSMutableDictionary()
        (dict, "id")                     <== id
        (dict, "first_name")             <== firstName
        (dict, "last_name")              <== lastName
        (dict, "email")                  <== email
        (dict, "email_verified")         <== emailVerified
        (dict, "email_token")            <== emailToken
        (dict, "password")               <== password
        (dict, "phone")                  <== phone
        (dict, "profile_img")            <== profileImg
        (dict, "dob")                    <== dob
        (dict, "gender")                 <== gender
        (dict, "address")                <== address
        (dict, "city")                   <== city
        (dict, "zip_code")               <== zipCode
        (dict, "description")            <== description
        (dict, "education")              <== education
        (dict, "is_active")              <== isActive
        (dict, "stripe_customer_id")     <== stripeCustomerId
        (dict, "stripe_account_id")      <== stripeAccountId
        (dict, "stripe_verified")        <== stripeVerified
        (dict, "profile_rating")         <== profileRating
        (dict, "task_created")           <== taskCreated
        (dict, "tasks_completed")        <== tasksCompleted
        (dict, "offers_made")            <== offersMade
        (dict, "user_role_id")           <== userRoleId
        (dict, "role")                   <== role
        (dict, "tasks")                  <== tasks
        (dict, "offers")                 <== offers
        (dict, "comments")               <== comments
        (dict, "targets")                <== targets
        (dict, "reporters")              <== reporters
        (dict, "send_messages")          <== sendMessages
        (dict, "received_messages")      <== receivedMessages
        (dict, "created_conversations")  <== createdConversations
        (dict, "received_conversations") <== receivedConversations
        (dict, "send_reviews")           <== sendReviews
        (dict, "received_revies")        <== receivedRevies
        (dict, "created_at")             <== createdAt
        (dict, "updated_at")             <== updatedAt
        return dict
    }
}

