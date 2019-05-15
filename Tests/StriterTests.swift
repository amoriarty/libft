//
//  StriterTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StriterTests: XCTestCase {

    func testBasic() {
        let source = "hello world!"
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        memcpy(buffer, source, source.count)
        ft_striter(buffer) { pointer in
            let value = Int32(pointer!.pointee)
            pointer?.pointee = Int8(toupper(value))
        }

        XCTAssert(memcmp(buffer, source.uppercased(), source.count) == 0)
    }

    func testNull() {
        ft_striter(nil) { pointer in
            let value = Int32(pointer!.pointee)
            pointer?.pointee = Int8(toupper(value))
        }
    }

    func testPerfomance() {
        let source = "hello world!"
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)

        measure {
            for _ in 0...1000 {
                memcpy(buffer, source, source.count)
                ft_striter(buffer) { pointer in
                    let value = Int32(pointer!.pointee)
                    pointer?.pointee = Int8(toupper(value))
                }
            }
        }
    }

}
