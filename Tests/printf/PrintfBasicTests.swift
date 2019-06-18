//
//  PrintfBasicTests.swift
//  Tests
//
//  Created by Alex Legent on 17/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class PrintfBasicTests: XCTestCase {

    func testBasic() {
        XCTAssert(printf_tester("ft_printf: basic tests"))
        XCTAssert(printf_tester("basic 1 (-45)    "))
        XCTAssert(printf_tester("basic 2 (0)      "))
        XCTAssert(printf_tester("basic 3 (-879650)"))
        XCTAssert(printf_tester("basic 4 (-9856)  "))
        XCTAssert(printf_tester("basic 5 (56432)  "))
        XCTAssert(printf_tester("cast 1 (l)       "))
        XCTAssert(printf_tester("cast 2 (ll)      "))
        XCTAssert(printf_tester("cast 3 (hh)      "))
        XCTAssert(printf_tester("cast 4 (h)       "))
        XCTAssert(printf_tester("hard 1           "))
    }

    func testPercentage() {
        XCTAssert(printf_tester("%%"))
        XCTAssert(printf_tester(" %% "))
        XCTAssert(printf_tester("%% "))
        XCTAssert(printf_tester(" %%"))
        XCTAssert(printf_tester("%%%%%%%%%%%%%%%%%%"))
        XCTAssert(printf_tester("%%\n"))
        XCTAssert(printf_tester("%%%%%d\n", -120))
    }

    func testZeroWithPadding() {
        XCTAssert(printf_tester("space% d ", 0))
        XCTAssert(printf_tester("plus:%+d ", 0))
        XCTAssert(printf_tester("precision:%.5d ", 0))
        XCTAssert(printf_tester("space + prec:% .5d ", 0))
        XCTAssert(printf_tester("Plus + prec / grande:%+.5d ", 0))
        XCTAssert(printf_tester("Prec + 0:%0.5d ", 0))
        XCTAssert(printf_tester("Prec + minus:%-.5d ", 0))
        XCTAssert(printf_tester("size:%5d ", 0))
        XCTAssert(printf_tester("size + space:% 5d ", 0))
        XCTAssert(printf_tester("size + plus:%+5d ", 0))
        XCTAssert(printf_tester("size + minus:%-5d ", 0))
        XCTAssert(printf_tester("size + 0:%05d ", 0))
        XCTAssert(printf_tester("size + 0 + plus:%+05d ", 0))
        XCTAssert(printf_tester("size + 0 + plus:%0+5d ", 0))
        XCTAssert(printf_tester("size + 0 + prec:%05.3d ", 0))
        XCTAssert(printf_tester("size + minus + prec:%-5.3d ", 0))
        XCTAssert(printf_tester("size + plus + 0 + prec:%+05.3d ", 0))
        XCTAssert(printf_tester("size + espace + zero + prec:%0 5.3d ", 0))
        XCTAssert(printf_tester("size + espace + zero + prec:% 05.3d ", 0))
        XCTAssert(printf_tester("size + minus + plus + prec:%-+5.3d ", 0))
    }

    func testNegativeWithPadding() {
        XCTAssert(printf_tester("space% d ", -879650))
        XCTAssert(printf_tester("plus:%+d ", -879650))
        XCTAssert(printf_tester("precision:%.5d ", -879650))
        XCTAssert(printf_tester("space + prec:% .5d ", -879650))
        XCTAssert(printf_tester("Plus + prec / grande:%+.5d ", -879650))
        XCTAssert(printf_tester("Prec + 0:%0.5d ", -879650))
        XCTAssert(printf_tester("Prec + minus:%-.5d ", -879650))
        XCTAssert(printf_tester("size:%5d ", -879650))
        XCTAssert(printf_tester("size + space:% 5d ", -879650))
        XCTAssert(printf_tester("size + plus:%+5d ", -879650))
        XCTAssert(printf_tester("size + minus:%-5d ", -879650))
        XCTAssert(printf_tester("size + 0:%05d ", -879650))
        XCTAssert(printf_tester("size + 0 + plus:%+05d ", -879650))
        XCTAssert(printf_tester("size + 0 + plus:%0+5d ", -879650))
        XCTAssert(printf_tester("size + 0 + prec:%05.3d ", -879650))
        XCTAssert(printf_tester("size + minus + prec:%-5.3d ", -879650))
        XCTAssert(printf_tester("size + plus + 0 + prec:%+05.3d ", -879650))
        XCTAssert(printf_tester("size + espace + zero + prec:%0 5.3d ", -879650))
        XCTAssert(printf_tester("size + espace + zero + prec:% 05.3d ", -879650))
        XCTAssert(printf_tester("size + minus + plus + prec:%-+5.3d ", -879650))

        XCTAssert(printf_tester("space% d ", -9856))
        XCTAssert(printf_tester("plus:%+d ", -9856))
        XCTAssert(printf_tester("precision:%.5d ", -9856))
        XCTAssert(printf_tester("space + prec:% .5d ", -9856))
        XCTAssert(printf_tester("Plus + prec / grande:%+.5d ", -9856))
        XCTAssert(printf_tester("Prec + 0:%0.5d ", -9856))
        XCTAssert(printf_tester("Prec + minus:%-.5d ", -9856))
        XCTAssert(printf_tester("size:%5d ", -9856))
        XCTAssert(printf_tester("size + space:% 5d ", -9856))
        XCTAssert(printf_tester("size + plus:%+5d ", -9856))
        XCTAssert(printf_tester("size + minus:%-5d ", -9856))
        XCTAssert(printf_tester("size + 0:%05d ", -9856))
        XCTAssert(printf_tester("size + 0 + plus:%+05d ", -9856))
        XCTAssert(printf_tester("size + 0 + plus:%0+5d ", -9856))
        XCTAssert(printf_tester("size + 0 + prec:%05.3d ", -9856))
        XCTAssert(printf_tester("size + minus + prec:%-5.3d ", -9856))
        XCTAssert(printf_tester("size + plus + 0 + prec:%+05.3d ", -9856))
        XCTAssert(printf_tester("size + espace + zero + prec:%0 5.3d ", -9856))
        XCTAssert(printf_tester("size + espace + zero + prec:% 05.3d ", -9856))
        XCTAssert(printf_tester("size + minus + plus + prec:%-+5.3d ", -9856))
    }

    func testPositiveWithPadding() {
        XCTAssert(printf_tester("space% d ", 56432))
        XCTAssert(printf_tester("plus:%+d ", 56432))
        XCTAssert(printf_tester("precision:%.5d ", 56432))
        XCTAssert(printf_tester("space + prec:% .5d ", 56432))
        XCTAssert(printf_tester("Plus + prec / grande:%+.5d ", 56432))
        XCTAssert(printf_tester("Prec + 0:%0.5d ", 56432))
        XCTAssert(printf_tester("Prec + minus:%-.5d ", 56432))
        XCTAssert(printf_tester("size:%5d ", 56432))
        XCTAssert(printf_tester("size + space:% 5d ", 56432))
        XCTAssert(printf_tester("size + plus:%+5d ", 56432))
        XCTAssert(printf_tester("size + minus:%-5d ", 56432))
        XCTAssert(printf_tester("size + 0:%05d ", 56432))
        XCTAssert(printf_tester("size + 0 + plus:%+05d ", 56432))
        XCTAssert(printf_tester("size + 0 + plus:%0+5d ", 56432))
        XCTAssert(printf_tester("size + 0 + prec:%05.3d ", 56432))
        XCTAssert(printf_tester("size + minus + prec:%-5.3d ", 56432))
        XCTAssert(printf_tester("size + plus + 0 + prec:%+05.3d ", 56432))
        XCTAssert(printf_tester("size + espace + zero + prec:%0 5.3d ", 56432))
        XCTAssert(printf_tester("size + espace + zero + prec:% 05.3d ", 56432))
        XCTAssert(printf_tester("size + minus + plus + prec:%-+5.3d ", 56432))
    }

    func testMaxValues() {
        XCTAssert(printf_tester("max int :  %d", INT16_MAX))
        XCTAssert(printf_tester("min int :  %d", INT16_MIN))
        XCTAssert(printf_tester("max int :  %d", INT32_MAX))
        XCTAssert(printf_tester("min int :  %d", -2147483648))
        XCTAssert(printf_tester("max long :  %ld", LONG_MAX))
    }

}
