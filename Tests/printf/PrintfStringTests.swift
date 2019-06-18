//
//  PrintfStringTests.swift
//  Tests
//
//  Created by Alex Legent on 18/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class PrintfStringTests: XCTestCase {
    
    func testBasic() {
        let source = strdup("Okalm")!
        defer { free(source) }

        XCTAssert(printf_tester("test basique:%s", source))
        XCTAssert(printf_tester("precision / zero:%.0s", source))
        XCTAssert(printf_tester("precision / petite:%.5s", source))
        XCTAssert(printf_tester("precision / grande:%.15s", source))
        XCTAssert(printf_tester("prec + minus:%-.5s", source))
        XCTAssert(printf_tester("size / petite:%5s", source))
        XCTAssert(printf_tester("size / grande:%15s", source))
        XCTAssert(printf_tester("Minus + size / petite:%-5s", source))
        XCTAssert(printf_tester("Minus + size / grande:%-15s", source))
        XCTAssert(printf_tester("Minus + size + prec:%-15.5s", source))
        XCTAssert(printf_tester("empty:%-.5s", ""))
        XCTAssert(printf_tester("empty:%-1.32s", ""))
        XCTAssert(printf_tester("empty:%1.4s", ""))
        XCTAssert(printf_tester("empty:%23s", ""))

        XCTAssert(printf_tester("test basique:%s", "Okalmos Speculos"))
        XCTAssert(printf_tester("precision / zero:%.0s", "Okalmos Speculos"))
        XCTAssert(printf_tester("precision / petite:%.5s", "Okalmos Speculos"))
        XCTAssert(printf_tester("precision / grande:%.15s", "Okalmos Speculos"))
        XCTAssert(printf_tester("prec + minus:%-.5s", "Okalmos Speculos"))
        XCTAssert(printf_tester("size / petite:%5s", "Okalmos Speculos"))
        XCTAssert(printf_tester("size / grande:%15s", "Okalmos Speculos"))
        XCTAssert(printf_tester("Minus + size / petite:%-5s", "Okalmos Speculos"))
        XCTAssert(printf_tester("Minus + size / grande:%-15s", "Okalmos Speculos"))
        XCTAssert(printf_tester("Minus + size + prec:%-15.5s", "Okalmos Speculos"))
        XCTAssert(printf_tester("empty:%-.5s", ""))
        XCTAssert(printf_tester("empty:%-1.32s", ""))
        XCTAssert(printf_tester("empty:%1.4s", ""))
        XCTAssert(printf_tester("empty:%23s", ""))

        XCTAssert(printf_tester("test basique:%s", "ASD ASDqw ldmj23oi4j32o u89usadjjals j238ujh4 2ojasd  ijo238e 9juasido 8123ue aklnsdk jalhdls"))
        XCTAssert(printf_tester("precision / zero:%.0s", "ASD ASDqw ldmj23oi4j32o u89usadjjals j238ujh4 2ojasd  ijo238e 9juasido 8123ue aklnsdk jalhdls"))
        XCTAssert(printf_tester("precision / petite:%.5s", "ASD ASDqw ldmj23oi4j32o u89usadjjals j238ujh4 2ojasd  ijo238e 9juasido 8123ue aklnsdk jalhdls"))
        XCTAssert(printf_tester("precision / grande:%.15s", "ASD ASDqw ldmj23oi4j32o u89usadjjals j238ujh4 2ojasd  ijo238e 9juasido 8123ue aklnsdk jalhdls"))
        XCTAssert(printf_tester("prec + minus:%-.5s", "ASD ASDqw ldmj23oi4j32o u89usadjjals j238ujh4 2ojasd  ijo238e 9juasido 8123ue aklnsdk jalhdls"))
        XCTAssert(printf_tester("size / petite:%5s", "ASD ASDqw ldmj23oi4j32o u89usadjjals j238ujh4 2ojasd  ijo238e 9juasido 8123ue aklnsdk jalhdls"))
        XCTAssert(printf_tester("size / grande:%15s", "ASD ASDqw ldmj23oi4j32o u89usadjjals j238ujh4 2ojasd  ijo238e 9juasido 8123ue aklnsdk jalhdls"))
        XCTAssert(printf_tester("Minus + size / petite:%-5s", "ASD ASDqw ldmj23oi4j32o u89usadjjals j238ujh4 2ojasd  ijo238e 9juasido 8123ue aklnsdk jalhdls"))
        XCTAssert(printf_tester("Minus + size / grande:%-15s", "ASD ASDqw ldmj23oi4j32o u89usadjjals j238ujh4 2ojasd  ijo238e 9juasido 8123ue aklnsdk jalhdls"))
        XCTAssert(printf_tester("Minus + size + prec:%-15.5s", "ASD ASDqw ldmj23oi4j32o u89usadjjals j238ujh4 2ojasd  ijo238e 9juasido 8123ue aklnsdk jalhdls"))
        XCTAssert(printf_tester("empty:%-.5s", ""))
        XCTAssert(printf_tester("empty:%-1.32s", ""))
        XCTAssert(printf_tester("empty:%1.4s", ""))
        XCTAssert(printf_tester("empty:%23s", ""))
    }

    func testEmptyString() {
        XCTAssert(printf_tester("test basique:%s", ""))
        XCTAssert(printf_tester("precision / zero:%.0s", ""))
        XCTAssert(printf_tester("precision / petite:%.5s", ""))
        XCTAssert(printf_tester("precision / grande:%.15s", ""))
        XCTAssert(printf_tester("prec + minus:%-.5s", ""))
        XCTAssert(printf_tester("size / petite:%5s", ""))
        XCTAssert(printf_tester("size / grande:%15s", ""))
        XCTAssert(printf_tester("Minus + size / petite:%-5s", ""))
        XCTAssert(printf_tester("Minus + size / grande:%-15s", ""))
        XCTAssert(printf_tester("Minus + size + prec:%-15.5s", ""))
        XCTAssert(printf_tester("empty:%-.5s", ""))
        XCTAssert(printf_tester("empty:%-1.32s", ""))
        XCTAssert(printf_tester("empty:%1.4s", ""))
        XCTAssert(printf_tester("empty:%23s", ""))
    }

    func testFakeNull() {
        let source = strdup("NULL")!
        defer { free(source) }

        XCTAssert(printf_tester("test basique:%s", source))
        XCTAssert(printf_tester("precision / zero:%.0s", source))
        XCTAssert(printf_tester("precision / petite:%.5s", source))
        XCTAssert(printf_tester("precision / grande:%.15s", source))
        XCTAssert(printf_tester("prec + minus:%-.5s", source))
        XCTAssert(printf_tester("size / petite:%5s", source))
        XCTAssert(printf_tester("size / grande:%15s", source))
        XCTAssert(printf_tester("Minus + size / petite:%-5s", source))
        XCTAssert(printf_tester("Minus + size / grande:%-15s", source))
        XCTAssert(printf_tester("Minus + size + prec:%-15.5s", source))
        XCTAssert(printf_tester("empty:%-.5s", ""))
        XCTAssert(printf_tester("empty:%-1.32s", ""))
        XCTAssert(printf_tester("empty:%1.4s", ""))
        XCTAssert(printf_tester("empty:%23s", ""))
    }
}
