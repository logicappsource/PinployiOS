//
//  Message.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation

struct Message {
    var id: Int? = 0
    var isRead: Bool? = false
    var text: String? = ""
    
    var fromUserId: Int? = 0
    var fromUser: User
    var toUserId: Int
    var conversationId: Int? = 0
    
    var createdAt: String? = ""
    var updatedAt: String? = ""
    
    
    
    init(id: Int, isRead: Bool, text: String, fromUserId: Int, fromUser: User, toUserId: Int, conversationId: Int, createdAt: String, updatedAt: String) {
        self.id = id
        self.isRead = isRead
        self.text = text
        self.fromUserId = fromUserId
        self.fromUser = fromUser
        self.toUserId = toUserId
        self.conversationId = conversationId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
