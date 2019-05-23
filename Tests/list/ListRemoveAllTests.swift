//
//  ListRemoveAllTests.swift
//  Tests
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListRemoveAllTests: XCTestCase {

    func testBasic() {
        let list = list_new()

        for _ in 0...1000 {
            list_append(list, malloc(0))
        }

        list_remove_all(list, free)
        XCTAssert(list?.pointee.count == 0)
        XCTAssert(list?.pointee.head == nil)
        XCTAssert(list?.pointee.tail == nil)
    }

}
