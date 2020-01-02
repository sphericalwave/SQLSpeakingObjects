//
//  SWSQLite.swift
//  SQLSpeakingObjects
//
//  Created by Aaron Anthony on 2019-12-19.
//  Copyright © 2019 SphericalWaveSoftware. All rights reserved.
//

//TODO: Generalize DB for Postgres
import Foundation

class SQLiteDatabase
{
    func post() -> Post {
        return Post(id: 12, date: Date(), title: "Testing 123")
    }
    
    func add(post: Post) {
        print("How do i do that?")
    }
}
