//
// Created by Ivan Gaydamakin on 2019-08-02.
// Copyright (c) 2019 Ivan Gaydamakin. All rights reserved.
//

import Foundation

private struct InnerSettings: Codable {
    enum CodingKeys: String, CodingKey {
        case booleanType = "Boolean-type-to-arr"
        case dataType = "Data-type-to-arr"
        case numberType = "Number-type-to-arr"
        case stringType = "String-type-to-arr"
    }

    var booleanType: Bool?
    var dataType: Data?
    var numberType: Int?
    var stringType: String?
}

private struct Settings: Codable {
    enum CodingKeys: String, CodingKey {
        case booleanType = "Boolean-type"
        case dataType = "Data-type"
        case numberType = "Number-type"
        case stringType = "String-type"
        case arrayType = "Array-type"
    }

    var booleanType: Bool?
    var dataType: Data?
    var numberType: Int?
    var stringType: String?
    var arrayType: [InnerSettings]?
}

private struct EntryPoint: Codable {
    enum CodingKeys: String, CodingKey {
        case dictionaryType = "Dictionary-type"
    }

    var dictionaryType: Settings
}

class CloverParser {
    private var settings: EntryPoint!

    init(input: URL) throws {
        do {
            let data = try Data(contentsOf: input)
            let decoder = PropertyListDecoder()
            let settings = try decoder.decode(EntryPoint.self, from: data)
            self.settings = settings
        } catch {
            throw error
        }
    }

    func editSettingType(str: String) {
        self.settings.dictionaryType.stringType = str
    }

    func exportTo(output: URL) throws {
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml
        do {
            let data = try encoder.encode(self.settings)
            try data.write(to: output)
        } catch {
            throw error
        }
    }
}
