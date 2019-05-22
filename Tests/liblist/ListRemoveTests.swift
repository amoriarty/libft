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
        let list = list_new();
        let b0 = malloc(0)
        let b1 = malloc(0)
        let b2 = malloc(0)
        let b3 = malloc(0)
        let b4 = malloc(0)

        list_append(list, b0);
        list_append(list, b1);
        list_append(list, b2);
        list_append(list, b3);
        list_append(list, b4);

        list_remove(list, 0, free)
        XCTAssert(list?.pointee.count == 4)
        XCTAssert(list?.pointee.head?.pointee.content == b1)
        XCTAssert(list?.pointee.head?.pointee.previous == nil)

        list_remove(list, 3, free)
        XCTAssert(list?.pointee.count == 3)
        XCTAssert(list?.pointee.tail?.pointee.content == b3)
        XCTAssert(list?.pointee.tail?.pointee.next == nil)

        list_remove(list, 1, free)
        XCTAssert(list?.pointee.count == 2)
        XCTAssert(list?.pointee.head.pointee.next == list?.pointee.tail)
        XCTAssert(list?.pointee.tail.pointee.previous == list?.pointee.head)
        XCTAssert(list?.pointee.head.pointee.next.pointee.content == b3)
    }

}
