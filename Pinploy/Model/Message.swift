//
//  Message.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation
import Serpent

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


extension Message: Serializable {
    init(dictionary: NSDictionary?) {
        id             <== (self, dictionary, "id")
        isRead         <== (self, dictionary, "is_read")
        text           <== (self, dictionary, "text")
        fromUserId     <== (self, dictionary, "from_user_id")
        fromUser       <== (self, dictionary, "from_user")
        toUserId       <== (self, dictionary, "to_user_id")
        conversationId <== (self, dictionary, "conversation_id")
        createdAt      <== (self, dictionary, "created_at")
        updatedAt      <== (self, dictionary, "updated_at")
    }

    func encodableRepresentation() -> NSCoding {
        let dict = NSMutableDictionary()
        (dict, "id")              <== id
        (dict, "is_read")         <== isRead
        (dict, "text")            <== text
        (dict, "from_user_id")    <== fromUserId
        (dict, "from_user")       <== fromUser
        (dict, "to_user_id")      <== toUserId
        (dict, "conversation_id") <== conversationId
        (dict, "created_at")      <== createdAt
        (dict, "updated_at")      <== updatedAt
        return dict
    }
}
