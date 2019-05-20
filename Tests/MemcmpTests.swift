//
//  MemcmpTests.swift
//  Tests
//
//  Created by Alex Legent on 14/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class MemcmpTests: XCTestCase {

    func testBasic() {
        let left = "ft_memcmp: basics test"
        let right = "ft_memcmp: basics tests"

        XCTAssert(ft_memcmp(left, left, left.count) == memcmp(left, left, left.count))
        XCTAssert(ft_memcmp(left, right, left.count) == memcmp(left, right, left.count))
        XCTAssert(ft_memcmp(left, right, left.count / 2) == memcmp(left, right, left.count / 2))
    }

    func testLargeSize() {
        let source = String(repeating: "A", count: 0xFFFFFF)
        XCTAssert(ft_memcmp(source, source, source.count) == 0)
    }

    func testPerformance() {
        let source = "ft_memcmp: performance test"

        measure {
            for _ in 0...1000 {
                ft_memcmp(source, source, source.count)
            }
        }
    }

}
