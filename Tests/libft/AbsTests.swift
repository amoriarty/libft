//
//  AbsTests.swift
//  Tests
//
//  Created by Alex Legent on 20/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class AbsTests: XCTestCase {

    func testBasic() {
        XCTAssert(ft_abs(42) == 42)
        XCTAssert(ft_abs(-42) == 42)
        XCTAssert(ft_abs(80) == 80)
        XCTAssert(ft_abs(-200) == 200)
        XCTAssert(ft_abs(-9999) == 9999)
    }

    func testPerfomance() {
        measure {
            for _ in 0...1000 {
                ft_abs(-42)
            }
        }
    }

}
