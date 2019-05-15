//
//  SrtlenTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class SrtlenTests: XCTestCase {

    func testBasic() {
        let source = "ft_strlen: basics test"
        XCTAssert(ft_strlen(source) == source.count)
    }

    func testLargeSize() {
        let source = String(repeating: "A", count: 0xFFFFFF)
        XCTAssert(ft_strlen(source) == source.count)
    }

    func testEmpty() {
        let source = ""
        XCTAssert(ft_strlen(source) == source.count)
    }

    func testNull() {
        XCTAssert(ft_strlen(nil) == 0)
    }

    func testPerfomance() {
        let source = "ft_strlen: perfomance test"

        measure {
            for _ in 0...1000 {
                ft_strlen(source)
            }
        }
    }

}
