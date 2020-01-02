//
//  PostsDB.swift
//  SQLSpeakingObjects
//
//  Created by Aaron Anthony on 2019-12-19.
//  Copyright © 2019 SphericalWaveSoftware. All rights reserved.
//

import Foundation
import SQLite

class PostsDB
{
//    let database: Connection
//
//    init(database: Connection, postsTable: Table) {
//        self.database = database
//        //self.postsTable = postsTable
//    }
    
    let posts: [Post]
    
    init() {
        let post1 = Post(id: 1, date: Date(), title: "Post1")
        let post2 = Post(id: 2, date: Date(), title: "Post2")
        let post3 = Post(id: 3, date: Date(), title: "Post3")
        self.posts = [post1, post2, post3]
    }
    
    //CREATE
    func add(post: Post) {
        //let insert = users.insert(name <- "Alice", email <- "alice@mac.com")
        //let rowid = try db.run(insert)
        //// INSERT INTO "users" ("name", "email") VALUES ('Alice', 'alice@mac.com')
        //
    }
    
    //READ
    func print() {
        //for user in try db.prepare(users) {
        //    print("id: \(user[id]), name: \(user[name]), email: \(user[email])")
        //    // id: 1, name: Optional("Alice"), email: alice@mac.com
        //}
        //// SELECT * FROM "users"
    }
    
    //UPDATE
    //
    //let alice = users.filter(id == rowid)
    //
    //try db.run(alice.update(email <- email.replace("mac.com", with: "me.com")))
    //// UPDATE "users" SET "email" = replace("email", 'mac.com', 'me.com')
    //// WHERE ("id" = 1)
    
    //DELETE
    func delete(post: Post) {
        // DELETE FROM "users" WHERE ("id" = 1)
        //try db.run(alice.delete())
        //
    }
    
//    func count() -> Int {
//        // SELECT count(*) FROM "users"
//        guard let count = try? db.scalar(postsTable.count) else { return 0 }
//        return count
//    }
}


