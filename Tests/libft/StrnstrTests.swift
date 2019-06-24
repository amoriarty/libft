//
//  StrnstrTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrnstrTests: XCTestCase {

    func testBasic() {
        let haystack = "ft_strnstr: basic test"
        let needle = "ft_strnstr"

        XCTAssert(ft_strnstr(haystack, needle, haystack.count) == strnstr(haystack, needle, haystack.count))
    }

    func testLargeSize() {
        let haystack = String(repeating: "A", count: 0xFFFFFFF)
        let needle = "ft_strnstr"
        XCTAssert(ft_strnstr(haystack, needle, haystack.count) == strnstr(haystack, needle, haystack.count))
    }

    func testNoSize() {
        let haystack = "ft_strnstr: no size test"
        let needle = "ft_strnstr"

        XCTAssert(ft_strnstr(haystack, needle, 0) == strnstr(haystack, needle, 0))
    }

    func testEmpty() {
        let haystack = ""
        let needle = "ft_strnstr"
        XCTAssert(ft_strnstr(haystack, needle, haystack.count) == strnstr(haystack, needle, haystack.count))
    }

    func testPerfomance() {
        let haystack = "ft_strnstr: perfomance test"
        let needle = "ft_strnstr"

        measure {
            for _ in 0...1000 {
                ft_strnstr(haystack, needle, haystack.count)
            }
        }
    }

}
