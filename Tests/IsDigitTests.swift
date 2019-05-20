//
//  IsDigitTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class IsDigitTests: XCTestCase {

    func testBasic() {
        for character: Int32 in 0...127 {
            XCTAssert(ft_isdigit(character).rawValue == isdigit(character))
        }
    }

    func testPerformance() {
        measure {
            for _ in 0...1000 {
                for character: Int32 in 0...127 {
                    ft_isdigit(character)
                }
            }
        }
    }

}
