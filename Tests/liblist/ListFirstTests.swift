//
//  ListFirstTests.swift
//  Tests
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListFirstTests: XCTestCase {

    func testBasic() {
        var list = list_new()

        for _ in 0...10 {
            list_append(list, strdup("Hello World!"))
            list_append(list, strdup("list_first: basic test"))
        }

        let first = list_first(list) { pointer in
            let source = "list_first: basic test"
            return memcmp(pointer!, source, source.count) == 0 ? TRUE : FALSE
        }

        XCTAssert(first == list?.pointee.head.pointee.next.pointee.content)
        list_free(&list, free)
    }

}
