//
//  FileHelper.swift
//  Tests
//
//  Created by Alex Legent on 15/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import Foundation

class FileHelper {

    static func open(at path: String) -> Int32? {
        try? FileManager.default.removeItem(at: URL(fileURLWithPath: path))

        let fd = Darwin.open(path, O_WRONLY | O_CREAT | O_APPEND, 0o666)
        return fd != -1 ? fd : nil
    }

    static func content(of path: String) -> String? {
        let url = URL(fileURLWithPath: path)
        return try? String(contentsOf: url, encoding: .utf8)
    }

}
