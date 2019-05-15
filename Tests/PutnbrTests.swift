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
        let path = "/tmp/putnbr_basic"
        let source: Int32 = 42

        guard let fd = FileHelper.open(at: path) else { fatalError() }
        defer { close(fd) }

        ft_putnbr_fd(source, fd)

        guard let content = FileHelper.content(of: path) else { fatalError() }
        XCTAssert(content == String(source))
    }

    func testPerfomance() {
        let path = "/tmp/putnbr_perfomance"
        let source: Int32 = 42

        guard let fd = FileHelper.open(at: path) else { fatalError() }
        defer { close(fd) }

        measure {
            for _ in 0...1000 {
                ft_putnbr_fd(source, fd)
            }
        }
    }

}
