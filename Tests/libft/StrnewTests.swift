//
//  StrnewTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrnewTests: XCTestCase {

    func testBasic() {
        let buffer = ft_strnew(42)
        XCTAssert(buffer != nil)
        free(buffer)
    }

    func testNoSize() {
        let buffer = ft_strnew(0)
        XCTAssert(buffer != nil)
        XCTAssert(strcmp(buffer, "") == 0)
    }

    func testZeroes() {
        let size = 42
        let buffer = ft_strnew(size)!
        let compare = malloc(size + 1)!.assumingMemoryBound(to: Int8.self)

        bzero(compare, size)
        XCTAssert(strcmp(buffer, compare) == 0)

        free(buffer)
        free(compare)
    }

    func testPerfomance() {
        measure {
            for _ in 0...1000 {
                let buffer = ft_strnew(42)
                free(buffer)
            }
        }
    }

}
