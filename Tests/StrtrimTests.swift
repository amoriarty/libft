//
//  StrtrimTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrtrimTests: XCTestCase {

    func testBasic() {
        let source = "\t\t   ft_strtrim: basic tests   \t\n"
        let trimmed = ft_strtrim(source)

        XCTAssert(trimmed != nil)
        XCTAssert(memcmp(trimmed!, source.trimmingCharacters(in: .whitespacesAndNewlines), source.count) == 0)

        free(trimmed)
    }

    func testNull() {
        XCTAssert(ft_strtrim(nil) == nil)
    }

    func testPerfomance() {
        let source = "\t\t   ft_strtrim: basic tests   \t\n"

        measure {
            for _ in 0...1000 {
                let trimmed = ft_strtrim(source)
                free(trimmed)
            }
        }
    }

}
