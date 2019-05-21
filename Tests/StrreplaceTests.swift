//
//  StrreplaceTests.swift
//  Tests
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrreplaceTests: XCTestCase {

    func testBasic() {
        let source = strdup("ft_strreplace: basic test")
        var buffer = strdup("Hello World!")

        withUnsafeMutablePointer(to: &buffer) { pointer in
            ft_strreplace(pointer, source)
            XCTAssert(pointer.pointee != nil)
            XCTAssert(pointer.pointee == source)
            XCTAssert(strcmp(pointer.pointee, source) == 0)
        }

        free(source)
    }

    func testPerfomance() {
        let source = "ft_strreplace: perfomance test"
        var buffer = strdup("ft_strreplace: perfomance test")

        measure {
            for _ in 0...1000 {
                withUnsafeMutablePointer(to: &buffer) { pointer in
                    ft_strreplace(pointer, strdup(source))
                }
            }
        }

        free(buffer)
    }

}
