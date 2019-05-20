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
        let foundable: UInt32 = 58
        let notFoundable: UInt32 = 90
        let source = "ft_strchr: basic test"


        XCTAssert(memcmp(ft_strchr(source, foundable), strchr(source, Int32(foundable)), source.count) == 0)
        XCTAssert(ft_strchr(source, notFoundable) == strchr(source, Int32(notFoundable)))
    }

    func testLargeSize() {
        let character: UInt32 = 58
        let source = String(repeating: "A", count: 0xFFFFFFF)
        XCTAssert(ft_strchr(source, character) == strchr(source, Int32(character)))
    }

    func testEmpty() {
        let character: UInt32 = 58
        let source = ""
        XCTAssert(ft_strchr(source, character) == strchr(source, Int32(character)))
    }

    func testPerfomance() {
        let character: Int32 = 58
        let source = "ft_strchr: perfomance test"

        measure {
            for _ in 0...1000 {
                ft_strchr(source, UInt32(character))
            }
        }
    }

}
