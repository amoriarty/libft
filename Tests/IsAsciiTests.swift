//
//  IsAsciiTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class IsAsciiTests: XCTestCase {

    func testBasic() {
        for character: Int32 in 0...256 {
            XCTAssert(ft_isascii(character) == isascii(character))
        }
    }

    func testPerformance() {
        measure {
            for _ in 0...1000 {
                for character: Int32 in 0...127 {
                    ft_isascii(character)
                }
            }
        }
    }

}
