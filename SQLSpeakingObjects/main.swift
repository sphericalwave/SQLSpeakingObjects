//
//  main.swift
//  SQLSpeakingObjects
//
//  Created by Aaron Anthony on 2019-12-18.
//  Copyright © 2019 SphericalWaveSoftware. All rights reserved.
//

import Foundation
import SQLite

print("Hello, World!")

//let db = SQLiteDatabase()
//let posts = Posts(database: db)
//
//var i = 0
//for post in posts {
//    i += 1
//    print("Post.name = \(post.name)")
//    if i == 3 { break }
//}
//
//let newPost = Post(name: "Awesome Dood")
//posts.add(post: newPost)
//
//i = 0
//for post in posts {
//    i += 1
//    print("Post.name = \(post.name)")
//    if i == 4 { break }
//}
//
////Read Post
//
////Update Post
//
////Delete


let db = try Connection("db.sqlite3")

let users = Table("users")
let id = Expression<Int64>("id")
let name = Expression<String?>("name")
let email = Expression<String>("email")

//try db.run(users.create { t in
//    t.column(id, primaryKey: true)
//    t.column(name)
//    t.column(email, unique: true)
//})
// CREATE TABLE "users" (
//     "id" INTEGER PRIMARY KEY NOT NULL,
//     "name" TEXT,
//     "email" TEXT NOT NULL UNIQUE
// )

let insert = users.insert(name <- "Alice", email <- "alice@mac.com")
let rowid = try db.run(insert)
// INSERT INTO "users" ("name", "email") VALUES ('Alice', 'alice@mac.com')

for user in try db.prepare(users) {
    print("id: \(user[id]), name: \(user[name]), email: \(user[email])")
    // id: 1, name: Optional("Alice"), email: alice@mac.com
}
// SELECT * FROM "users"

let alice = users.filter(id == rowid)

try db.run(alice.update(email <- email.replace("mac.com", with: "me.com")))
// UPDATE "users" SET "email" = replace("email", 'mac.com', 'me.com')
// WHERE ("id" = 1)

try db.run(alice.delete())
// DELETE FROM "users" WHERE ("id" = 1)

try db.scalar(users.count) // 0
// SELECT count(*) FROM "users"

print("finito")
