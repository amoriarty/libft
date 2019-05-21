//
//  PutendlTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class PutendlTests: XCTestCase {

    func testBasic() {
        let file = FileHelper("/tmp/putstr_basic")
        let source = "Hello World!"
        file.remove()

        let fd = file.open()
        defer { file.close() }

        ft_putendl_fd(source, fd)
        XCTAssert(file.read() == source + "\n")
    }

    func testPerfomance() {
        let file = FileHelper("/tmp/putstr_perfomance")
        let source = "Hello World!"
        let fd = file.open()
        defer { file.close() }

        measure {
            for _ in 0...1000 {
                ft_putendl_fd(source, fd)
            }
        }
    }

}
