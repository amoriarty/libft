//
//  IsLowerTests.swift
//  Tests
//
//  Created by Alex Legent on 20/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class IsLowerTests: XCTestCase {

    func testBasic() {
        for character: Int32 in 0...127 {
            let lower = character >= 97 && character <= 122 ? TRUE : FALSE
            XCTAssert(ft_islower(character) == lower)
        }
    }

    func testPerfomance() {
        measure {
            for _ in 0...1000 {
                for character: Int32 in 0...127 {
                    ft_islower(character)
                }
            }
        }
    }

}
