//
//  StrncatTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrncatTests: XCTestCase {

    func testBasic() {
        let left = "ft_strncat: "
        let right = "basic test"
        let source = left + right
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        memcpy(buffer, left, left.count)
        XCTAssert(ft_strncat(buffer, right, source.count) == buffer)
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
        XCTAssert(ft_strncat(buffer, right, source.count) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)
        free(buffer)
    }

    func testNoSize() {
        let left = "ft_strncat: "
        let right = "no size"
        let source = left + right
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        memcpy(buffer, left, left.count)

        XCTAssert(ft_strncpy(buffer, right, 0) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) != 0)
        XCTAssert(memcmp(buffer, left, left.count) == 0)

        free(buffer)
    }

    func testEmpty() {
        let source = ""
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        memcpy(buffer, source, source.count)
        XCTAssert(ft_strncat(buffer, source, source.count) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)
        free(buffer)
    }

    func testNull() {
        let source = "ft_strncat: null test"
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        XCTAssert(ft_strncat(nil, source, source.count) == nil)
        XCTAssert(ft_strncat(buffer, nil, source.count) == buffer)

        free(buffer)
    }

    func testPerfomance() {
        let left = "ft_strncat: "
        let right = "perfomance test"
        let source = left + right

        measure {
            for _ in 0...1000 {
                let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)
                bzero(buffer, source.count)
                memcpy(buffer, left, left.count)
                ft_strncat(buffer, right, source.count)
                free(buffer)
            }
        }
    }

}
