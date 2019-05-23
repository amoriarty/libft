//
//  ListFilterTests.swift
//  Tests
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListFilterTests: XCTestCase {

    func testBasic() {
        var list = list_new()

        for _ in 0...10 {
            list_append(list, strdup("list_filter: basic test"))
            list_append(list, strdup("Hello World!"))
        }

        var filtered = list_filter(list, nil, { data, content in
            let source = "list_filter: basic test"
            return memcmp(content!, source, source.count) == 0 ? TRUE : FALSE
        }) { content in
            let casted = content!.assumingMemoryBound(to: Int8.self)
            let duplicate = strdup(casted)
            return UnsafeMutableRawPointer(duplicate)
        }

        list_for_each(filtered) { content in
            let source = "list_filter: basic test"
            XCTAssert(memcmp(content!.assumingMemoryBound(to: UnsafeMutableRawPointer.self).pointee, source, source.count) == 0)
        }

        list_free(&list, free)
        list_free(&filtered, free)
    }

}
