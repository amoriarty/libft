//
//  AtoiTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class AtoiTests: XCTestCase {

    func testBasic() {
        XCTAssert(ft_atoi("0") == 0)
        XCTAssert(ft_atoi("42") == 42)
        XCTAssert(ft_atoi("+42") == 42)
        XCTAssert(ft_atoi("-42") == -42)
        XCTAssert(ft_atoi("++42") == 0)
        XCTAssert(ft_atoi("--42") == 0)
        XCTAssert(ft_atoi("42error") == 42)
        XCTAssert(ft_atoi("error") == 0)
        XCTAssert(ft_atoi("error42") == 0)
    }

    func testExtrem() {
        let min = String(INT16_MIN)
        let max = String(INT_MAX)

        XCTAssert(ft_atoi(min) == INT16_MIN)
        XCTAssert(ft_atoi(max) == INT_MAX)
    }

    func testOverflow() {
        let value = String(repeating: "9", count: 42)
        XCTAssert(ft_atoi(value) == atoi(value))
    }

    func testPerformance() {
        let max = String(INT_MAX)

        measure {
            for _ in 0...1000 {
                ft_atoi(max)
            }
        }
    }
}
