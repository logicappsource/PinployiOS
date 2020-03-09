//
//  Task.swift
//  Pinploy
//
//  Created by dev on 20/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import UIKit
import ObjectMapper

struct Task : Mappable {
    var id : Int? = 0
    var title : String? = ""
    var description : String? = ""
    var toolsNeeded : Bool? = false
    var isRemote : Bool? = false
    var address : String? = ""
    var city : String? = ""
    var zipCode : String? = ""
    var lat : Double? = 0.0
    var lng : Double? = 0.0
    var budget : Int? = 0
    var budgetType : String? = ""
    var estimationHours : String? = ""
    var dueDate : String? = ""
    var status : String? = ""
    var userId : Int? = 0
    var createdAt : String? = ""
    var updatedAt : String? = ""
    var user : User? = nil
    

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        id <- map["id"]
        title <- map["title"]
        description <- map["description"]
        toolsNeeded <- map["toolsNeeded"]
        isRemote <- map["isRemote"]
        address <- map["address"]
        city <- map["city"]
        zipCode <- map["zipCode"]
        lat <- map["lat"]
        lng <- map["lng"]
        budget <- map["budget"]
        budgetType <- map["budgetType"]
        estimationHours <- map["estimationHours"]
        dueDate <- map["dueDate"]
        status <- map["status"]
        userId <- map["userId"]
        createdAt <- map["createdAt"]
        updatedAt <- map["updatedAt"]
        user <- map["user"]
    }

}
