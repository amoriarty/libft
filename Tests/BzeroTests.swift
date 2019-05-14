//
//  BzeroTests.swift
//  Tests
//
//  Created by Alex Legent on 14/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class BzeroTests: XCTestCase {

    func testBasic() {
        let size = 42
        let original = malloc(size)!
        let tested = malloc(size)!

        bzero(original, size)
        memset(tested, 42, size)
        ft_bzero(tested, size)
        XCTAssert(memcmp(original, tested, size) == 0)
        
        free(original)
        free(tested)
    }

    func testLargeSize() {
        let size = 0xFFFFFFFF
        let original = malloc(size)!
        let tested = malloc(size)!
        let expect = expectation(description: "ft_bzero should take less than 10 second on large size")

        bzero(original, size)
        memset(tested, 42, size)
        waitForExpectations(timeout: 10) { error in
            ft_bzero(tested, size)
            expect.fulfill()
        }

        XCTAssert(memcmp(original, tested, size) == 0)

        free(original)
        free(tested)
    }

    func testNull() {
        ft_bzero(nil, 42)
    }

    func testNoSize() {
        let size = 42
        let original = malloc(size)!
        let tested = malloc(size)!

        memset(original, 42, size)
        memset(tested, 42, size)
        ft_bzero(tested, 0)
        XCTAssert(memcmp(original, tested, size) == 0)

        free(original)
        free(tested)
    }

}
