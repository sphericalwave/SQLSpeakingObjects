//
//  Posts.swift
//  SQLSpeakingObjects
//
//  Created by Aaron Anthony on 2019-12-18.
//  Copyright © 2019 SphericalWaveSoftware. All rights reserved.
//

import Foundation

struct Posts: Sequence, IteratorProtocol {
    
    let sqlLiteDB: SQLiteDatabase
    
    init(database: SQLiteDatabase) {
        self.sqlLiteDB = database
    }

    mutating func next() -> Post? {
        //select id from post
        //construct post here
        return sqlLiteDB.post() //temporary
    }
    
    func add(post: Post) {
        sqlLiteDB.add(post: post)
    }
}

//TODO: Generalize DB for Postgres

class SQLiteDatabase
{
    func post() -> Post {
        return Post(name: "Test Database reponse")
    }
    
    func add(post: Post) {
        print("How do i do that?")
    }
}
