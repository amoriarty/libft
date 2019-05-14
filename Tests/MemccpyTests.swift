//
//  MemccpyTests.swift
//  Tests
//
//  Created by Alex Legent on 14/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class MemccpyTests: XCTestCase {

    func testBasic() {
        let foundable: Int32 = 58
        let notFoundable: Int32 = 90
        let source = "ft_memccpy: basic tests"
        let original = malloc(source.count)!
        let tested = malloc(source.count)!

        bzero(original, source.count)
        bzero(tested, source.count)
        memccpy(original, source, foundable, source.count)
        XCTAssert(ft_memccpy(tested, source, foundable, source.count) != nil)
        XCTAssert(ft_memccpy(tested, source, foundable, source.count) != tested)
        XCTAssert(memcmp(tested, original, source.count) == 0)

        bzero(original, source.count)
        bzero(tested, source.count)
        memccpy(original, source, notFoundable, source.count)
        XCTAssert(ft_memccpy(tested, source, notFoundable, source.count) == nil)
        XCTAssert(memcmp(tested, original, source.count) == 0)

        free(original)
        free(tested)
    }

    func testLargeSize() {
        let character: Int32 = 58
        let source = String(repeating: "A", count: 0xFFFFFFF)
        let buffer = malloc(source.count)!

        bzero(buffer, source.count)
        XCTAssert(ft_memccpy(buffer, source, character, source.count) == nil)

        free(buffer)
    }

    func testNoSize() {
        let character: Int32 = 58
        let source = "ft_memccpy: no size test"
        let buffer = malloc(source.count)!

        bzero(buffer, source.count)
        XCTAssert(ft_memccpy(buffer, source, character, 0) == nil)
        XCTAssert(memcmp(buffer, source, source.count) != 0)

        free(buffer)
    }

    func testNull() {
        let character: Int32 = 58
        let source = "ft_memccpy: no size test"
        let buffer = malloc(source.count)!

        XCTAssert(ft_memccpy(buffer, nil, character, source.count) == nil)
        XCTAssert(ft_memccpy(nil, source, character, source.count) == nil)
        XCTAssert(ft_memccpy(nil, nil, character, source.count) == nil)
    }

    func testPerformance() {
        let source = "ft_memccpy: basic tests"
        let buffer = malloc(source.count)!
        bzero(buffer, source.count)

        measure {
            for _ in 0...1000 {
                ft_memccpy(buffer, source, 58, source.count)
            }
        }

        free(buffer)
    }

}
