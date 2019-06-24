//
//  StrstrTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrstrTests: XCTestCase {

    func testBasic() {
        let haystack = "ft_strstr: basic test"
        let needle = "ft_strstr"

        XCTAssert(ft_strstr(haystack, needle) == strstr(haystack, needle))
    }

    func testLargeSize() {
        let haystack = String(repeating: "A", count: 0xFFFFFFF)
        let needle = "ft_strstr"
        XCTAssert(ft_strstr(haystack, needle) == strstr(haystack, needle))
    }

    func testEmpty() {
        let haystack = ""
        let needle = "ft_strstr"
        XCTAssert(ft_strstr(haystack, needle) == strstr(haystack, needle))
    }

    func testPerfomance() {
        let haystack = "ft_strstr: perfomance test"
        let needle = "ft_strstr"

        measure {
            for _ in 0...1000 {
                ft_strstr(haystack, needle)
            }
        }
    }

}
