//
//  StrdelTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrdelTests: XCTestCase {

    func testBasic() {
        var buffer: UnsafeMutablePointer<Int8>? = malloc(42).assumingMemoryBound(to: Int8.self)
        ft_strdel(&buffer)
        XCTAssert(buffer == nil)
    }

    func testPerfomance() {
        measure {
            for _ in 0...1000 {
                var buffer: UnsafeMutablePointer<Int8>? = malloc(42).assumingMemoryBound(to: Int8.self)
                ft_strdel(&buffer)
            }
        }
    }

}
