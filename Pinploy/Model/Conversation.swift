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


