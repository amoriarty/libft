//
//  StrjoinTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrjoinTests: XCTestCase {

    func testBasic() {
        let left = "ft_strjoin: "
        let right = "basic tests"
        let source = left + right
        let joined = ft_strjoin(left, right)

        XCTAssert(joined != nil)
        XCTAssert(memcmp(joined!, source, source.count) == 0)

        free(joined)
    }

    func testNull() {
        XCTAssert(ft_strjoin(nil, "") != nil)
        XCTAssert(ft_strjoin("", nil) != nil)
        XCTAssert(ft_strjoin(nil, nil) == nil)
    }

    func testPerformance() {
        let left = "ft_strjoin: "
        let right = "basic tests"

        measure {
            for _ in 0...1000 {
                let joined = ft_strjoin(left, right)
                free(joined)
            }
        }
    }

}
