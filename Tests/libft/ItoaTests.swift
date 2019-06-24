//
//  ItoaTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ItoaTests: XCTestCase {

    func testBasic() {
        XCTAssert(memcmp(ft_itoa(0), "0", 1) == 0)
        XCTAssert(memcmp(ft_itoa(42), "42", 2) == 0)
        XCTAssert(memcmp(ft_itoa(-42), "-42", 3) == 0)
    }

    func testExtrem() {
        let min = String(INT16_MIN)
        let max = String(INT_MAX)

        XCTAssert(memcmp(ft_itoa(INT16_MIN), min, min.count) == 0)
        XCTAssert(memcmp(ft_itoa(INT_MAX), max, max.count) == 0)
    }

    func testPerformance() {
        measure {
            for _ in 0...1000 {
                ft_itoa(INT_MAX)
            }
        }
    }

}
