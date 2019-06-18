//
//  PrintfReusedArgsTests.swift
//  Tests
//
//  Created by Alex Legent on 18/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class PrintfReusedArgsTests: XCTestCase {

    func testBasic() {
        for character: Int8 in 33..<126 {
            XCTAssert(printf_tester( "%1$c %2$c %1$c ", character, character + 1))
            XCTAssert(printf_tester( "%2$1c %1$1c %1$1c", character, character + 1))
            XCTAssert(printf_tester( "%1$7c %1$7c %2$7c ", character, character + 1))
            XCTAssert(printf_tester( "%2$-1c %1$-1c %2$-1c ", character, character + 1))
            XCTAssert(printf_tester( "%1$-5c %1$-5c %2$-5c ", character, character + 1))
        }

        XCTAssert(printf_tester("%1$c %1$c", 65))
        XCTAssert(printf_tester("%2$12c %2$12c %1$12c", 65, 66))
        XCTAssert(printf_tester("%1$-1c %1$-1c %2$-1c", 65, 66))
        XCTAssert(printf_tester("%1$1c %2$1c %1$1c", 65, 66))
        XCTAssert(printf_tester("%2$5c %2$5c %1$5c", 65, 66))
        XCTAssert(printf_tester("%2$-5c %2$-5c %2$-5c", 65, 66))
    }

}
