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
        let path = "/tmp/putchar_basic_test"
        guard let fd = FileHelper.open(at: path) else { fatalError() }
        defer { close(fd) }

        ft_putchar_fd(42, fd)

        guard let content = FileHelper.content(of: path) else { fatalError() }
        XCTAssert(content == "*")
    }

    func testPerfomance() {
        let path = "/tmp/putchar_perfomance_test"
        guard let fd = FileHelper.open(at: path) else { fatalError() }
        defer { close(fd) }

        measure {
            for _ in 0...1000 {
                ft_putchar_fd(42, fd)
            }
        }
    }

}
