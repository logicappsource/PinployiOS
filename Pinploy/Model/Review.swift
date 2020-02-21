//
//  Review.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation
import Serpent

struct Review {
    var id: Int? = 0
    var message: String? = ""
    var rating: Int? = 0
    
    var offerId: Int? = 0
    var offer: Offer?
    
    var fromUserId: Int? = 0
    var fromUser: User?
    
    var toUserId: Int? = 0
    var toUser: User?
    
    var createdAt: String? = ""
    var updatedAt: String? = ""
}


extension Review: Serializable {
    init(dictionary: NSDictionary?) {
        id         <== (self, dictionary, "id")
        message    <== (self, dictionary, "message")
        rating     <== (self, dictionary, "rating")
        offerId    <== (self, dictionary, "offer_id")
        offer      <== (self, dictionary, "offer")
        fromUserId <== (self, dictionary, "from_user_id")
        fromUser   <== (self, dictionary, "from_user")
        toUserId   <== (self, dictionary, "to_user_id")
        toUser     <== (self, dictionary, "to_user")
        createdAt  <== (self, dictionary, "created_at")
        updatedAt  <== (self, dictionary, "updated_at")
    }

    func encodableRepresentation() -> NSCoding {
        let dict = NSMutableDictionary()
        (dict, "id")           <== id
        (dict, "message")      <== message
        (dict, "rating")       <== rating
        (dict, "offer_id")     <== offerId
        (dict, "offer")        <== offer
        (dict, "from_user_id") <== fromUserId
        (dict, "from_user")    <== fromUser
        (dict, "to_user_id")   <== toUserId
        (dict, "to_user")      <== toUser
        (dict, "created_at")   <== createdAt
        (dict, "updated_at")   <== updatedAt
        return dict
    }
}
