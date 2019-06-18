//
//  PrintfMultiArgsTests.swift
//  Tests
//
//  Created by Alex Legent on 18/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class PrintfMultiArgsTests: XCTestCase {
    
    func testBasic() {
        let source = strdup("okqsd")!
        defer { free(source) }

        XCTAssert(printf_tester("%X %12o %5s %x %d qdaze %c", -123, -432, source, 5643, 123654, 83))
        XCTAssert(printf_tester("%X %o %s %x %d qdaze %c \n %c", 1233, 123432, "okdsq qsqsd", 6542, -123654, 85, 87))
        XCTAssert(printf_tester("%X %o %s %x %d qdaze %c \n %c", 1233, 123432, "okdsq qsqsd", 6542, -123654, 85, 87))
        XCTAssert(
            printf_tester("%X %o %s %5x %d qdaze %5c \n %c %X %o %s %x %d qdaze %c \n %c",
                          1233,
                          123432,
                          "okdsq qsqsd",
                          6542,
                          -123654,
                          85,
                          87,
                          1233,
                          123432,
                          "okdsq qsqsd",
                          6542,
                          -123654,
                          85,
                          87)
        )
    }

    func testMax() {
        XCTAssert(printf_tester("int : %12d hex %x %lx ", INT_MAX, INT_MAX, LONG_MAX))
        XCTAssert(
            printf_tester("int : %1d hex %12x %lx int : %d hex %x %lx int : %d hex %x %lx int : %d hex %x %lx int : %d hex %x %lx ",
                          INT_MAX,
                          INT_MAX,
                          LONG_MAX,
                          INT_MAX,
                          INT_MAX,
                          LONG_MAX,
                          INT_MAX,
                          INT_MAX,
                          LONG_MAX,
                          INT_MAX,
                          INT_MAX,
                          LONG_MAX,
                          INT_MAX,
                          INT_MAX,
                          LONG_MAX)
        )
    }

}
