//
//  SQLiteDatabase.swift
//  SQLSpeakingObjects
//
//  Created by Aaron Anthony on 2020-01-02.
//  Copyright © 2020 SphericalWaveSoftware. All rights reserved.
//

import Foundation
import SQLite

class SQLiteDatabase2
{
    var db: OpaquePointer?

    init(path: String) {
        guard sqlite3_open(path, &db) == SQLITE_OK else { fatalError() }
    }
    
    deinit { sqlite3_close(db) }
    
    func prepareStatement(sql: String) throws -> OpaquePointer? {
        var statement: OpaquePointer?
        guard sqlite3_prepare_v2(db, sql, -1, &statement, nil) == SQLITE_OK else { fatalError() }
        return statement
    }
    
    func createTable(sql: String) {
        let createTableStatement = try! prepareStatement(sql: sql)
        defer { sqlite3_finalize(createTableStatement) }
        guard sqlite3_step(createTableStatement) == SQLITE_DONE else { fatalError() }
    }
}

