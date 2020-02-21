//
//  Conversation.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation


struct Conversation {
    var id: Int? = 0
    var status: String? = ""
    var message = [Any]()
    
    var lastMessage: Message
    var taskTitle: String? = ""
    
    var fromUserId: Int? = 0
    var toUserId: Int? = 0
    var user: User
    
    var offerId: Int? =  0
    var offer: Offer
    
    var createdAt: String? = ""
    var updatedAt: String? = ""
    
    init(id: Int, status: String, message: [Any], lastMessage: Message, taskTitle: String, fromUserId: Int, toUserId: Int, user: User, offerId: Int, offer: Offer, createdAt: String, updatedAt: String) {
        self.id = id
        self.status = status
        self.message = message
        self.lastMessage = lastMessage
        self.taskTitle = taskTitle
        self.fromUserId = fromUserId
        self.toUserId = toUserId
        self.user = user
        self.offerId = offerId
        self.offer = offer
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

}
