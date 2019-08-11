
import Foundation

private struct InnerSettings_ACPI_Add: Codable {
    enum CodingKeys: String, CodingKey {
        case CommentKey = "Comment"
        case EnabledKey = "Enabled"
        case PathKey = "Path"

    }

    var CommentKey: String?
    var EnabledKey: Bool?
    var PathKey: String?
}


private struct Settings_ACPI: Codable {
    enum CodingKeys: String, CodingKey {
        case Add_array = "Add"
    }
    
    var Add_array: [InnerSettings_ACPI_Add]?
}



private struct EntryPoint: Codable {
    enum CodingKeys: String, CodingKey {
        case ACPI_key = "ACPI"
    }

    var ACPI_key: Settings_ACPI
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
//        self.settings.ACPI_key.Add_array.CommentKey = str
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
