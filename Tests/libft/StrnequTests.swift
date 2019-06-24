//
//  StrnequTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrnequTests: XCTestCase {

    func testBasic() {
        let left = "ft_strnequ: basics tests"
        let right = "ft_strnequ: basics test"

        XCTAssert(ft_strnequ(left, left, left.count) == TRUE)
        XCTAssert(ft_strnequ(left, right, left.count) == FALSE)
        XCTAssert(ft_strnequ(left, right, left.count / 2) == TRUE)
    }

    func testLargeSize() {
        let source = String(repeating: "A", count: 0xFFFFFF)
        XCTAssert(ft_strnequ(source, source, source.count) == TRUE)
    }

    func testNoSize() {
        let left = "ft_strcmp: left hand no size test"
        let right = "ft_strcmp: right hand no size test"
        XCTAssert(ft_strnequ(left, right, 0) == TRUE)
    }

    func testDiffereAfterSize() {
        let left = "ft_strcmp: left hand differ after size test"
        let right = "ft_strcmp: right hand differ after size test"
        XCTAssert(ft_strnequ(left, right, 11) == TRUE)
    }

    func testEmpty() {
        XCTAssert(ft_strnequ("", "", 1) == TRUE)
    }

    func testPerformance() {
        let source = "ft_strnequ: performance test"

        measure {
            for _ in 0...1000 {
                ft_strnequ(source, source, source.count)
            }
        }
    }

}
