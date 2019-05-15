//
//  StrncmpTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrncmpTests: XCTestCase {

    func testBasic() {
        let left = "ft_strncmp: basics test"
        let right = "ft_strncmp: basics tests"

        XCTAssert(ft_strncmp(left, left, left.count) == strncmp(left, left, left.count))
        XCTAssert(ft_strncmp(left, right, left.count) == strncmp(left, right, left.count))
        XCTAssert(ft_strncmp(left, right, left.count / 2) == strncmp(left, right, left.count / 2))
    }

    func testLargeSize() {
        let source = String(repeating: "A", count: 0xFFFFFF)
        XCTAssert(ft_strncmp(source, source, source.count) == 0)
    }

    func testNoSize() {
        let left = "ft_strcmp: left hand no size test"
        let right = "ft_strcmp: right hand no size test"
        XCTAssert(ft_strncmp(left, right, 0) == strncmp(left, right, 0))
    }

    func testDiffereAfterSize() {
        let left = "ft_strcmp: left hand differ after size test"
        let right = "ft_strcmp: right hand differ after size test"
        XCTAssert(ft_strncmp(left, right, 11) == strncmp(left, right, 11))
    }

    func testEmpty() {
        XCTAssert(ft_strcmp("", "") == 0)
    }

    func testNull() {
        let source = "ft_strncmp: null test"
        XCTAssert(ft_strncmp(nil, source, source.count) == 0)
        XCTAssert(ft_strncmp(source, nil, source.count) == 0)
        XCTAssert(ft_strncmp(nil, nil, source.count) == 0)
    }

    func testPerformance() {
        let source = "ft_strncmp: performance test"

        measure {
            for _ in 0...1000 {
                ft_strncmp(source, source, source.count)
            }
        }
    }

}
