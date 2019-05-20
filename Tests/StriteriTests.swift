//
//  StriteriTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

#warning("Doesn't test that index is correct")
class StriteriTests: XCTestCase {

    func testBasic() {
        let source = "hello world!"
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)
        memcpy(buffer, source, source.count)
        ft_striteri(buffer) {
            let value = Int32($1!.pointee)
            $1?.pointee = Int8(toupper(value))
        }

        XCTAssert(memcmp(buffer, source.uppercased(), source.count) == 0)
    }

    func testPerfomance() {
        let source = "hello world!"
        let buffer = malloc(source.count)!.assumingMemoryBound(to: Int8.self)

        bzero(buffer, source.count)

        measure {
            for _ in 0...1000 {
                memcpy(buffer, source, source.count)
                ft_striteri(buffer) {
                    let value = Int32($1!.pointee)
                    $1?.pointee = Int8(toupper(value))
                }
            }
        }
    }

}
