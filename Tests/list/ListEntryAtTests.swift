//
//  ListEntryAtTests.swift
//  Tests
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListEntryAtTests: XCTestCase {

    func testBasic() {
        var list = list_new();
        list_append(list, nil)
        list_append(list, strdup("list_entry_at: basic test"))

        let entry = list_entry_at(list, 1)
        XCTAssert(entry == list?.pointee.head.pointee.next.pointee.content)
        list_free(&list, free)
    }

}
