
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





// Misc Dictionary START
private struct innerSettingsMisc: Codable {
    enum CodingKeys: String, CodingKey {
        case BlessOverride = "BlessOverride"
        case Boot = "Boot"
        case Debug = "Debug"
        case Entries = "Entries"
        case Security = "Security"
        case Tools = "Tools"
    }
    var BlessOverride: [String?]?
    var Boot: innerSettingsMiscBoot?
    var Debug: innerSettingsMiscDebug?
    var Entries: [innerSettingsMiscEntries]?
    var Security: innerSettingsMiscSecurity?
    var Tools: [innerSettingsMiscTools]?
}

private struct innerSettingsMiscTools: Codable {
    enum CodingKeys: String, CodingKey {
        case Comment = "Comment"
        case Enabled = "Enabled"
        case Name = "Name"
        case Path = "Path"
    }
    var Comment: String?
    var Enabled: Bool?
    var Name: String?
    var Path: String?
}

private struct innerSettingsMiscSecurity: Codable {
    enum CodingKeys: String, CodingKey {
        case ExposeSensitiveData = "ExposeSensitiveData"
        case HaltLevel = "HaltLevel"
        case RequireSignature = "RequireSignature"
        case RequireVault = "RequireVault"
        case ScanPolicy = "ScanPolicy"
    }
    var ExposeSensitiveData: Int?
    var HaltLevel: Int?
    var RequireSignature: Bool?
    var RequireVault: Bool?
    var ScanPolicy: Int?
}

private struct innerSettingsMiscEntries: Codable {
    enum CodingKeys: String, CodingKey {
        case Comment = "Comment"
        case Enabled = "Enabled"
        case Name = "Name"
        case Path = "Path"
    }
    var Comment: String?
    var Enabled: Bool?
    var Name: String?
    var Path: String?
}

private struct innerSettingsMiscDebug: Codable {
    enum CodingKeys: String, CodingKey {
        case DisableWatchDog = "DisableWatchDog"
        case DisplayDelay = "DisplayDelay"
        case DisplayLevel = "DisplayLevel"
        case Target = "Target"
    }
    var DisableWatchDog: Bool?
    var DisplayDelay: Int?
    var DisplayLevel: Int?
    var Target: Int?
}

private struct innerSettingsMiscBoot: Codable {
    enum CodingKeys: String, CodingKey {
        case ConsoleBehaviourOs = "ConsoleBehaviourOs"
        case ConsoleBehaviourUi = "ConsoleBehaviourUi"
        case ConsoleMode = "ConsoleMode"
        case HibernateMode = "HibernateMode"
        case HideSelf = "HideSelf"
        case Resolution = "Resolution"
        case ShowPicker = "ShowPicker"
        case Timeout = "Timeout"
        case UsePicker = "UsePicker"
    }
    var ConsoleBehaviourOs: String?
    var ConsoleBehaviourUi: String?
    var ConsoleMode: String?
    var HibernateMode: String?
    var HideSelf: Bool?
    var Resolution: String?
    var ShowPicker: Bool?
    var Timeout: Int?
    var UsePicker: Bool?
}
// Misc Dictionary FINISH




// NVRAM Dictionary START
private struct innerSettingsNvram: Codable {
    enum CodingKeys: String, CodingKey {
        case Add = "Add"
        case Block = "Block"
        case LegacyEnable = "LegacyEnable"
        case LegacySchema = "LegacySchema"
    }
    var Add: innerSettingsNvramAdd?
    var Block: innerSettingsNvramBlock?
    var LegacyEnable: Bool?
    var LegacySchema: innerSettingsNvramLegacySchema?
}

private struct innerSettingsNvramLegacySchema: Codable {
    enum CodingKeys: String, CodingKey {
        case DictionaryKeyNvramLegacySchema1 = "7C436110-AB2A-4BBB-A880-FE41995C9F82"
        case DictionaryKeyNvramLegacySchema2 = "8BE4DF61-93CA-11D2-AA0D-00E098032B8C"
    }
    var DictionaryKeyNvramLegacySchema1: [String?]?
    var DictionaryKeyNvramLegacySchema2: [String?]?
}

private struct innerSettingsNvramBlock: Codable {
    enum CodingKeys: String, CodingKey {
        case DictionaryKeyNvramBlock1 = "4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14"
        case DictionaryKeyNvramBlock2 = "7C436110-AB2A-4BBB-A880-FE41995C9F82"
    }
    var DictionaryKeyNvramBlock1: [String?]?
    var DictionaryKeyNvramBlock2: [String?]?
}

private struct innerSettingsNvramAdd: Codable {
    enum CodingKeys: String, CodingKey {
        case DictionaryKeyNvramAdd1 = "4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14"
        case DictionaryKeyNvramAdd2 = "7C436110-AB2A-4BBB-A880-FE41995C9F82"
    }
    var DictionaryKeyNvramAdd1: innerSettingsNvramAddDictionaryArray1?
    var DictionaryKeyNvramAdd2: innerSettingsNvramAddDictionaryArray2?
}

