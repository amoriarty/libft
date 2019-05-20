//
//  IsUpperTests.swift
//  Tests
//
//  Created by Alex Legent on 20/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class IsUpperTests: XCTestCase {

    func testBasic() {
        for character: Int32 in 0...127 {
            let upper = character >= 65 && character <= 90 ? TRUE : FALSE
            XCTAssert(ft_isupper(character) == upper)
        }
    }

    func testPerfomance() {
        measure {
            for _ in 0...1000 {
                for character: Int32 in 0...127 {
                    ft_isupper(character)
                }
            }
        }
    }

}
