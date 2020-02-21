//
//  Comment.swift
//  Pinploy
//
//  Created by dev on 21/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import Foundation
import Serpent

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

extension Comment: Serializable {
    init(dictionary: NSDictionary?) {
        id        <== (self, dictionary, "id")
        text      <== (self, dictionary, "text")
        status    <== (self, dictionary, "status")
        userId    <== (self, dictionary, "user_id")
        user      <== (self, dictionary, "user")
        taskId    <== (self, dictionary, "task_id")
        task      <== (self, dictionary, "task")
        createdAt <== (self, dictionary, "created_at")
        updatedAt <== (self, dictionary, "updated_at")
        images    <== (self, dictionary, "images")
    }

    func encodableRepresentation() -> NSCoding {
        let dict = NSMutableDictionary()
        (dict, "id")         <== id
        (dict, "text")       <== text
        (dict, "status")     <== status
        (dict, "user_id")    <== userId
        (dict, "user")       <== user
        (dict, "task_id")    <== taskId
        (dict, "task")       <== task
        (dict, "created_at") <== createdAt
        (dict, "updated_at") <== updatedAt
        (dict, "images")     <== images
        return dict
    }
}
