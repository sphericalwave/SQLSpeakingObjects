//
//  Post.swift
//  SQLSpeakingObjects
//
//  Created by Aaron Anthony on 2019-12-18.
//  Copyright © 2019 SphericalWaveSoftware. All rights reserved.
//

import Foundation

struct Post
{
    let id: Int64
    let date: Date
    let title: String
    
    //TODO: id is assigned by the database
    init(id: Int64, date: Date, title: String) {
        self.id = id
        self.date = date
        self.title = title
    }
}
