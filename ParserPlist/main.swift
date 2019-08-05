//
//  main.swift
//  ParserPlist
//
//  Created by Ivan Gaydamakin on 02.08.2019.
//  Copyright © 2019 Ivan Gaydamakin. All rights reserved.
//

import Foundation

let arguments = CommandLine.arguments
if arguments.count != 3 {
    print(arguments)
    print("Not found arguments. Example: ./\(arguments[0]) input-file output-file")
    exit(1)
}
let input = arguments[1]
let output = arguments[2]

let inputURL = URL(fileURLWithPath: input)
let outputURL = URL(fileURLWithPath: output)

let parser = try! CloverParser(input: inputURL)

//parser.editSettingType(str: "asdasdasdasd")

try! parser.exportTo(output: outputURL)
