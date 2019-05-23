//
//  ListReverseTests.swift
//  Tests
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListReverseTests: XCTestCase {

    func testBasic() {
        var list = list_new()
        var buffers = [Int: UnsafeMutableRawPointer]()

        for i in 0...10 {
            buffers[i] = malloc(0)!
            list_append(list, buffers[i])
        }

        let head = list!.pointee.head
        let tail = list!.pointee.tail

        list_reverse(list)
        XCTAssert(list!.pointee.head == tail)
        XCTAssert(list!.pointee.tail == head)
        XCTAssert(list!.pointee.head.pointee.content == buffers[10])
        XCTAssert(list!.pointee.tail.pointee.content == buffers[0])

        list_free(&list, free)
    }

    func testEmpty() {
        var list = list_new()
        list_reverse(list)

        XCTAssert(list!.pointee.head == nil)
        XCTAssert(list!.pointee.tail == nil)

        list_free(&list, free)
    }

    func testOneElement() {
        var list = list_new()
        list_append(list, nil)

        XCTAssert(list!.pointee.head == list!.pointee.tail)

        list_reverse(list)
        XCTAssert(list!.pointee.head == list!.pointee.tail)

        list_free(&list, free)
    }

}
