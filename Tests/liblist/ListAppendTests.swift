//
//  ListAppendTests.swift
//  Tests
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListAppendTests: XCTestCase {

    func testBasic() {
        let list = list_new();
        let b0 = malloc(0)
        let b1 = malloc(0)
        let b2 = malloc(0)

        list_append(list, b0);
        list_append(list, b1);
        list_append(list, b2);

        XCTAssert(list != nil)
        XCTAssert(list?.pointee.count == 3)
        XCTAssert(list?.pointee.head.pointee.content == b0)
        XCTAssert(list?.pointee.tail.pointee.content == b2)
        XCTAssert(list?.pointee.head.pointee.next.pointee.content == b1)
        XCTAssert(list?.pointee.head.pointee.next.pointee.next.pointee.content == b2)
    }

}
