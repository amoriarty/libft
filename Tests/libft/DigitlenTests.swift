//
//  DigitlenTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class DigitlenTests: XCTestCase {

    func testBasic() {
        XCTAssert(ft_digitlen(0) == 1)
        XCTAssert(ft_digitlen(42) == 2)
        XCTAssert(ft_digitlen(-42) == 3)
        XCTAssert(ft_digitlen(666) == 3)
    }

    func testPerfomance() {
        measure {
            for _ in 0...1000 {
                ft_digitlen(-999999)
            }
        }
    }
}
