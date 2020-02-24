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
    var user: User?
    
    var taskId: Int? = 0
    var task: Task?
    
    var createdAt: String? = ""
    var updatedAt: String? = ""
    var images = [Any]()
    
}

