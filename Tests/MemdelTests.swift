//
//  MemdelTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class MemdelTests: XCTestCase {

    func testBasic() {
        var buffer = malloc(42)
        ft_memdel(&buffer)
        XCTAssert(buffer == nil)
    }

    func testPerformance() {
        measure {
            for _ in 0...1000 {
                var buffer = malloc(42)
                ft_memdel(&buffer)
            }
        }
    }

}
