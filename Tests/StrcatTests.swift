//
//  StrcatTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrcatTests: XCTestCase {

    func testBasic() {
        let left = "ft_strcat: "
        let right = "basic test"
        let source = left + right
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        memcpy(buffer, left, left.count)
        XCTAssert(ft_strcat(buffer, right) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)

        free(buffer)
    }

    func testLargeSize() {
        let left = String(repeating: "A", count: 0xFFFF)
        let right = String(repeating: "B", count: 0xFFF)
        let source = left + right
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        memcpy(buffer, left, left.count)
        XCTAssert(ft_strcat(buffer, right) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)
        free(buffer)
    }

    func testEmpty() {
        let source = ""
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        memcpy(buffer, source, source.count)
        XCTAssert(ft_strcat(buffer, source) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)
        free(buffer)
    }

    func testPerfomance() {
        let left = "ft_strcat: "
        let right = "perfomance test"
        let source = left + right

        measure {
            for _ in 0...1000 {
                let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)
                bzero(buffer, source.count)
                memcpy(buffer, left, left.count)
                ft_strcat(buffer, right)
                free(buffer)
            }
        }
    }
}
