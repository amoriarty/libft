//
//  StrlcatTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrlcatTests: XCTestCase {

    func testBasic() {
        let left = "ft_strlcat: "
        let right = "basic test"
        let source = left + right
        let original = malloc(source.count)!.assumingMemoryBound(to: Int8.self)
        let tested = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(original, source.count)
        bzero(tested, source.count)
        memcpy(original, left, left.count)
        memcpy(tested, left, left.count)
        strlcat(original, right, source.count)
        XCTAssert(ft_strlcat(tested, right, source.count) == source.count)
        XCTAssert(memcmp(original, tested, source.count) == 0)

        free(original)
        free(tested)
    }

    func testLargeSize() {
        let left = String(repeating: "A", count: 0xFFFF)
        let right = String(repeating: "B", count: 0xFFF)
        let source = left + right
        let original = malloc(source.count)!.assumingMemoryBound(to: Int8.self)
        let tested = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(original, source.count)
        bzero(tested, source.count)
        memcpy(original, left, left.count)
        memcpy(tested, left, left.count)
        strlcat(original, right, source.count)
        XCTAssert(ft_strlcat(tested, right, source.count) == source.count)
        XCTAssert(memcmp(tested, tested, source.count) == 0)
        free(tested)
    }

    func testNoSize() {
        let left = "ft_strlcat: "
        let right = "no size"
        let source = left + right
        let original = malloc(source.count)!.assumingMemoryBound(to: Int8.self)
        let tested = malloc(source.count)!.assumingMemoryBound(to: Int8.self)


        bzero(original, source.count)
        bzero(tested, source.count)
        memcpy(original, left, left.count)
        memcpy(tested, left, left.count)

        XCTAssert(ft_strlcat(tested, right, 0) == strlcat(original, right, 0))
        XCTAssert(memcmp(tested, source, source.count) != 0)
        XCTAssert(memcmp(tested, left, left.count) == 0)

        free(original)
        free(tested)
    }

    func testEmpty() {
        let source = ""
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        memcpy(buffer, source, source.count)
        XCTAssert(ft_strlcat(buffer, source, source.count) == source.count)
        XCTAssert(memcmp(buffer, source, source.count) == 0)
        free(buffer)
    }

    func testNull() {
        let source = "ft_strlcat: null test"
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        XCTAssert(ft_strlcat(nil, source, source.count) == 0)
        XCTAssert(ft_strlcat(buffer, nil, source.count) == 0)

        free(buffer)
    }

    func testPerfomance() {
        let left = "ft_strlcat: "
        let right = "perfomance test"
        let source = left + right

        measure {
            for _ in 0...1000 {
                let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)
                bzero(buffer, source.count)
                memcpy(buffer, left, left.count)
                ft_strlcat(buffer, right, source.count)
                free(buffer)
            }
        }
    }

}
