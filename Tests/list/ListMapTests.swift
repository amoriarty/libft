//
//  ListMapTests.swift
//  Tests
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class ListMapTests: XCTestCase {

    func testBasic() {
        var list = list_new();

        for _ in 0...10 {
            list_append(list, strdup("list_map: basic map"))
        }

        var mapped = list_map(list) { pointer in
            let casted = pointer!.assumingMemoryBound(to: Int8.self)
            let new = strdup(casted)
            ft_striter(new) { pointer in
                let uppercased = ft_toupper(Int32(pointer!.pointee))
                pointer?.pointee = Int8(uppercased)
            }
            return UnsafeMutableRawPointer(new)
        }

        XCTAssert(list != mapped)
        list_for_each(mapped) { pointer in
            let source = "list_map: basic map"
            XCTAssert(memcmp(pointer!, source.uppercased(), source.count) == 0)
        }

        list_free(&list, free)
        list_free(&mapped, free)
    }

}
