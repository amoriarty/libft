//
//  ListStrsplitTests.swift
//  Tests
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListStrsplitTests: XCTestCase {

    func testBasic() {
        let source = "ft_strsplit***basic***test*"
        var list = list_strsplit(source, 42)
        var node: UnsafeMutablePointer<t_node>!

        XCTAssert(list != nil)
        XCTAssert(list?.pointee.count == 3)

        node = list!.pointee.head
        XCTAssert(memcmp(node.pointee.content, "ft_strsplit", "ft_strsplit".count) == 0)

        node = node.pointee.next
        XCTAssert(memcmp(node.pointee.content, "basic", "basic".count) == 0)

        node = node.pointee.next
        XCTAssert(memcmp(node.pointee.content, "test", "test".count) == 0)

        list_free(&list, free)
    }

}
