//
//  ListFromArrayTests.swift
//  Tests
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListFromArrayTests: XCTestCase {

    func testBasic() {
        let count = 10
        let size = MemoryLayout<UnsafeMutableRawPointer>.size
        let array = malloc(size * count)!.assumingMemoryBound(to: UnsafeMutableRawPointer?.self)

        for i in 0 ..< count {
            array[i] = UnsafeMutableRawPointer(strdup("list_from_array: basic test"))
        }

        var list = list_from_array(array, count) { content in
            let casted = content!.assumingMemoryBound(to: Int8.self)
            return UnsafeMutableRawPointer(strdup(casted))
        }

        XCTAssert(list?.pointee.count == count)

        list_for_each(list) { content in
            let source = "list_from_array: basic test"
            let content = content!.assumingMemoryBound(to: UnsafeMutableRawPointer.self).pointee.assumingMemoryBound(to: Int8.self)
            XCTAssert(memcmp(content, source, source.count) == 0)
        }

        list_free(&list, free)
    }

}
