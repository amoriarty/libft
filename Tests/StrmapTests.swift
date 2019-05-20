//
//  StrmapTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrmapTests: XCTestCase {

    func testBasic() {
        let source = "hello world!"
        let mapped = ft_strmap(source) { Int8(toupper(Int32($0))) }

        XCTAssert(mapped != nil)
        XCTAssert(memcmp(mapped!, source.uppercased(), source.count) == 0)
        free(mapped)
    }

    func testPerfomance() {
        let source = "hello world!"

        measure {
            for _ in 0...1000 {
                let mapped = ft_strmap(source) { Int8(toupper(Int32($0))) }
                free(mapped)
            }
        }
    }

}
