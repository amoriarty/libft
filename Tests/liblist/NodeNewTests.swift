//
//  NodeNewTests.swift
//  Tests
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class NodeNewTests: XCTestCase {

    func testBasic() {
        let buffer = malloc(0)
        let node = node_new(buffer)

        XCTAssert(node != nil)
        XCTAssert(node?.pointee.content == buffer)
        XCTAssert(node?.pointee.next == nil)
    }

}
