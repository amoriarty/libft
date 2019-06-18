//
//  PrintfCharTests.swift
//  Tests
//
//  Created by Alex Legent on 18/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class PrintfCharTests: XCTestCase {
    
    func testChar() {
        for character: Int8 in 33...126 {
            XCTAssert(printf_tester( "%c ", character))
            XCTAssert(printf_tester( "%1c ", character))
            XCTAssert(printf_tester( "%7c ", character))
            XCTAssert(printf_tester( "%-1c ", character))
            XCTAssert(printf_tester( "%-5c ", character))
        }

        XCTAssert(printf_tester("%c", 65))
        XCTAssert(printf_tester("%12c", 65))
        XCTAssert(printf_tester("%-1c", 65))
        XCTAssert(printf_tester("%1c", 65))
        XCTAssert(printf_tester("%5c", 65))
        XCTAssert(printf_tester("%-5c", 65))
    }

    func testNullChar() {
        XCTAssert(printf_tester(" %c\n", 0))
        XCTAssert(printf_tester("%c\n", 0))
    }

}
