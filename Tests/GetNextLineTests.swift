//
//  GetNextLineTests.swift
//  Tests
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import XCTest

class GetNextLineTests: XCTestCase {

    func testBasic() {
        let url = Bundle(for: GetNextLineTests.self).url(forResource: "basics", withExtension: "txt")!
        let file = FileHelper(url)
        var lines = file.read().split(separator: "\n")
        var buffer: UnsafeMutablePointer<Int8>?
        let fd = file.open()
        defer { file.close() }

        lines.insert("", at: 5)
        lines.insert("", at: 5)
        lines.insert("", at: 9)

        for line in lines {
            withUnsafeMutablePointer(to: &buffer) { pointer in
                get_next_line(fd, Optional(pointer))
                XCTAssert(strcmp(pointer.pointee, String(line)) == 0)
                free(pointer.pointee)
            }
        }
    }

    func testPerfomance() {
        let url = Bundle(for: GetNextLineTests.self).url(forResource: "loremipsum", withExtension: "txt")!
        let file = FileHelper(url)
        var buffer: UnsafeMutablePointer<Int8>?
        let fd = file.open()
        defer { file.close() }

        measure {
            withUnsafeMutablePointer(to: &buffer) { pointer in
                while (get_next_line(fd, pointer) != 0) {
                    free(pointer.pointee)
                }
            }
        }
    }

}
