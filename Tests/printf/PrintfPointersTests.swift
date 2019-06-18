//
//  PrintfPointersTests.swift
//  Tests
//
//  Created by Alex Legent on 18/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class PrintfPointersTests: XCTestCase {
    
    func testBasic() {
        var number: Int32 = 0
        var character: Int8 = 87
        let numberPointer = UnsafePointer(&number)
        let characterPointer = UnsafePointer(&character)

        XCTAssert(printf_tester("%5p\n", numberPointer))
        XCTAssert(printf_tester("%-15p\n", numberPointer))
        XCTAssert(printf_tester("%-5p\n", numberPointer))
        XCTAssert(printf_tester("%42p\n", numberPointer))
        XCTAssert(printf_tester("%-18p\n", numberPointer))
        XCTAssert(printf_tester("%42p\n", numberPointer))
        XCTAssert(printf_tester("%5p\n", characterPointer))
        XCTAssert(printf_tester("%-15p\n", characterPointer))
        XCTAssert(printf_tester("%-5p\n", characterPointer))
        XCTAssert(printf_tester("%42p\n", characterPointer))
        XCTAssert(printf_tester("%-18p\n", characterPointer))
        XCTAssert(printf_tester("%42p\n", characterPointer))
    }

}
