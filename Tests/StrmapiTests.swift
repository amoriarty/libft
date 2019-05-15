//
//  StrmapiTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrmapiTests: XCTestCase {

    func testBasic() {
        let source = "hello world!"
        let mapped = ft_strmapi(source) { Int8(toupper(Int32($1))) }

        XCTAssert(mapped != nil)
        XCTAssert(memcmp(mapped!, source.uppercased(), source.count) == 0)
        free(mapped)
    }

    func testNull() {
        let mapped = ft_strmapi(nil) { Int8(toupper(Int32($1))) }
        XCTAssert(mapped == nil)
    }

    func testPerfomance() {
        let source = "hello world!"

        measure {
            for _ in 0...1000 {
                let mapped = ft_strmapi(source) { Int8(toupper(Int32($1))) }
                free(mapped)
            }
        }
    }

}
