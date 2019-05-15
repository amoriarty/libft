//
//  StrequTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrequTests: XCTestCase {

    func testBasic() {
        let left = "ft_strequ: basics test"
        let right = "ft_strequ: basics tests"

        XCTAssert(ft_strequ(left, left) == 1)
        XCTAssert(ft_strequ(left, right) == 0)
    }

    func testLargeSize() {
        let source = String(repeating: "A", count: 0xFFFFFF)
        XCTAssert(ft_strequ(source, source) == 1)
    }

    func testEmpty() {
        XCTAssert(ft_strequ("", "") == 1)
    }

    func testNull() {
        let source = "ft_strequ: null test"
        XCTAssert(ft_strequ(nil, source) == 0)
        XCTAssert(ft_strequ(source, nil) == 0)
        XCTAssert(ft_strequ(nil, nil) == 0)
    }

    func testPerformance() {
        let source = "ft_strequ: performance test"

        measure {
            for _ in 0...1000 {
                ft_strequ(source, source)
            }
        }
    }

}