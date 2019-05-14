//
//  MemcpyTests.swift
//  Tests
//
//  Created by Alex Legent on 14/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class MemcpyTests: XCTestCase {

    func testBasic() {
        let source = "ft_memcpy: basic test"
        let buffer = malloc(source.count)!

        bzero(buffer, source.count)
        XCTAssert(ft_memcpy(buffer, source, source.count) != buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)

        free(buffer)
    }

    func testLargeSize() {
        let source = String(repeating: "A", count: 0xFFFFFFF)
        let buffer = malloc(source.count)!
        let expect = expectation(description: "ft_memcpy should take less than 30 seconds on large size")

        bzero(buffer, source.count)
        waitForExpectations(timeout: 30) { error in
            XCTAssert(ft_memcpy(buffer, source, source.count) != nil)
            expect.fulfill()
        }

        XCTAssert(memcmp(buffer, source, source.count) != 0)

        free(buffer)
    }

    func testNull() {
        let source = "ft_memcpy: null test"
        let buffer = malloc(source.count)!

        bzero(buffer, source.count)
        XCTAssert(ft_memcpy(nil, source, source.count) == nil)
        XCTAssert(ft_memcpy(buffer, nil, source.count) == buffer)

        free(buffer)
    }

    func testNoSize() {
        let source = "ft_memcpy: no size"
        let original = malloc(source.count)!
        let tested = malloc(source.count)!

        bzero(original, source.count)
        bzero(tested, source.count)
        XCTAssert(ft_memcpy(tested, source, 0) == tested)
        XCTAssert(memcmp(tested, source, source.count) != 0)
        XCTAssert(memcmp(tested, original, source.count) == 0)

        free(original)
        free(tested)
    }

}
