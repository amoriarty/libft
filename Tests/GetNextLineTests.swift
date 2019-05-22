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
            guard get_next_line(fd, &buffer) != 0 else { continue }
            XCTAssert(strcmp(buffer, String(line)) == 0)
            free(buffer)
        }
    }

}
