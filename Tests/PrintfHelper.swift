//
//  PrintfHelper.swift
//  Tests
//
//  Created by Alex Legent on 18/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

import Foundation

func printf_tester(_ format: String, _ arguments: CVarArg...) -> Bool {
    let original = FileHelper("/tmp/printf_test")
    let tested = FileHelper("/tmp/ft_printf_test")
    let originalFD = original.open()
    let testedFD = tested.open()
    defer {
        original.close()
        original.remove()
        tested.close()
        tested.remove()
    }

    return withVaList(arguments) { list in
        return vdprintf(originalFD, format, list) == ft_vdprintf(testedFD, format, list)
            && original.read() == tested.read()
    }

//    return withVaList(arguments) { list in
//        return vsnprintf(original, size, format, list) == ft_vsnprintf(tested, size, format, list)
//            && strcmp(original, tested) == 0
//    }
}
