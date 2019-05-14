//
//  MemsetTests.swift
//  Tests
//
//  Created by Alex Legent on 14/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class MemsetTests: XCTestCase {

    func testBasic() {
        let size = 42
        let original = malloc(size)!
        let tested = malloc(size)!

        memset(original, 42, size)
        XCTAssert(ft_memset(tested, 42, size) == tested)
        XCTAssert(memcmp(original, tested, size) == 0)

        memset(original, 24, size)
        XCTAssert(ft_memset(tested, 24, size) == tested)
        XCTAssert(memcmp(original, tested, size) == 0)

        memset(original, 0, size / 2)
        XCTAssert(ft_memset(tested, 0, size / 2) == tested)
        XCTAssert(memcmp(original, tested, size) == 0)

        free(original)
        free(tested)
    }

    func testLargeSize() {
        let size = 0xFFFFFFFF
        let original = malloc(size)!
        let tested = malloc(size)!
        let expect = expectation(description: "ft_memset should take less than 10 seconds on large size")

        memset(original, 42, size)
        waitForExpectations(timeout: 10) { error in
            XCTAssert(ft_memset(tested, 42, size) == tested)
            expect.fulfill()
        }

        XCTAssert(memcmp(original, tested, size) == 0)

        free(original)
        free(tested)
    }

    func testNoSize() {
        let size = 42
        let char: Int32 = 42
        let original = malloc(size)!
        let tested = malloc(size)!

        memset(original, char, size)
        memset(tested, char, size)
        XCTAssert(ft_memset(tested, 0, 0) == tested)
        XCTAssert(memcmp(original, tested, size) == 0)

        free(original)
        free(tested)
    }

    func testNull() {
        XCTAssert(ft_memset(nil, 0, 42) == nil)
    }

}
