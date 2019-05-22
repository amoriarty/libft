//
//  ListToArrayTests.swift
//  Tests
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListToArrayTests: XCTestCase {

    func testBasic() {
        var list = list_new()
        let source = "list_to_array: basic test"

        for _ in 0...10 {
            list_append(list, strdup("list_to_array: basic test"))
        }

        let array = list_to_array(list) { pointer in
            let duplicate = strdup(pointer!.assumingMemoryBound(to: Int8.self))
            return UnsafeMutableRawPointer(duplicate)
        }

        for i in 0...10 {
            XCTAssert(memcmp(array![i]!, source, source.count) == 0)
        }

        XCTAssert(array![11] == nil)

        list_free(&list, free)
    }

}
