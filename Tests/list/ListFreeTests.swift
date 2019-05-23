//
//  ListFreeTests.swift
//  Tests
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListFreeTests: XCTestCase {

    func testBasic() {
        var list = list_new();

        for _ in 0...10 {
            list_append(list, malloc(0))
        }

        list_free(&list, free)
        XCTAssert(list == nil)
    }

}
