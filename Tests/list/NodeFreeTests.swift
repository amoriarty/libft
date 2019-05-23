//
//  NodeFreeTests.swift
//  Tests
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class NodeFreeTests: XCTestCase {

    func testBasic() {
        let node = node_new(malloc(0))
        node_free(node, free)
    }

}
