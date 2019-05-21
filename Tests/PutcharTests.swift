//
//  PutcharTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

import os.log

class PutcharTests: XCTestCase {

    func testBasic() {
        let file = FileHelper("/tmp/putchar_basic_test")
        file.remove()

        let fd = file.open()
        defer { file.close() }

        ft_putchar_fd(42, fd)
        XCTAssert(file.read() == "*")
    }

    func testPerfomance() {
        let file = FileHelper("/tmp/putchar_perfomance_test")
        let fd = file.open()
        defer { file.close() }

        measure {
            for _ in 0...1000 {
                ft_putchar_fd(42, fd)
            }
        }
    }

}
