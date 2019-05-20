//
//  StrcpyTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrcpyTests: XCTestCase {

    func testBasic() {
        let source = "ft_strcpy: basic test"
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        XCTAssert(ft_strcpy(buffer, source) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)

        free(buffer)
    }

    func testLargeSize() {
        let source = String(repeating: "A", count: 0xFFFFFFF)
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        XCTAssert(ft_strcpy(buffer, source) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)

        free(buffer)
    }

    func testEmpty() {
        let source = ""
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        XCTAssert(ft_strcpy(buffer, source) == buffer)
        XCTAssert(memcmp(buffer, source, source.count) == 0)

        free(buffer)
    }

    func testPerformance() {
        let source = "ft_strcpy: perfomance test"
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)

        measure {
            for _ in 0...1000 {
                ft_strcpy(buffer, source)
            }
        }

        free(buffer)
    }

}
