//
//  StrclenTests.swift
//  Tests
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrclenTests: XCTestCase {

    func testBasic() {
        let source = "ft_strclen: basics test"
        XCTAssert(ft_strclen(source, 0) == source.count)
        XCTAssert(ft_strclen(source, 58) == 10)
    }

    func testLargeSize() {
        let source = String(repeating: "A", count: 0xFFFFFF)
        XCTAssert(ft_strclen(source, 0) == source.count)
    }

    func testEmpty() {
        let source = ""
        XCTAssert(ft_strclen(source, 0) == source.count)
    }

    func testPerfomance() {
        let source = "ft_strclen: perfomance test"

        measure {
            for _ in 0...1000 {
                ft_strclen(source, 58)
            }
        }
    }

}
