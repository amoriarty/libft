//
//  ToIntTests.swift
//  Tests
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ToIntTests: XCTestCase {

    func testBasic() {
        for character: Int8 in 0...127 {
            switch character {
            case 0...9: XCTAssert(ft_toint(character + 48) == character)
            case 10...79: XCTAssert(ft_toint(character + 48) == ERROR)
            default: break;
            }
        }
    }

    func testPerformance() {
        measure {
            for _ in 0...1000 {
                ft_toint(2)
            }
        }
    }

}
