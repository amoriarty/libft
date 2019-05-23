//
//  ListContainsTests.swift
//  Tests
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListContainsTests: XCTestCase {

    func testBasic() {
        var list = list_new()

        for _ in 0...10 {
            list_append(list, strdup("list_first: basic test"))
        }

        var contains = list_contains(list, nil) { data, element in
            let source = "list_first: basic test"
            return memcmp(element!, source, source.count) == 0 ? TRUE : FALSE
        }

        XCTAssert(contains == TRUE)

        list_remove_all(list, free)

        for _ in 0...10 {
            list_append(list, strdup("Hello World!"))
        }

        contains = list_contains(list, nil) { data, element in
            let source = "list_first: basic test"
            return memcmp(element!, source, source.count) == 0 ? TRUE : FALSE
        }

        XCTAssert(contains == FALSE)

        list_free(&list, free)
    }

}
