//
//  PrintfOctalTests.swift
//  Tests
//
//  Created by Alex Legent on 18/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class PrintfOctalTests: XCTestCase {
    
    func testZeroOctal() {
        XCTAssert(printf_tester("test o:%o\n", 0))
        XCTAssert(printf_tester("hash:%#o\n", 0))
        XCTAssert(printf_tester("precision / grande:%.5o\n", 0))
        XCTAssert(printf_tester("Prec + hash / grande:%#.5o\n", 0))
        XCTAssert(printf_tester("Prec + hash / petite:%#.1o\n", 0))
        XCTAssert(printf_tester("Prec + 0:%0.5o\n", 0))
        XCTAssert(printf_tester("Prec + minus:%-.5o\n", 0))
        XCTAssert(printf_tester("Size:%5o\n", 0))
        XCTAssert(printf_tester("size + prec:%7.3o\n", 0))
        XCTAssert(printf_tester("size + minus:%-5o\n", 0))
        XCTAssert(printf_tester("size + zero:%05o\n", 0))
        XCTAssert(printf_tester("size + zero + hash:%#05o\n", 0))
        XCTAssert(printf_tester("size + zero + prec:%05.3o\n", 0))
        XCTAssert(printf_tester("size + minus + prec:%-5.3o\n", 0))
        XCTAssert(printf_tester("size + hash + zero + prec:%#05.3o\n", 0))
        XCTAssert(printf_tester("size + hash + zero + prec:%0#5.3o\n", 0))
        XCTAssert(printf_tester("size + hash + minus + prec:%-#7.3o\n", 0))
    }

    func testPositiveOctal() {
        XCTAssert(printf_tester("test o:%o\n", 45))
        XCTAssert(printf_tester("hash:%#o\n", 45))
        XCTAssert(printf_tester("precision / grande:%.5o\n", 45))
        XCTAssert(printf_tester("precision / petite:%.0o\n", 45))
        XCTAssert(printf_tester("Prec + hash / grande:%#.5o\n", 45))
        XCTAssert(printf_tester("Prec + hash / petite:%#.1o\n", 45))
        XCTAssert(printf_tester("Prec + 0:%0.5o\n", 45))
        XCTAssert(printf_tester("Prec + minus:%-.5o\n", 45))
        XCTAssert(printf_tester("Size:%5o\n", 45))
        XCTAssert(printf_tester("size + prec:%7.3o\n", 45))
        XCTAssert(printf_tester("size + minus:%-5o\n", 45))
        XCTAssert(printf_tester("size + zero:%05o\n", 45))
        XCTAssert(printf_tester("size + zero + hash:%#05o\n", 45))
        XCTAssert(printf_tester("size + zero + prec:%05.3o\n", 45))
        XCTAssert(printf_tester("size + minus + prec:%-5.3o\n", 45))
        XCTAssert(printf_tester("size + hash + zero + prec:%#05.3o\n", 45))
        XCTAssert(printf_tester("size + hash + zero + prec:%0#5.3o\n", 45))
        XCTAssert(printf_tester("size + hash + minus + prec:%-#7.3o\n", 45))

        XCTAssert(printf_tester("test o:%o\n", 123564789))
        XCTAssert(printf_tester("hash:%#o\n", 123564789))
        XCTAssert(printf_tester("precision / grande:%.5o\n", 123564789))
        XCTAssert(printf_tester("precision / petite:%.0o\n", 123564789))
        XCTAssert(printf_tester("Prec + hash / grande:%#.5o\n", 123564789))
        XCTAssert(printf_tester("Prec + hash / petite:%#.1o\n", 123564789))
        XCTAssert(printf_tester("Prec + 0:%0.5o\n", 123564789))
        XCTAssert(printf_tester("Prec + minus:%-.5o\n", 123564789))
        XCTAssert(printf_tester("Size:%5o\n", 123564789))
        XCTAssert(printf_tester("size + prec:%7.3o\n", 123564789))
        XCTAssert(printf_tester("size + minus:%-5o\n", 123564789))
        XCTAssert(printf_tester("size + zero:%05o\n", 123564789))
        XCTAssert(printf_tester("size + zero + hash:%#05o\n", 123564789))
        XCTAssert(printf_tester("size + zero + prec:%05.3o\n", 123564789))
        XCTAssert(printf_tester("size + minus + prec:%-5.3o\n", 123564789))
        XCTAssert(printf_tester("size + hash + zero + prec:%#05.3o\n", 123564789))
        XCTAssert(printf_tester("size + hash + zero + prec:%0#5.3o\n", 123564789))
        XCTAssert(printf_tester("size + hash + minus + prec:%-#7.3o\n", 123564789))
    }

    func testNegativeOctal() {
        XCTAssert(printf_tester("test o:%o\n", -1235))
        XCTAssert(printf_tester("hash:%#o\n", -1235))
        XCTAssert(printf_tester("precision / grande:%.5o\n", -1235))
        XCTAssert(printf_tester("precision / petite:%.0o\n", -1235))
        XCTAssert(printf_tester("Prec + hash / grande:%#.5o\n", -1235))
        XCTAssert(printf_tester("Prec + hash / petite:%#.1o\n", -1235))
        XCTAssert(printf_tester("Prec + 0:%0.5o\n", -1235))
        XCTAssert(printf_tester("Prec + minus:%-.5o\n", -1235))
        XCTAssert(printf_tester("Size:%5o\n", -1235))
        XCTAssert(printf_tester("size + prec:%7.3o\n", -1235))
        XCTAssert(printf_tester("size + minus:%-5o\n", -1235))
        XCTAssert(printf_tester("size + zero:%05o\n", -1235))
        XCTAssert(printf_tester("size + zero + hash:%#05o\n", -1235))
        XCTAssert(printf_tester("size + zero + prec:%05.3o\n", -1235))
        XCTAssert(printf_tester("size + minus + prec:%-5.3o\n", -1235))
        XCTAssert(printf_tester("size + hash + zero + prec:%#05.3o\n", -1235))
        XCTAssert(printf_tester("size + hash + zero + prec:%0#5.3o\n", -1235))
        XCTAssert(printf_tester("size + hash + minus + prec:%-#7.3o\n", -1235))
    }

    func testLongOctal() {
        XCTAssert(printf_tester("test o:%lo\n", 12356549864789))
        XCTAssert(printf_tester("hash:%#lo\n", 12356549864789))
        XCTAssert(printf_tester("precision / grande:%.5lo\n", 12356549864789))
        XCTAssert(printf_tester("precision / petite:%.0lo\n", 12356549864789))
        XCTAssert(printf_tester("Prec + hash / grande:%#.5lo\n", 12356549864789))
        XCTAssert(printf_tester("Prec + hash / petite:%#.1lo\n", 12356549864789))
        XCTAssert(printf_tester("Prec + 0:%0.5lo\n", 12356549864789))
        XCTAssert(printf_tester("Prec + minus:%-.5lo\n", 12356549864789))
        XCTAssert(printf_tester("Size:%5lo\n", 12356549864789))
        XCTAssert(printf_tester("size + prec:%7.3lo\n", 12356549864789))
        XCTAssert(printf_tester("size + minus:%-5lo\n", 12356549864789))
        XCTAssert(printf_tester("size + zero:%05lo\n", 12356549864789))
        XCTAssert(printf_tester("size + zero + hash:%#05lo\n", 12356549864789))
        XCTAssert(printf_tester("size + zero + prec:%05.3lo\n", 12356549864789))
        XCTAssert(printf_tester("size + minus + prec:%-5.3lo\n", 12356549864789))
        XCTAssert(printf_tester("size + hash + zero + prec:%#05.3lo\n", 12356549864789))
        XCTAssert(printf_tester("size + hash + zero + prec:%0#5.3lo\n", 12356549864789))
        XCTAssert(printf_tester("size + hash + minus + prec:%-#7.3lo\n", 12356549864789))
    }

}
