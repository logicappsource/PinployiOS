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
    var fromUser: User?
    var toUserId: Int? = 0
    var conversationId: Int? = 0
    
    var createdAt: String? = ""
    var updatedAt: String? = ""

}

