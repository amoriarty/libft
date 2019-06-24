//
//  ToUpperTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ToUpperTests: XCTestCase {

    func testBasic() {
        for character: Int32 in 0...127 {
            XCTAssert(ft_toupper(character) == toupper(character))
        }
    }

    func testPerformance() {
        measure {
            for _ in 0...1000 {
                for character: Int32 in 0...127 {
                    ft_toupper(character)
                }
            }
        }
    }

}
