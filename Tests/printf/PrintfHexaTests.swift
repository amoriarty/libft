//
//  PrintfHexaTests.swift
//  Tests
//
//  Created by Alex Legent on 18/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class PrintfHexaTests: XCTestCase {
    
    func testHexa() {
        XCTAssert(printf_tester("%x", 12))
        XCTAssert(printf_tester("test X:%X", 12))
        XCTAssert(printf_tester("Hash:%#X", 12))
        XCTAssert(printf_tester("prec / grande:%.5X", 12))
        XCTAssert(printf_tester("prec / petite:%.0X", 12))
        XCTAssert(printf_tester("hash + prec / grande:%#.5X", 12))
        XCTAssert(printf_tester("hash + prec / petite:%#.1X", 12))
        XCTAssert(printf_tester("prec + 0: %0.5X", 12))
        XCTAssert(printf_tester("Prec + minus:%-.5X", 12))
        XCTAssert(printf_tester("size:%5X", 12))
        XCTAssert(printf_tester("size + prec:%7.3X", 12))
        XCTAssert(printf_tester("size + mminus:%-5X", 12))
        XCTAssert(printf_tester("size + 0:%05X", 12))
        XCTAssert(printf_tester("size + 0 + hash:%#05X", 12))
        XCTAssert(printf_tester("size + 0 + prec:%05.3X", 12))
        XCTAssert(printf_tester("size + minus + prec:%-5.3X", 12))
        XCTAssert(printf_tester("size + hash + 0 + prec:%#05.3X", 12))
        XCTAssert(printf_tester("size + hash + 0 + prec:%0#5.3X", 12))
        XCTAssert(printf_tester("size + hash + minus + prec:%-#7.3X", 12))
    }

    func testHexaWithPadding() {
        XCTAssert(printf_tester("%x", 123564789))
        XCTAssert(printf_tester("test X:%X", 123564789))
        XCTAssert(printf_tester("Hash:%#X", 123564789))
        XCTAssert(printf_tester("prec / grande:%.5X", 123564789))
        XCTAssert(printf_tester("hash + prec / grande:%#.5X", 123564789))
        XCTAssert(printf_tester("hash + prec / petite:%#.1X", 123564789))
        XCTAssert(printf_tester("prec + 0: %0.5X", 123564789))
        XCTAssert(printf_tester("Prec + minus:%-.5X", 123564789))
        XCTAssert(printf_tester("size:%5X", 123564789))
        XCTAssert(printf_tester("size + prec:%7.3X", 123564789))
        XCTAssert(printf_tester("size + mminus:%-5X", 123564789))
        XCTAssert(printf_tester("size + 0:%05X", 123564789))
        XCTAssert(printf_tester("size + 0 + hash:%#05X", 123564789))
        XCTAssert(printf_tester("size + 0 + prec:%05.3X", 123564789))
        XCTAssert(printf_tester("size + minus + prec:%-5.3X", 123564789))
        XCTAssert(printf_tester("size + hash + 0 + prec:%#05.3X", 123564789))
        XCTAssert(printf_tester("size + hash + 0 + prec:%0#5.3X", 123564789))
        XCTAssert(printf_tester("size + hash + minus + prec:%-#7.3X", 123564789))

        XCTAssert(printf_tester("%x", -1235))
        XCTAssert(printf_tester("test X:%X", -1235))
        XCTAssert(printf_tester("Hash:%#X", -1235))
        XCTAssert(printf_tester("prec / grande:%.5X", -1235))
        XCTAssert(printf_tester("hash + prec / grande:%#.5X", -1235))
        XCTAssert(printf_tester("hash + prec / petite:%#.1X", -1235))
        XCTAssert(printf_tester("prec + 0: %0.5X", -1235))
        XCTAssert(printf_tester("Prec + minus:%-.5X", -1235))
        XCTAssert(printf_tester("size:%5X", -1235))
        XCTAssert(printf_tester("size + prec:%7.3X", -1235))
        XCTAssert(printf_tester("size + minus:%-5X", -1235))
        XCTAssert(printf_tester("size + 0:%05X", -1235))
        XCTAssert(printf_tester("size + 0 + hash:%#05X", -1235))
        XCTAssert(printf_tester("size + 0 + prec:%05.3X", -1235))
        XCTAssert(printf_tester("size + minus + prec:%-5.3X", -1235))
        XCTAssert(printf_tester("size + hash + 0 + prec:%#05.3X", -1235))
        XCTAssert(printf_tester("size + hash + 0 + prec:%0#5.3X", -1235))
        XCTAssert(printf_tester("size + hash + minus + prec:%-#7.3X", -1235))
    }

    func testLongHexa() {
        XCTAssert(printf_tester("%lx", 56489612321568652))
        XCTAssert(printf_tester("test X:%lx", 56489612321568652))
        XCTAssert(printf_tester("Hash:%#lx", 56489612321568652))
        XCTAssert(printf_tester("prec / grande:%.5lx", 56489612321568652))
        XCTAssert(printf_tester("hash + prec / grande:%#.5lx", 56489612321568652))
        XCTAssert(printf_tester("hash + prec / petite:%#.1lx", 56489612321568652))
        XCTAssert(printf_tester("prec + 0: %0.5lx", 56489612321568652))
        XCTAssert(printf_tester("Prec + minus:%-.5lx", 56489612321568652))
        XCTAssert(printf_tester("size:%5lx", 56489612321568652))
        XCTAssert(printf_tester("size + prec:%7.3lx", 56489612321568652))
        XCTAssert(printf_tester("size + mminus:%-5lx", 56489612321568652))
        XCTAssert(printf_tester("size + 0:%05lx", 56489612321568652))
        XCTAssert(printf_tester("size + 0 + hash:%#05lx", 56489612321568652))
        XCTAssert(printf_tester("size + 0 + prec:%05.3lx", 56489612321568652))
        XCTAssert(printf_tester("size + minus + prec:%-5.3lx", 56489612321568652))
        XCTAssert(printf_tester("size + hash + 0 + prec:%#05.3lx", 56489612321568652))
        XCTAssert(printf_tester("size + hash + 0 + prec:%0#5.3lx", 56489612321568652))
        XCTAssert(printf_tester("size + hash + minus + prec:%-#7.3lx", 56489612321568652))
    }

    func testLongLongHexa() {
        XCTAssert(printf_tester("%llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("test X:%llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("Hash:%#llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("prec / grande:%.5llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("hash + prec / grande:%#.5llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("hash + prec / petite:%#.1llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("prec + 0: %0.5llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("Prec + minus:%-.5llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("size:%5llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("size + prec:%7.3llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("size + mminus:%-5llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("size + 0:%05llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("size + 0 + hash:%#05llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("size + 0 + prec:%05.3llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("size + minus + prec:%-5.3llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("size + hash + 0 + prec:%#05.3llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("size + hash + 0 + prec:%0#5.3llx", LONG_LONG_MAX))
        XCTAssert(printf_tester("size + hash + minus + prec:%-#7.3llx", LONG_LONG_MAX))
    }

    func testShortHexa() {
        XCTAssert(printf_tester("%hx", 12554))
        XCTAssert(printf_tester("test X:%hx", 12554))
        XCTAssert(printf_tester("Hash:%#hx", 12554))
        XCTAssert(printf_tester("prec / grande:%.5hx", 12554))
        XCTAssert(printf_tester("hash + prec / grande:%#.5hx", 12554))
        XCTAssert(printf_tester("hash + prec / petite:%#.1hx", 12554))
        XCTAssert(printf_tester("prec + 0: %0.5hx", 12554))
        XCTAssert(printf_tester("Prec + minus:%-.5hx", 12554))
        XCTAssert(printf_tester("size:%5hx", 12554))
        XCTAssert(printf_tester("size + prec:%7.3hx", 12554))
        XCTAssert(printf_tester("size + mminus:%-5hx", 12554))
        XCTAssert(printf_tester("size + 0:%05hx", 12554))
        XCTAssert(printf_tester("size + 0 + hash:%#05hx", 12554))
        XCTAssert(printf_tester("size + 0 + prec:%05.3hx", 12554))
        XCTAssert(printf_tester("size + minus + prec:%-5.3hx", 12554))
        XCTAssert(printf_tester("size + hash + 0 + prec:%#05.3hx", 12554))
        XCTAssert(printf_tester("size + hash + 0 + prec:%0#5.3hx", 12554))
        XCTAssert(printf_tester("size + hash + minus + prec:%-#7.3hx", 12554))
    }

    func testCharHexa() {
        XCTAssert(printf_tester("%hhx", CHAR_MAX))
        XCTAssert(printf_tester("test X:%hhx", CHAR_MAX))
        XCTAssert(printf_tester("Hash:%#hhx", CHAR_MAX))
        XCTAssert(printf_tester("prec / grande:%.5hhx", CHAR_MAX))
        XCTAssert(printf_tester("hash + prec / grande:%#.5hhx", CHAR_MAX))
        XCTAssert(printf_tester("hash + prec / petite:%#.1hhx", CHAR_MAX))
        XCTAssert(printf_tester("prec + 0: %0.5hhx", CHAR_MAX))
        XCTAssert(printf_tester("Prec + minus:%-.5hhx", CHAR_MAX))
        XCTAssert(printf_tester("size:%5hhx", CHAR_MAX))
        XCTAssert(printf_tester("size + prec:%7.3hhx", CHAR_MAX))
        XCTAssert(printf_tester("size + mminus:%-5hhx", CHAR_MAX))
        XCTAssert(printf_tester("size + 0:%05hhx", CHAR_MAX))
        XCTAssert(printf_tester("size + 0 + hash:%#05hhx", CHAR_MAX))
        XCTAssert(printf_tester("size + 0 + prec:%05.3hhx", CHAR_MAX))
        XCTAssert(printf_tester("size + minus + prec:%-5.3hhx", CHAR_MAX))
        XCTAssert(printf_tester("size + hash + 0 + prec:%#05.3hhx", CHAR_MAX))
        XCTAssert(printf_tester("size + hash + 0 + prec:%0#5.3hhx", CHAR_MAX))
        XCTAssert(printf_tester("size + hash + minus + prec:%-#7.3hhx", CHAR_MAX))
    }

}