private struct innerSettingsNvramAddDictionaryArray1: Codable {
    enum CodingKeys: String, CodingKey {
        case UIScale = "UIScale"
    }
    var UIScale: Data?
}

private struct innerSettingsNvramAddDictionaryArray2: Codable {
    enum CodingKeys: String, CodingKey {
        case bootArgs = "boot-args"
        case csrActiveConfig = "csr-active-config"
        case nvdaDrv = "nvda_drv"
        case prevLangKbd = "prev-lang:kbd"
    }
    var bootArgs: String?
    var csrActiveConfig: Data?
    var nvdaDrv: Data?
    var prevLangKbd: Data?
}
// NVRAM Dictionary FINISH




// PlatformInfo Dictionary START
private struct innerSettingsPlatformInfo: Codable {
    enum CodingKeys: String, CodingKey {
        case Automatic = "Automatic"
        case Generic = "Generic"
        case UpdateDataHub = "UpdateDataHub"
        case UpdateNVRAM = "UpdateNVRAM"
        case UpdateSMBIOS = "UpdateSMBIOS"
        case UpdateSMBIOSMode = "UpdateSMBIOSMode"
    }
    var Automatic: Bool?
    var Generic: innerSettingsPlatformInfoGeneric?
    var UpdateDataHub: Bool?
    var UpdateNVRAM: Bool?
    var UpdateSMBIOS: Bool?
    var UpdateSMBIOSMode: String?
}

private struct innerSettingsPlatformInfoGeneric: Codable {
    enum CodingKeys: String, CodingKey {
        case MLB = "MLB"
        case ROM = "ROM"
        case SpoofVendor = "SpoofVendor"
        case SystemProductName = "SystemProductName"
        case SystemSerialNumber = "SystemSerialNumber"
        case SystemUUID = "SystemUUID"
    }
    var MLB: String?
    var ROM: Data?
    var SpoofVendor: Bool?
    var SystemProductName: String?
    var SystemSerialNumber: String?
    var SystemUUID: String?
}
// PlatformInfo Dictionary FINISH




// UEFI Dictionary START
private struct innerSettingsUefi: Codable {
    enum CodingKeys: String, CodingKey {
        case ConnectDrivers = "ConnectDrivers"
        case Drivers = "Drivers"
        case Protocols = "Protocols"
        case Quirks = "Quirks"
    }
    var ConnectDrivers: Bool?
    var Drivers: [String?]?
    var Protocols: innerSettingsUefiProtocols?
    var Quirks: innerSettingsUefiQuirks?
}

private struct innerSettingsUefiProtocols: Codable {
    enum CodingKeys: String, CodingKey {
        case AppleBootPolicy = "AppleBootPolicy"
        case ConsoleControl = "ConsoleControl"
        case DataHub = "DataHub"
        case DeviceProperties = "DeviceProperties"
    }
    var AppleBootPolicy: Bool?
    var ConsoleControl: Bool?
    var DataHub: Bool?
    var DeviceProperties: Bool?
}

private struct innerSettingsUefiQuirks: Codable {
    enum CodingKeys: String, CodingKey {
        case AvoidHighAlloc = "AvoidHighAlloc"
        case ExitBootServicesDelay = "ExitBootServicesDelay"
        case IgnoreInvalidFlexRatio = "IgnoreInvalidFlexRatio"
        case IgnoreTextInGraphics = "IgnoreTextInGraphics"
        case ProvideConsoleGop = "ProvideConsoleGop"
        case ReleaseUsbOwnership = "ReleaseUsbOwnership"
        case RequestBootVarRouting = "RequestBootVarRouting"
        case SanitiseClearScreen = "SanitiseClearScreen"
    }
    var AvoidHighAlloc: Bool?
    var ExitBootServicesDelay: Int?
    var IgnoreInvalidFlexRatio: Bool?
    var IgnoreTextInGraphics: Bool?
    var ProvideConsoleGop: Bool?
    var ReleaseUsbOwnership: Bool?
    var RequestBootVarRouting: Bool?
    var SanitiseClearScreen: Bool?
}
// UEFI Dictionary FINISH



// Root plist task Dictionary
private struct EntryPoint: Codable {
    enum CodingKeys: String, CodingKey {
        case WARNING1 = "#WARNING - 1"
        case WARNING2 = "#WARNING - 2"
        case ACPI = "ACPI"
        case Booter = "Booter"
        case DeviceProperties = "DeviceProperties"
        case Kernel = "Kernel"
        case Misc = "Misc"
        case NVRAM = "NVRAM"
        case PlatformInfo = "PlatformInfo"
        case UEFI = "UEFI"
    }
    var WARNING1: String?
    var WARNING2: String?
    var ACPI: innerSettingsAcpi?
    var Booter: innerSettingsBooter?
    var DeviceProperties: innerSettingsDeviceProperties?
    var Kernel: innerSettingsKernel?
    var Misc: innerSettingsMisc?
    var NVRAM: innerSettingsNvram?
    var PlatformInfo: innerSettingsPlatformInfo?
    var UEFI: innerSettingsUefi?
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
        self.settings.ACPI?.Add?[0].Comment = str
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
