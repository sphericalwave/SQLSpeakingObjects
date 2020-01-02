//
//  main.swift
//  SQLSpeakingObjects
//
//  Created by Aaron Anthony on 2019-12-18.
//  Copyright © 2019 SphericalWaveSoftware. All rights reserved.
//

import Foundation
import SQLite

//let db = try Connection("db.sqlite3")   //TODO: Question naming on GitHub
//
//let postsTable = Table("users")
//let id = Expression<Int64>("id")
//let date = Expression<Date>("date")
//let title = Expression<String>("title")
//
//do {
//    try db.run(postsTable.create { table in
//        table.column(id, primaryKey: true)
//        table.column(date)
//        table.column(title, unique: true)
//    })
//}
//    //TODO: What errors are thrown? Table already exists is fine
//catch { Swift.print(error.localizedDescription) }

//let postsDB = PostsDB(database: db, postsTable: postsTable)

let sqlDb2 = SQLiteDatabase2(path: "db.sqlite3")

let createTable = """
CREATE TABLE Contact(
    Id INT PRIMARY KEY NOT NULL,
    Name CHAR(255)
);
"""


let ptr = try! sqlDb2.createTable(sql: createTable)
