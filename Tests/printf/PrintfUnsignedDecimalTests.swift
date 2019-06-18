//
//  PrintfUnsignedDecimalTests.swift
//  Tests
//
//  Created by Alex Legent on 18/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class PrintfUnsignedDecimalTests: XCTestCase {
    
    func testUnsignedDecimal() {
        XCTAssert(printf_tester("precision:%.5u\n", 45))
        XCTAssert(printf_tester("Prec + 0:%0.5u\n", 45))
        XCTAssert(printf_tester("Prec + minus:%-.5u\n", 45))
        XCTAssert(printf_tester("size:%5u\n", 45))
        XCTAssert(printf_tester("size + minus:%-5u\n", 45))
        XCTAssert(printf_tester("size + 0:%05u\n", 45))
        XCTAssert(printf_tester("size + 0 + prec:%05.3u\n", 45))
        XCTAssert(printf_tester("size + minus + prec:%-5.3u\n", 45))
        XCTAssert(printf_tester("%-5.3u\n", 45))
        XCTAssert(printf_tester("%050.u\n", 45))
        XCTAssert(printf_tester("%-1.45u\n", 45))
        XCTAssert(printf_tester("%-55.35u\n", 45))

        XCTAssert(printf_tester("precision:%.5u\n", 123564789))
        XCTAssert(printf_tester("Prec + 0:%0.5u\n", 123564789))
        XCTAssert(printf_tester("Prec + minus:%-.5u\n", 123564789))
        XCTAssert(printf_tester("size:%5u\n", 123564789))
        XCTAssert(printf_tester("size + minus:%-5u\n", 123564789))
        XCTAssert(printf_tester("size + 0:%05u\n", 123564789))
        XCTAssert(printf_tester("size + 0 + prec:%05.3u\n", 123564789))
        XCTAssert(printf_tester("size + minus + prec:%-5.3u\n", 123564789))
        XCTAssert(printf_tester("%-5.3u\n", 123564789))
        XCTAssert(printf_tester("%050.u\n", 123564789))
        XCTAssert(printf_tester("%-1.45u\n", 123564789))
        XCTAssert(printf_tester("%-55.35u\n", 123564789))
    }

    func testZeroUnsignedDecimal() {
        XCTAssert(printf_tester("precision:%.5u\n", 0))
        XCTAssert(printf_tester("Prec + 0:%0.5u\n", 0))
        XCTAssert(printf_tester("Prec + minus:%-.5u\n", 0))
        XCTAssert(printf_tester("size:%5u\n", 0))
        XCTAssert(printf_tester("size + minus:%-5u\n", 0))
        XCTAssert(printf_tester("size + 0:%05u\n", 0))
        XCTAssert(printf_tester("size + 0 + prec:%05.3u\n", 0))
        XCTAssert(printf_tester("size + minus + prec:%-5.3u\n", 0))
        XCTAssert(printf_tester("%-5.3u\n", 0))
        XCTAssert(printf_tester("%-1.45u\n", 0))
        XCTAssert(printf_tester("%-55.35u\n", 0))
    }

    func testNegativeUnsignedDecimal() {
        XCTAssert(printf_tester("precision:%.5u\n", -1235))
        XCTAssert(printf_tester("Prec + 0:%0.5u\n", -1235))
        XCTAssert(printf_tester("Prec + minus:%-.5u\n", -1235))
        XCTAssert(printf_tester("size:%5u\n", -1235))
        XCTAssert(printf_tester("size + minus:%-5u\n", -1235))
        XCTAssert(printf_tester("size + 0:%05u\n", -1235))
        XCTAssert(printf_tester("size + 0 + prec:%05.3u\n", -1235))
        XCTAssert(printf_tester("size + minus + prec:%-5.3u\n", -1235))
        XCTAssert(printf_tester("%-5.3u\n", -1235))
        XCTAssert(printf_tester("%050.u\n", -1235))
        XCTAssert(printf_tester("%-1.45u\n", -1235))
        XCTAssert(printf_tester("%-55.35u\n", -1235))
    }

    func testLongUnsignedDecimal() {
        XCTAssert(printf_tester("precision:%.5lu\n", 56489612321568652))
        XCTAssert(printf_tester("Prec + 0:%0.5lu\n", 56489612321568652))
        XCTAssert(printf_tester("Prec + minus:%-.5lu\n", 56489612321568652))
        XCTAssert(printf_tester("size:%5lu\n", 56489612321568652))
        XCTAssert(printf_tester("size + minus:%-5lu\n", 56489612321568652))
        XCTAssert(printf_tester("size + 0:%05lu\n", 56489612321568652))
        XCTAssert(printf_tester("size + 0 + prec:%05.3lu\n", 56489612321568652))
        XCTAssert(printf_tester("size + minus + prec:%-5.3lu\n", 56489612321568652))
        XCTAssert(printf_tester("%-5.3lu\n", 56489612321568652))
        XCTAssert(printf_tester("%050.lu\n", 56489612321568652))
        XCTAssert(printf_tester("%-1.45lu\n", 56489612321568652))
        XCTAssert(printf_tester("%-55.35lu\n", 56489612321568652))
    }

}
