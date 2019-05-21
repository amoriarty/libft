//
//  FileHelper.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import Foundation

class FileHelper {
    private let url: URL
    private var fd: Int32!

    private var path: String {
        return url.path
    }

    init(_ path: String) {
        self.url = URL(fileURLWithPath: path)
    }

    init(_ url: URL) {
        self.url = url
    }

    @discardableResult
    func open() -> Int32 {
        fd = Darwin.open(path, O_RDWR | O_CREAT | O_APPEND, 0o666)
        return fd
    }

    func close() {
        Darwin.close(fd)
    }

    func remove() {
        try? FileManager.default.removeItem(at: url)
    }

    func read() -> String {
        return try! String(contentsOf: url, encoding: .utf8)
    }

}
