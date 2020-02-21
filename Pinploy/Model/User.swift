//
//  User.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation
import Serpent

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
    
}

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
