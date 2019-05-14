//
//  MemmoveTests.swift
//  Tests
//
//  Created by Alex Legent on 14/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class MemmoveTests: XCTestCase {

    func testBasic() {
        let source = "ft_memmove: basic tests"
        let buffer = malloc(source.count)!

        bzero(buffer, source.count)

        XCTAssert(ft_memmove(buffer, source, source.count) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)

        free(buffer)
    }

    func testLargeSize() {
        let source = String(repeating: "A", count: 0xFFFFFFF)
        let buffer = malloc(source.count)!
        let expect = expectation(description: "ft_memmove should take less than 30 seconds on large size")

        waitForExpectations(timeout: 30) { error in
            XCTAssert(ft_memmove(buffer, source, source.count) == buffer)
            expect.fulfill()
        }

        free(buffer)
    }

    func testNullByte() {
        let source = "ft_memmove: \0 tests"
        let buffer = malloc(source.count)!

        bzero(buffer, source.count)

        XCTAssert(ft_memmove(buffer, source, source.count) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)

        free(buffer)
    }

    func testOverlapping() {
        let source = "ft_memmove: overlapping tests"
        let original = malloc(source.count)!
        let tested = malloc(source.count)!

        bzero(original, source.count)
        bzero(tested, source.count)

        memmove(original + 3, source, source.count)
        XCTAssert(ft_memmove(tested + 3, source, source.count) == tested + 3)
        XCTAssert(memcmp(tested, original, source.count) == 0)

        memmove(original, original + 3, source.count)
        XCTAssert(ft_memmove(tested, tested + 3, source.count) == tested)
        XCTAssert(memcmp(tested, original, source.count) == 0)

        free(original)
        free(tested)
    }

    func testNull() {
        let source = "ft_memmove: null tests"
        let buffer = malloc(source.count)!

        bzero(buffer, source.count)

        XCTAssert(ft_memmove(nil, nil, source.count) == nil)
        XCTAssert(ft_memmove(nil, source, source.count) == nil)
        XCTAssert(ft_memmove(buffer, nil, source.count) == buffer)

        free(buffer)
    }

}
