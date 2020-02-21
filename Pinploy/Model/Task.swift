//
//  Task.swift
//  Pinploy
//
//  Created by dev on 20/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import UIKit

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
    
    
    init(title: String, description: String, toolsNeeded: Bool, isRemote: Bool, address: String, city: String, zipCode: String, lat: Double, lng: Double, budget: Double, budgetType: String, estimationHours: Double, dueDate: String, status: String, userId: Int ) {
        self.title = title
        self.description = description
        self.toolsNeeded = toolsNeeded
        self.isRemote = isRemote
        self.address = address
        self.city = city
        self.zipCode = zipCode
        self.lat = lat
        self.lng = lng
        self.budget = budget
       // Task.self.budgetType = budgetType
        self.estimationHours = estimationHours
        self.dueDate = dueDate
        //Task.self.status = status
    }
}
