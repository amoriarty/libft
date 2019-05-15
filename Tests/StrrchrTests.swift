//
//  StrrchrTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrrchrTests: XCTestCase {

    func testBasic() {
        let foundable: Int32 = 58
        let notFoundable: Int32 = 90
        let source = "ft_strrchr: basic test"

        XCTAssert(ft_strrchr(source, foundable) == strrchr(source, foundable))
        XCTAssert(ft_strrchr(source, notFoundable) == strrchr(source, notFoundable))
    }

    func testLargeSize() {
        let character: Int32 = 58
        let source = String(repeating: "A", count: 0xFFFFFFF)
        XCTAssert(ft_strrchr(source, character) == strrchr(source, character))
    }

    func testEmpty() {
        let character: Int32 = 58
        let source = ""
        XCTAssert(ft_strrchr(source, character) == strrchr(source, character))
    }

    func testNull() {
        XCTAssert(ft_strrchr(nil, 58) == nil)
    }

    func testPerfomance() {
        let character: Int32 = 58
        let source = "ft_strrchr: perfomance test"

        measure {
            for _ in 0...1000 {
                ft_strrchr(source, character)
            }
        }
    }

}
