//
//  ListNewTests.swift
//  Tests
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListNewTests: XCTestCase {

    func testBasic() {
        let list = list_new()
        XCTAssert(list != nil)
        XCTAssert(list?.pointee.count == 0)
        XCTAssert(list?.pointee.head == nil)
        XCTAssert(list?.pointee.tail == nil)
    }

}
