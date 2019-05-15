//
//  StrncpyTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrncpyTests: XCTestCase {

    func testBasic() {
        let source = "ft_strncpy: basic test"
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        XCTAssert(ft_strncpy(buffer, source, source.count) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)

        free(buffer)
    }

    func testLargeSize() {
        let source = String(repeating: "A", count: 0xFFFFFFF)
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        XCTAssert(ft_strncpy(buffer, source, source.count) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)

        free(buffer)
    }

    func testNoSize() {
        let source = "ft_strncpy: no size"
        let original = malloc(source.count)!.assumingMemoryBound(to: Int8.self)
        let tested = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(original, source.count)
        bzero(tested, source.count)
        XCTAssert(ft_strncpy(tested, source, 0) == tested)
        XCTAssert(memcmp(tested, source, source.count) != 0)
        XCTAssert(memcmp(tested, original, source.count) == 0)

        free(original)
        free(tested)
    }

    func testEmpty() {
        let source = ""
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        XCTAssert(ft_strcpy(buffer, source) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)

        free(buffer)
    }

    func testNull() {
        let source = "ft_strncpy: null test"
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        XCTAssert(ft_strncpy(nil, nil, source.count) == nil)
        XCTAssert(ft_strncpy(nil, source, source.count) == nil)
        XCTAssert(ft_strncpy(buffer, nil, source.count) == buffer)

        free(buffer)
    }

    func testPerformance() {
        let source = "ft_strncpy: perfomance test"
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)

        measure {
            for _ in 0...1000 {
                ft_strncpy(buffer, source, source.count)
            }
        }

        free(buffer)
    }

}
