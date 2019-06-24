//
//  StrsplitTests.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class StrsplitTests: XCTestCase {

    func testBasic() {
        let source = "ft_strsplit***basic***test*"
        let splitted = ft_strsplit(source, 42)

        XCTAssert(splitted != nil)
        XCTAssert(splitted![3] == nil)

        for (index, split) in source.split(separator: "*").enumerated() {
            XCTAssert(memcmp(splitted![index]!, String(split), split.count) == 0)
            free(splitted![index]!)
        }

        free(splitted)
    }

    func testPerformance() {
        let source = "ft_strsplit***perfomance**test*"

        measure {
            for _ in 0...1000 {
                let splitted = ft_strsplit(source, 42)!

                for index in 0..<3 {
                    free(splitted[index])
                }

                free(splitted)
            }
        }
    }

}
