//
//  Offer.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation

struct Offer {
    var id: Int? = 0
    var status: String? = ""
    var message: String? = ""
    var stripeChargeId: String? = ""
    var priceBid: Int? = 0
    var isPaid: Bool = false
    
    var taskId: Int? = 0
    var task: Task?
    
    var userId: Int? = 0
    var user: User?
    
    var createdAt: String? = ""
    var updatedAt: String? = ""
    
    enum CodingKeys: String, CodingKey {
        case id
        case status
        case message
        case stripeChargeId
        case priceBid
        case isPaid
        case taskid
        case task
        case userId
        case user
        case createdAt
        case updatedAt
    }
}
