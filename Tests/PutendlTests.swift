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
        let path = "/tmp/putstr_basic"
        let source = "Hello World!"

        guard let fd = FileHelper.open(at: path) else { fatalError() }
        defer { close(fd) }

        ft_putendl_fd(source, fd)

        guard let content = FileHelper.content(of: path) else { fatalError() }
        XCTAssert(content == source + "\n")
    }

    func testPerfomance() {
        let path = "/tmp/putstr_perfomance"
        let source = "Hello World!"

        guard let fd = FileHelper.open(at: path) else { fatalError() }
        defer { close(fd) }

        measure {
            for _ in 0...1000 {
                ft_putendl_fd(source, fd)
            }
        }
    }

}
