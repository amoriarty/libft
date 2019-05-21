//
//  MemallocTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class MemallocTests: XCTestCase {

    func testBasic() {
        let size = 42
        let buffer = ft_memalloc(size)

        XCTAssert(buffer != nil)
        bzero(buffer, size)
        free(buffer)
    }

    func testNoSize() {
        let buffer = ft_memalloc(0)?.assumingMemoryBound(to: Int8.self)
        XCTAssert(buffer != nil)
        XCTAssert(strcmp(buffer, "") == 0)
    }

    func testPerfomance() {
        measure {
            for _ in 0...1000 {
                let buffer = ft_memalloc(42)
                free(buffer)
            }
        }
    }

}
