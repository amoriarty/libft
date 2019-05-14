//
//  MemchrTests.swift
//  Tests
//
//  Created by Alex Legent on 14/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class MemchrTests: XCTestCase {

    func testBasic() {
        let foundable: Int32 = 58
        let notFoundable: Int32 = 90
        let source = "ft_memchr: basic tests"
        let original = memchr(source, foundable, source.count)!
        let tested = ft_memchr(source, foundable, source.count)

        XCTAssert(tested != nil)
        XCTAssert(original == tested)
        XCTAssert(memcmp(original, tested!, source.count) == 0)
        XCTAssert(ft_memchr(source, notFoundable, source.count) == nil)
    }

    func testLargeSize() {
        let source = String(repeating: "A", count: 0xFFFFFFF)
        XCTAssert(ft_memchr(source, 0, source.count) == nil)
    }

    func testNullByte() {
        let character: Int32 = 0
        let source = "ft_memchr: \0 tests"
        let original = memchr(source, character, source.count)!
        let tested = ft_memchr(source, character, source.count)

        XCTAssert(tested != nil)
        XCTAssert(original == tested)
        XCTAssert(memcmp(original, tested!, source.count) == 0)
    }

    func testNoSize() {
        let source = "ft_memchr: no size test"
        XCTAssert(ft_memchr(source, 0, 0) == nil)
    }

    func testNull() {
        XCTAssert(ft_memchr(nil, 0, 42) == nil)
    }

}
