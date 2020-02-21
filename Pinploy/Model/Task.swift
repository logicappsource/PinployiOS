//
//  Task.swift
//  Pinploy
//
//  Created by dev on 20/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import UIKit
import Serpent

struct Task {
    var title: String = ""
    var description: String = ""
    var toolsNeeded: Bool? = false
    var isRemote: Bool? = false
    var address: String? = ""
    var city: String? = ""
    var zipCode: String? = ""
    var lat: Double? = 0.0
    var lng: Double? = 0.0
    var budget: Double? = 0.0
    enum budgetType: String {
        case total = "total"
        case hourly = "hourly"
    }
    var estimationHours: Double? = 0.0
    var dueDate: String? = ""
    enum status: String {
        case pending = "pending"
        case canceled = "canceled"
        case completed = "completed"
        case erased = "erased"
    }
    var userId: Int? = 1
}


extension Task: Serializable {
    init(dictionary: NSDictionary?) {
        title           <== (self, dictionary, "title")
        description     <== (self, dictionary, "description")
        toolsNeeded     <== (self, dictionary, "tools_needed")
        isRemote        <== (self, dictionary, "is_remote")
        address         <== (self, dictionary, "address")
        city            <== (self, dictionary, "city")
        zipCode         <== (self, dictionary, "zip_code")
        lat             <== (self, dictionary, "lat")
        lng             <== (self, dictionary, "lng")
        budget          <== (self, dictionary, "budget")
        estimationHours <== (self, dictionary, "estimation_hours")
        dueDate         <== (self, dictionary, "due_date")
        userId          <== (self, dictionary, "user_id")
    }

    func encodableRepresentation() -> NSCoding {
        let dict = NSMutableDictionary()
        (dict, "title")            <== title
        (dict, "description")      <== description
        (dict, "tools_needed")     <== toolsNeeded
        (dict, "is_remote")        <== isRemote
        (dict, "address")          <== address
        (dict, "city")             <== city
        (dict, "zip_code")         <== zipCode
        (dict, "lat")              <== lat
        (dict, "lng")              <== lng
        (dict, "budget")           <== budget
        (dict, "estimation_hours") <== estimationHours
        (dict, "due_date")         <== dueDate
        (dict, "user_id")          <== userId
        return dict
    }
}
