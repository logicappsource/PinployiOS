//
//  Offer.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation
import Serpent

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

extension Offer: Serializable {
    init(dictionary: NSDictionary?) {
        id             <== (self, dictionary, "id")
        status         <== (self, dictionary, "status")
        message        <== (self, dictionary, "message")
        stripeChargeId <== (self, dictionary, "stripe_charge_id")
        priceBid       <== (self, dictionary, "price_bid")
        isPaid         <== (self, dictionary, "is_paid")
        taskId         <== (self, dictionary, "task_id")
        task           <== (self, dictionary, "task")
        userId         <== (self, dictionary, "user_id")
        user           <== (self, dictionary, "user")
        createdAt      <== (self, dictionary, "created_at")
        updatedAt      <== (self, dictionary, "updated_at")
    }

    func encodableRepresentation() -> NSCoding {
        let dict = NSMutableDictionary()
        (dict, "id")               <== id
        (dict, "status")           <== status
        (dict, "message")          <== message
        (dict, "stripe_charge_id") <== stripeChargeId
        (dict, "price_bid")        <== priceBid
        (dict, "is_paid")          <== isPaid
        (dict, "task_id")          <== taskId
        (dict, "task")             <== task
        (dict, "user_id")          <== userId
        (dict, "user")             <== user
        (dict, "created_at")       <== createdAt
        (dict, "updated_at")       <== updatedAt
        return dict
    }
}
