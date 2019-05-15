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
        var buffer: UnsafeMutableRawPointer! = malloc(42)

        withUnsafeMutablePointer(to: &buffer) {
            ft_memdel(Optional($0))
            XCTAssert($0.pointee == nil)
        }
    }

    func testNull() {
        ft_memdel(nil)
    }

    func testPerformance() {
        measure {
            for _ in 0...1000 {
                var buffer: UnsafeMutableRawPointer! = malloc(42)
                withUnsafeMutablePointer(to: &buffer) { ft_memdel(Optional($0)) }
            }
        }
    }

}
