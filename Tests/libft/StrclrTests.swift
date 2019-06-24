//
//  StrclrTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrclrTests: XCTestCase {

    func testBasic() {
        let size = 42
        let original = malloc(size)!.assumingMemoryBound(to: Int8.self)
        let tested = malloc(size)!.assumingMemoryBound(to: Int8.self)

        bzero(original, size)
        bzero(tested, size)
        memset(tested, 58, size - 1)
        ft_strclr(tested)
        XCTAssert(memcmp(original, tested, size) == 0)

        free(original)
        free(tested)
    }

    func testPerfomance() {
        let size = 42
        let buffer = malloc(size)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, size)
        measure {
            for _ in 0...1000 {
                memset(buffer, 58, size - 1)
                ft_strclr(buffer)
            }
        }

        free(buffer)
    }

}
