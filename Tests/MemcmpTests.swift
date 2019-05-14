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

    func testNull() {
        let source = "ft_memcmp: null test"
        XCTAssert(ft_memcmp(nil, source, source.count) == 0)
        XCTAssert(ft_memcmp(source, nil, source.count) == 0)
        XCTAssert(ft_memcmp(nil, nil, source.count) == 0)
    }

}
