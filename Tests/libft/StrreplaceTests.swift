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

        ft_strreplace(&buffer, source)
        XCTAssert(buffer == source)
        XCTAssert(strcmp(buffer, source) == 0)
        free(source)
    }

    func testPerfomance() {
        let source = "ft_strreplace: perfomance test"
        var buffer = strdup("ft_strreplace: perfomance test")

        measure {
            for _ in 0...1000 {
                ft_strreplace(&buffer, strdup(source))
            }
        }

        free(buffer)
    }

}
