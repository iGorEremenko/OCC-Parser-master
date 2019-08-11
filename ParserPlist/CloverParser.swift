
import Foundation

// ACPI Dictionary START
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

private struct innerSettingsAcpi: Codable {
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
// ACPI Dictionary FINISH



// Booter Dictionary START
private struct innerSettingsBooter: Codable {
    enum CodingKeys: String, CodingKey {
        case Quirks = "Quirks"
    }
    var Quirks: innerSettingsBooterQuirks?
}

private struct innerSettingsBooterQuirks: Codable {
    enum CodingKeys: String, CodingKey {
        case AvoidRuntimeDefrag = "AvoidRuntimeDefrag"
        case DisableVariableWrite = "DisableVariableWrite"
        case DiscardHibernateMap = "DiscardHibernateMap"
        case EnableSafeModeSlide = "EnableSafeModeSlide"
        case EnableWriteUnprotector = "EnableWriteUnprotector"
        case ForceExitBootServices = "ForceExitBootServices"
        case ProtectCsmRegion = "ProtectCsmRegion"
        case ProvideCustomSlide = "ProvideCustomSlide"
        case SetupVirtualMap = "SetupVirtualMap"
        case ShrinkMemoryMap = "ShrinkMemoryMap"
    }
    var AvoidRuntimeDefrag: Bool?
    var DisableVariableWrite: Bool?
    var DiscardHibernateMap: Bool?
    var EnableSafeModeSlide: Bool?
    var EnableWriteUnprotector: Bool?
    var ForceExitBootServices: Bool?
    var ProtectCsmRegion: Bool?
    var ProvideCustomSlide: Bool?
    var SetupVirtualMap: Bool?
    var ShrinkMemoryMap: Bool?
}
// Booter Dictionary FINISH




// DeviceProperties Dictionary START
private struct innerSettingsDeviceProperties: Codable {
    enum CodingKeys: String, CodingKey {
        case Add = "Add"
        case Block = "Block"
    }
    var Add: innerSettingsDevicePropertiesAdd?
    var Block: innerSettingsDevicePropertiesBlock?
}

private struct innerSettingsDevicePropertiesBlock: Codable {
    enum CodingKeys: String, CodingKey {
        case PciRoot1 = "PciRoot(0x0)/Pci(0x1b,0x0)"
    }
    var PciRoot1: [String?]
}

private struct innerSettingsDevicePropertiesAdd: Codable {
    enum CodingKeys: String, CodingKey {
        case PciRoot1 = "PciRoot(0x0)/Pci(0x1b,0x0)"
        case PciRoot2 = "PciRoot(0x0)/Pci(0x2,0x0)"
    }
    var PciRoot1: innerSettingsDevicePropertiesAddPciRoot1?
    var PciRoot2: innerSettingsDevicePropertiesAddPciRoot2?
}

private struct innerSettingsDevicePropertiesAddPciRoot1: Codable {
    enum CodingKeys: String, CodingKey {
        case layoutId = "layout-id"
    }
    var layoutId: Data?
}

private struct innerSettingsDevicePropertiesAddPciRoot2: Codable {
    enum CodingKeys: String, CodingKey {
        case aaplIgPlatformId = "AAPL,ig-platform-id"
    }
    var aaplIgPlatformId: Data?
}
// DeviceProperties Dictionary FINISH




// Kernel Dictionary START
private struct innerSettingsKernel: Codable {
    enum CodingKeys: String, CodingKey {
        case Add = "Add"
        case Block = "Block"
        case Emulate = "Emulate"
        case Patch = "Patch"
        case Quirks = "Quirks"
    }
    var Add: [innerSettingsKernelAdd]?
    var Block: [innerSettingsKernelBlock]?
    var Emulate: innerSettingsKernelEmulate?
    var Patch: [innerSettingsKernelPatch]?
    var Quirks: innerSettingsKernelQuirks?
}

private struct innerSettingsKernelQuirks: Codable {
    enum CodingKeys: String, CodingKey {
        case AppleCpuPmCfgLock = "AppleCpuPmCfgLock"
        case AppleXcpmCfgLock = "AppleXcpmCfgLock"
        case AppleXcpmExtraMsrs = "AppleXcpmExtraMsrs"
        case CustomSMBIOSGuid = "CustomSMBIOSGuid"
        case DisableIoMapper = "DisableIoMapper"
        case ExternalDiskIcons = "ExternalDiskIcons"
        case LapicKernelPanic = "LapicKernelPanic"
        case PanicNoKextDump = "PanicNoKextDump"
        case ThirdPartyTrim = "ThirdPartyTrim"
        case XhciPortLimit = "XhciPortLimit"
    }
    var AppleCpuPmCfgLock: Bool?
    var AppleXcpmCfgLock: Bool?
    var AppleXcpmExtraMsrs: Bool?
    var CustomSMBIOSGuid: Bool?
    var DisableIoMapper: Bool?
    var ExternalDiskIcons: Bool?
    var LapicKernelPanic: Bool?
    var PanicNoKextDump: Bool?
    var ThirdPartyTrim: Bool?
    var XhciPortLimit: Bool?
}

private struct innerSettingsKernelPatch: Codable {
    enum CodingKeys: String, CodingKey {
        case Base = "Base"
        case Comment = "Comment"
        case Count = "Count"
        case Enabled = "Enabled"
        case Find = "Find"
        case Identifier = "Identifier"
        case Limit = "Limit"
        case Mask = "Mask"
        case MatchKernel = "MatchKernel"
        case Replace = "Replace"
        case ReplaceMask = "ReplaceMask"
        case Skip = "Skip"
    }
    var Base: String?
    var Comment: String?
    var Count: Int?
    var Enabled: Bool?
    var Find: Data?
    var Identifier: String?
    var Limit: Int?
    var Mask: Data?
    var MatchKernel: String?
    var Replace: Data?
    var ReplaceMask: Data?
    var Skip: Int?
}

private struct innerSettingsKernelEmulate: Codable {
    enum CodingKeys: String, CodingKey {
        case Cpuid1Data = "Cpuid1Data"
        case Cpuid1Mask = "Cpuid1Mask"
    }
    var Cpuid1Data: Data?
    var Cpuid1Mask: Data?
}

private struct innerSettingsKernelAdd: Codable {
    enum CodingKeys: String, CodingKey {
        case BundlePath = "BundlePath"
        case Comment = "Comment"
        case Enabled = "Enabled"
        case ExecutablePath = "ExecutablePath"
        case MatchKernel = "MatchKernel"
        case PlistPath = "PlistPath"
    }
    var BundlePath: String?
    var Comment: String?
    var Enabled: Bool?
    var ExecutablePath: String?
    var MatchKernel: String?
    var PlistPath: String?
}

private struct innerSettingsKernelBlock: Codable {
    enum CodingKeys: String, CodingKey {
        case Comment = "Comment"
        case Enabled = "Enabled"
        case Identifier = "Identifier"
        case MatchKernel = "MatchKernel"
    }
    var Comment: String?
    var Enabled: Bool?
    var Identifier: String?
    var MatchKernel: String?
}
// Kernel Dictionary FINISH





// Root plist task Dictionary
private struct EntryPoint: Codable {
    enum CodingKeys: String, CodingKey {
        case Acpi = "ACPI"
        case Booter = "Booter"
        case DeviceProperties = "DeviceProperties"
        case Kernel = "Kernel"
    }
    var Acpi: innerSettingsAcpi?
    var Booter: innerSettingsBooter?
    var DeviceProperties: innerSettingsDeviceProperties?
    var Kernel: innerSettingsKernel?
}








// MAIN CLASS PARSER
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

    func changeValueStr(str: String) {
        self.settings.Acpi?.Add?[0].Comment = str
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
