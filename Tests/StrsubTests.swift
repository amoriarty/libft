//
//  StrsubTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrsubTests: XCTestCase {

    func testBasic() {
        let source = "ft_strsub: basic test"
        let buffer = ft_strsub(source, 0, 9)

        XCTAssert(buffer != nil)
        XCTAssert(memcmp(source, buffer!, 9) == 0)

        free(buffer)
    }

    func testNoSize() {
        let source = "ft_strsub: no size test"
        let buffer = ft_strsub(source, 0, 0)

        XCTAssert(buffer == nil)
        free(buffer)
    }

    func testPerfomance() {
        let source = "ft_strsub: basic test"

        measure {
            for _ in 0...1000 {
                let buffer = ft_strsub(source, 0, 9)
                free(buffer)
            }
        }
    }

}
