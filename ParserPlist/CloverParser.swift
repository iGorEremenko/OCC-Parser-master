
import Foundation

// ACPI Dictionary start
private struct innerSettingsAcpiAdd: Codable {
    enum CodingKeys: String, CodingKey {
        case Comment = "Comment"
        case Enabled = "Enabled"
        case Path = "Path"
    }
    var Comment: String?
    var Enabled: Bool?
    var Path: String?
}

private struct innerSettingsAcpiBlock: Codable {
    enum CodingKeys: String, CodingKey {
        case All = "All"
        case Comment = "Comment"
        case Enabled = "Enabled"
        case OemTableId = "OemTableId"
        case TableLength = "TableLength"
        case TableSignature = "TableSignature"
    }
    var All: Bool?
    var Comment: String?
    var Enabled: Bool?
    var OemTableId: Data?
    var TableLength: Int?
    var TableSignature: Data?
}

private struct innerSettingsAcpiPatch: Codable {
    enum CodingKeys: String, CodingKey {
        case Comment = "Comment"
        case Count = "Count"
        case Enabled = "Enabled"
        case Find = "Find"
        case Limit = "Limit"
        case Mask = "Mask"
        case OemTableId = "OemTableId"
        case Replace = "Replace"
        case ReplaceMask = "ReplaceMask"
        case Skip = "Skip"
        case TableLength = "TableLength"
        case TableSignature = "TableSignature"
    }
    var Comment: String?
    var Count: Int?
    var Enabled: Bool?
    var Find: Data?
    var Limit: Int?
    var Mask: Data?
    var OemTableId: Data?
    var Replace: Data?
    var ReplaceMask: Data?
    var Skip: Int?
    var TableLength: Int?
    var TableSignature: Data?
}

private struct innerSettingsAcpiQuirks: Codable {
    enum CodingKeys: String, CodingKey {
        case FadtEnableReset = "FadtEnableReset"
        case NormalizeHeaders = "NormalizeHeaders"
        case RebaseRegions = "RebaseRegions"
        case ResetHwSig = "ResetHwSig"
        case ResetLogoStatus = "ResetLogoStatus"
    }
    var FadtEnableReset: Bool?
    var NormalizeHeaders: Bool?
    var RebaseRegions: Bool?
    var ResetHwSig: Bool?
    var ResetLogoStatus: Bool?
}

private struct acpi: Codable {
    enum CodingKeys: String, CodingKey {
        case Add = "Add"
        case Block = "Block"
        case Patch = "Patch"
        case Quirks = "Quirks"
    }
    var Add: [innerSettingsAcpiAdd]?
    var Block: [innerSettingsAcpiBlock]?
    var Patch: [innerSettingsAcpiPatch]?
    var Quirks: innerSettingsAcpiQuirks?
}



private struct EntryPoint: Codable {
    enum CodingKeys: String, CodingKey {
        case acpi = "ACPI"
    }
    var acpi: acpi
}








// main class

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
        self.settings.acpi.Add?[0].Comment = str
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
