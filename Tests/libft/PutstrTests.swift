//
//  PutstrTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class PutstrTests: XCTestCase {

    func testBasic() {
        let file = FileHelper("/tmp/putstr_basic")
        let source = "Hello World!\n"
        file.remove()

        let fd = file.open()
        defer { file.close() }

        ft_putstr_fd(source, fd)
        XCTAssert(file.read() == source)
    }

    func testPerfomance() {
        let file = FileHelper("/tmp/putstr_perfomance")
        let source = "Hello World!\n"
        let fd = file.open()
        defer { file.close() }

        measure {
            for _ in 0...1000 {
                ft_putstr_fd(source, fd)
            }
        }
    }

}
