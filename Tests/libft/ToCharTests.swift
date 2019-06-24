//
//  ToCharTests.swift
//  Tests
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ToCharTests: XCTestCase {

    func testBasic() {
        for character: Int32 in 0...127 {
            switch character {
            case 0...9: XCTAssert(ft_tochar(character) == character + 48)
            default: XCTAssert(ft_tochar(character) == ERROR)
            }
        }
    }

    func testPerformance() {
        measure {
            for _ in 0...1000 {
                ft_tochar(2)
            }
        }
    }

}
