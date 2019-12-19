//
//  main.swift
//  SQLSpeakingObjects
//
//  Created by Aaron Anthony on 2019-12-18.
//  Copyright © 2019 SphericalWaveSoftware. All rights reserved.
//

import Foundation

print("Hello, World!")

let db = SQLiteDatabase()
let posts = Posts(database: db)

var i = 0
for post in posts {
    i += 1
    print("Post.name = \(post.name)")
    if i == 3 { break }
}

let newPost = Post(name: "Awesome Dood")
posts.add(post: newPost)

i = 0
for post in posts {
    i += 1
    print("Post.name = \(post.name)")
    if i == 4 { break }
}

//Read Post

//Update Post

//Delete

print("finito")
