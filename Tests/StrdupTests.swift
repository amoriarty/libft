//
//  StrdupTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrdupTests: XCTestCase {

    func testBasic() {
        let source = "ft_strdup: basics test"
        let buffer = ft_strdup(source)

        XCTAssert(buffer != nil)
        XCTAssert(memcmp(buffer!, source, source.count) == 0)

        free(buffer)
    }

    func testEmpty() {
        let source = ""
        let buffer = ft_strdup(source)

        XCTAssert(buffer != nil)
        XCTAssert(memcmp(buffer!, source, source.count) == 0)
        free(buffer)
    }

    func testNull() {
        XCTAssert(ft_strdup(nil) == nil)
    }

    func testPerfomance() {
        let source = "ft_strdup: perfomance test"

        measure {
            for _ in 0...1000 {
                let buffer = ft_strdup(source)
                free(buffer)
            }
        }
    }

}
