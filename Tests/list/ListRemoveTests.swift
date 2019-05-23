//
//  ListRemoveTests.swift
//  Tests
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListRemoveTests: XCTestCase {

    func testBasic() {
        var list = list_new();

        for _ in 0...10 {
            list_append(list, strdup("Hello World!"))
            list_append(list, strdup("list_remove: basic test"))
        }

        list_remove(list, nil, { data, pointer in
            let casted = pointer!.assumingMemoryBound(to: Int8.self)
            let duplicate = strdup("Hello World!")
            let boolean = ft_strequ(casted, duplicate)
            free(duplicate)
            return boolean
        }, free)

        XCTAssert(list?.pointee.count == 11)

        list_for_each(list) { pointer in
            let source = "list_remove: basic test"
            XCTAssert(memcmp(pointer!, source, source.count) == 0)
        }

        list_free(&list, free)
    }

    func testBasicInverse() {
        var list = list_new();

        for _ in 0...10 {
            list_append(list, strdup("list_remove: basic test"))
            list_append(list, strdup("Hello World!"))
        }

        list_remove(list, nil, { data, pointer in
            let casted = pointer!.assumingMemoryBound(to: Int8.self)
            let duplicate = strdup("Hello World!")
            let boolean = ft_strequ(casted, duplicate)
            free(duplicate)
            return boolean
        }, free)

        XCTAssert(list?.pointee.count == 11)

        list_for_each(list) { pointer in
            let source = "list_remove: basic test"
            XCTAssert(memcmp(pointer!, source, source.count) == 0)
        }

        list_free(&list, free)
    }
}
