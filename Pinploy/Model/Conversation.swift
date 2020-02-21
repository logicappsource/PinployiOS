//
//  Conversation.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation
import Serpent

struct Conversation {
    var id: Int? = 0
    var status: String? = ""
    var message = [Any]()
    
    var lastMessage: Message?
    var taskTitle: String? = ""
    
    var fromUserId: Int? = 0
    var toUserId: Int? = 0
    var user: User?
    
    var offerId: Int? =  0
    var offer: Offer?
    
    var createdAt: String? = ""
    var updatedAt: String? = ""
}


extension Conversation: Serializable {
    init(dictionary: NSDictionary?) {
        id          <== (self, dictionary, "id")
        status      <== (self, dictionary, "status")
        message     <== (self, dictionary, "message")
        lastMessage <== (self, dictionary, "last_message")
        taskTitle   <== (self, dictionary, "task_title")
        fromUserId  <== (self, dictionary, "from_user_id")
        toUserId    <== (self, dictionary, "to_user_id")
        user        <== (self, dictionary, "user")
        offerId     <== (self, dictionary, "offer_id")
        offer       <== (self, dictionary, "offer")
        createdAt   <== (self, dictionary, "created_at")
        updatedAt   <== (self, dictionary, "updated_at")
    }

    func encodableRepresentation() -> NSCoding {
        let dict = NSMutableDictionary()
        (dict, "id")           <== id
        (dict, "status")       <== status
        (dict, "message")      <== message
        (dict, "last_message") <== lastMessage
        (dict, "task_title")   <== taskTitle
        (dict, "from_user_id") <== fromUserId
        (dict, "to_user_id")   <== toUserId
        (dict, "user")         <== user
        (dict, "offer_id")     <== offerId
        (dict, "offer")        <== offer
        (dict, "created_at")   <== createdAt
        (dict, "updated_at")   <== updatedAt
        return dict
    }
}
