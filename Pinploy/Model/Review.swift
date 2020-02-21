//
//  Review.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation

struct Review {
    var id: Int? = 0
    var message: String? = ""
    var rating: Int? = 0
    
    var offerId: Int? = 0
    var offer: Offer
    
    var fromUserId: Int? = 0
    var fromUser: User
    
    var toUserId: Int? = 0
    var toUser: User
    
    var createdAt: String? = ""
    var updatedAt: String? = ""
    
    
    init(id: Int, message: String, rating: Int, offerId: Int, offer: Offer, fromUserId: Int, fromUser: User, toUserId: Int, toUser: User, createdAt: String, updatedAt: String) {
        self.id = id
        self.message = message
        self.rating = rating
        self.offerId = offerId
        self.offer = offer
        self.fromUserId = fromUserId
        self.fromUser = fromUser
        self.toUserId = toUserId
        self.toUser = toUser
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
