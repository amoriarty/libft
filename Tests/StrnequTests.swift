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

        XCTAssert(ft_strnequ(left, left, left.count) == 1)
        XCTAssert(ft_strnequ(left, right, left.count) == 0)
        XCTAssert(ft_strnequ(left, right, left.count / 2) == 1)
    }

    func testLargeSize() {
        let source = String(repeating: "A", count: 0xFFFFFF)
        XCTAssert(ft_strnequ(source, source, source.count) == 1)
    }

    func testNoSize() {
        let left = "ft_strcmp: left hand no size test"
        let right = "ft_strcmp: right hand no size test"
        XCTAssert(ft_strnequ(left, right, 0) == 1)
    }

    func testDiffereAfterSize() {
        let left = "ft_strcmp: left hand differ after size test"
        let right = "ft_strcmp: right hand differ after size test"
        XCTAssert(ft_strnequ(left, right, 11) == 1)
    }

    func testEmpty() {
        XCTAssert(ft_strcmp("", "") == 1)
    }

    func testNull() {
        let source = "ft_strnequ: null test"
        XCTAssert(ft_strnequ(nil, source, source.count) == 0)
        XCTAssert(ft_strnequ(source, nil, source.count) == 0)
        XCTAssert(ft_strnequ(nil, nil, source.count) == 0)
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
