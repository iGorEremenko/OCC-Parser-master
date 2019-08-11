
import Foundation

private struct InnerSettings: Codable {
    enum CodingKeys: String, CodingKey {
        case CommentKey = "Comment"
        case EnabledKey = "Enabled"
        case PathKey = "Path"

    }

    var CommentKey: String?
    var EnabledKey: Bool?
    var PathKey: String?
}

private struct Settings: Codable {
    enum CodingKeys: String, CodingKey {
        case arrayType = "Add"
    }
    
    var arrayType: [InnerSettings]?
}

private struct EntryPoint: Codable {
    enum CodingKeys: String, CodingKey {
        case dictionaryType = "ACPI"
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

//    func editSettingType(str: String) {
//        self.settings.dictionaryType.stringType = str
//    }

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
