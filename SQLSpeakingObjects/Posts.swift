//
//  Posts.swift
//  SQLSpeakingObjects
//
//  Created by Aaron Anthony on 2019-12-18.
//  Copyright © 2019 SphericalWaveSoftware. All rights reserved.
//

import Foundation
import SQLite

struct Posts: Sequence, IteratorProtocol {
    
    let postsDB: PostsDB
    var index = 0
    //let postsTable: Table
    
    init(postsDB: PostsDB) {
        self.postsDB = postsDB
    }

    mutating func next() -> Post? {
        //select id from post
        //construct post here
        //reference to table?
        //let table = postsDB.postsTable
        //let id = Expression<Int64>("id")
        //let thing = try db.prepare("SELECT id, someDate, someString, someInt FROM myTable")
        //let user = postsTable.select(id)
        //return postsDB.post() //temporary
        let post = postsDB.posts[index] //this will crash if we overrun the array
        return nil
    }
    
    func add(post: Post) {
        postsDB.add(post: post) 
    }
}

//Sequence Stuff

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
