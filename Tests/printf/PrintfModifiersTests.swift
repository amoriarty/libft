//
//  PrintfModifiersTests.swift
//  Tests
//
//  Created by Alex Legent on 18/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class PrintfModifiersTests: XCTestCase {
    
    func testLong() {
        XCTAssert(printf_tester("space% ld ", 5643256546946846))
        XCTAssert(printf_tester("plus:%+ld ", 5643256546946846))
        XCTAssert(printf_tester("precision:%.5ld ", 5643256546946846))
        XCTAssert(printf_tester("space + prec:% .5ld ", 5643256546946846))
        XCTAssert(printf_tester("Plus + prec / grande:%+.5ld ", 5643256546946846))
        XCTAssert(printf_tester("Prec + 0:%0.5ld ", 5643256546946846))
        XCTAssert(printf_tester("Prec + minus:%-.5ld ", 5643256546946846))
        XCTAssert(printf_tester("size:%5ld ", 5643256546946846))
        XCTAssert(printf_tester("size + space:% 5ld ", 5643256546946846))
        XCTAssert(printf_tester("size + plus:%+5ld ", 5643256546946846))
        XCTAssert(printf_tester("size + minus:%-5ld ", 5643256546946846))
        XCTAssert(printf_tester("size + 0:%05ld ", 5643256546946846))
        XCTAssert(printf_tester("size + 0 + plus:%+05ld ", 5643256546946846))
        XCTAssert(printf_tester("size + 0 + plus:%0+5ld ", 5643256546946846))
        XCTAssert(printf_tester("size + 0 + prec:%05.3ld ", 5643256546946846))
        XCTAssert(printf_tester("size + minus + prec:%-5.3ld ", 5643256546946846))
        XCTAssert(printf_tester("size + plus + 0 + prec:%+05.3ld ", 5643256546946846))
        XCTAssert(printf_tester("size + espace + zero + prec:%0 5.3ld ", 5643256546946846))
        XCTAssert(printf_tester("size + espace + zero + prec:% 05.3ld ", 5643256546946846))
        XCTAssert(printf_tester("size + minus + plus + prec:%-+5.3ld ", 5643256546946846))
    }

    func testLongLong() {
        XCTAssert(printf_tester("space% lld ", 5643254623165146555))
        XCTAssert(printf_tester("plus:%+lld ", 5643254623165146555))
        XCTAssert(printf_tester("precision:%.5lld ", 5643254623165146555))
        XCTAssert(printf_tester("space + prec:% .5lld ", 5643254623165146555))
        XCTAssert(printf_tester("Plus + prec / grande:%+.5lld ", 5643254623165146555))
        XCTAssert(printf_tester("Prec + 0:%0.5lld ", 5643254623165146555))
        XCTAssert(printf_tester("Prec + minus:%-.5lld ", 5643254623165146555))
        XCTAssert(printf_tester("size:%5lld ", 5643254623165146555))
        XCTAssert(printf_tester("size + space:% 5lld ", 5643254623165146555))
        XCTAssert(printf_tester("size + plus:%+5lld ", 5643254623165146555))
        XCTAssert(printf_tester("size + minus:%-5lld ", 5643254623165146555))
        XCTAssert(printf_tester("size + 0:%05lld ", 5643254623165146555))
        XCTAssert(printf_tester("size + 0 + plus:%+05lld ", 5643254623165146555))
        XCTAssert(printf_tester("size + 0 + plus:%0+5lld ", 5643254623165146555))
        XCTAssert(printf_tester("size + 0 + prec:%05.3lld ", 5643254623165146555))
        XCTAssert(printf_tester("size + minus + prec:%-5.3lld ", 5643254623165146555))
        XCTAssert(printf_tester("size + plus + 0 + prec:%+05.3lld ", 5643254623165146555))
        XCTAssert(printf_tester("size + espace + zero + prec:%0 5.3lld ", 5643254623165146555))
        XCTAssert(printf_tester("size + espace + zero + prec:% 05.3lld ", 5643254623165146555))
        XCTAssert(printf_tester("size + minus + plus + prec:%-+5.3lld ", 5643254623165146555))
    }

    func testSignedChar() {
        XCTAssert(printf_tester("space% hhd ", 125))
        XCTAssert(printf_tester("plus:%+hhd ", 125))
        XCTAssert(printf_tester("precision:%.5hhd ", 125))
        XCTAssert(printf_tester("space + prec:% .5hhd ", 125))
        XCTAssert(printf_tester("Plus + prec / grande:%+.5hhd ", 125))
        XCTAssert(printf_tester("Prec + 0:%0.5hhd ", 125))
        XCTAssert(printf_tester("Prec + minus:%-.5hhd ", 125))
        XCTAssert(printf_tester("size:%5hhd ", 125))
        XCTAssert(printf_tester("size + space:% 5hhd ", 125))
        XCTAssert(printf_tester("size + plus:%+5hhd ", 125))
        XCTAssert(printf_tester("size + minus:%-5hhd ", 125))
        XCTAssert(printf_tester("size + 0:%05hhd ", 125))
        XCTAssert(printf_tester("size + 0 + plus:%+05hhd ", 125))
        XCTAssert(printf_tester("size + 0 + plus:%0+5hhd ", 125))
        XCTAssert(printf_tester("size + 0 + prec:%05.3hhd ", 125))
        XCTAssert(printf_tester("size + minus + prec:%-5.3hhd ", 125))
        XCTAssert(printf_tester("size + plus + 0 + prec:%+05.3hhd ", 125))
        XCTAssert(printf_tester("size + espace + zero + prec:%0 5.3hhd ", 125))
        XCTAssert(printf_tester("size + espace + zero + prec:% 05.3hhd ", 125))
        XCTAssert(printf_tester("size + minus + plus + prec:%-+5.3hhd ", 125))
    }

    func testShort() {
        XCTAssert(printf_tester("space% hd ", -23))
        XCTAssert(printf_tester("plus:%+hd ", -23))
        XCTAssert(printf_tester("precision:%.5hd ", -23))
        XCTAssert(printf_tester("space + prec:% .5hd ", -23))
        XCTAssert(printf_tester("Plus + prec / grande:%+.5hd ", -23))
        XCTAssert(printf_tester("Prec + 0:%0.5hd ", -23))
        XCTAssert(printf_tester("Prec + minus:%-.5hd ", -23))
        XCTAssert(printf_tester("size:%5hd ", -23))
        XCTAssert(printf_tester("size + space:% 5hd ", -23))
        XCTAssert(printf_tester("size + plus:%+5hd ", -23))
        XCTAssert(printf_tester("size + minus:%-5hd ", -23))
        XCTAssert(printf_tester("size + 0:%05hd ", -23))
        XCTAssert(printf_tester("size + 0 + plus:%+05hd ", -23))
        XCTAssert(printf_tester("size + 0 + plus:%0+5hd ", -23))
        XCTAssert(printf_tester("size + 0 + prec:%05.3hd ", -23))
        XCTAssert(printf_tester("size + minus + prec:%-5.3hd ", -23))
        XCTAssert(printf_tester("size + plus + 0 + prec:%+05.3hd ", -23))
        XCTAssert(printf_tester("size + espace + zero + prec:%0 5.3hd ", -23))
        XCTAssert(printf_tester("size + espace + zero + prec:% 05.3hd ", -23))
        XCTAssert(printf_tester("size + minus + plus + prec:%-+5.3hd ", -23))
    }

}
