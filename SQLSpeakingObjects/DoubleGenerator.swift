//
//  Posts.swift
//  SQLSpeakingObjects
//
//  Created by Aaron Anthony on 2019-12-18.
//  Copyright © 2019 SphericalWaveSoftware. All rights reserved.
//

import Foundation

struct DoubleGenerator: Sequence, IteratorProtocol
{
    var current = 1

    mutating func next() -> Int? {
        defer { current *= 2 }
        return current
    }
}
