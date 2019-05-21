//
//  PutnbrTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class PutnbrTests: XCTestCase {

    func testBasic() {
        let file = FileHelper("/tmp/putnbr_basic")
        let source: Int32 = 42
        file.remove()

        let fd = file.open()
        defer { file.close() }

        ft_putnbr_fd(source, fd)
        XCTAssert(file.read() == String(source))
    }

    func testPerfomance() {
        let file = FileHelper("/tmp/putnbr_perfomance")
        let source: Int32 = 42
        let fd = file.open()
        defer { file.close() }

        measure {
            for _ in 0...1000 {
                ft_putnbr_fd(source, fd)
            }
        }
    }

}
