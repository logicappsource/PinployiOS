//
//  Comment.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation

struct Comment {
    var id: Int? = 0
    var text: String? = ""
    var status: String? = ""
    
    var userId: Int? = 0
    var user: User
    
    var taskId: Int? = 0
    var task: Task
    
    var createdAt: String? = ""
    var updatedAt: String? = ""
    var images = [Any]()
    
    
    init(id: Int, text: String, status: String, userId: Int, user: User, taskId: Int, task: Task, createdAt: String, updatedAt: String, images: [Any]){
        self.id = id
        self.text = text
        self.status = status
        self.userId = userId
        self.user = user
        self.task = task
        self.taskId = taskId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
    
}
