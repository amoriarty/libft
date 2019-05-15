//
//  StrchrTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrchrTests: XCTestCase {

    func testBasic() {
        let foundable: Int32 = 58
        let notFoundable: Int32 = 90
        let source = "ft_strchr: basic test"

        XCTAssert(ft_strchr(source, foundable) == strchr(source, foundable))
        XCTAssert(ft_strchr(source, notFoundable) == strchr(source, notFoundable))
    }

    func testLargeSize() {
        let character: Int32 = 58
        let source = String(repeating: "A", count: 0xFFFFFFF)
        XCTAssert(ft_strchr(source, character) == strchr(source, character))
    }

    func testEmpty() {
        let character: Int32 = 58
        let source = ""
        XCTAssert(ft_strchr(source, character) == strchr(source, character))
    }

    func testNull() {
        XCTAssert(ft_strchr(nil, 58) == nil)
    }

    func testPerfomance() {
        let character: Int32 = 58
        let source = "ft_strchr: perfomance test"

        measure {
            for _ in 0...1000 {
                ft_strchr(source, character)
            }
        }
    }

}
