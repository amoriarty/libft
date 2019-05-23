//
//  ListForEachTests.swift
//  Tests
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListForEachTests: XCTestCase {

    func testBasic() {
        var list = list_new()

        for _ in 0...10 {
            list_append(list, strdup("list_for_each: basic test"))
        }

        list_for_each(list) { pointer in
            let casted = pointer!.assumingMemoryBound(to: Int8.self)
            ft_striter(casted) { pointer in
                let uppercased = ft_toupper(Int32(pointer!.pointee))
                pointer?.pointee = Int8(uppercased)
            }
        }

        list_for_each(list) { pointer in
            let source = "list_for_each: basic test"
            XCTAssert(memcmp(pointer!, source.uppercased(), source.count) == 0)
        }

        list_free(&list, free)
    }

}
