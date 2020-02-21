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
    var task: Task
    
    var userId: Int? = 0
    var user: User
    
    var createdAt: String? = ""
    var updatedAt: String? = ""
    
    
    init(id: Int, status: String, message: String, stripeChargeId: String, priceBid: Int, isPaid: Bool, taskId: Int, task: Task, userId: Int, user: User, createdAt: String, updatedAt: String) {
        self.id = id
        self.status = status
        self.message = message
        self.stripeChargeId = stripeChargeId
        self.priceBid = priceBid
        self.isPaid = isPaid
        self.taskId = taskId
        self.task = task
        self.userId = userId
        self.user = user
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

}
