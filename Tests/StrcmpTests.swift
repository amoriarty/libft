//
//  StrcmpTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrcmpTests: XCTestCase {

    func testBasic() {
        let left = "ft_strcmp: basics test"
        let right = "ft_strcmp: basics tests"

        XCTAssert(ft_strcmp(left, left) == strcmp(left, left))
        XCTAssert(ft_strcmp(left, right) == strcmp(left, right))
        XCTAssert(ft_strcmp(left, right) == strcmp(left, right))
    }

    func testLargeSize() {
        let source = String(repeating: "A", count: 0xFFFFFF)
        XCTAssert(ft_strcmp(source, source) == 0)
    }

    func testEmpty() {
        XCTAssert(ft_strcmp("", "") == 0)
    }

    func testPerformance() {
        let source = "ft_strcmp: performance test"

        measure {
            for _ in 0...1000 {
                ft_strcmp(source, source)
            }
        }
    }

}
