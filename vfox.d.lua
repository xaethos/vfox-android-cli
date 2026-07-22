---@meta

--[[
Declarations for the objects vfox injects into plugin Lua code (`RUNTIME`) and
the context/result shapes passed to each `PLUGIN:*` hook.

Do not change any of this at runtime - it exists only so an editor/linter can
type-check the hooks in `hooks/*.lua`. Verified against vfox's own hook
contracts (internal/plugin/model.go) in version-fox/vfox.
--]]

---@class RuntimeInfo
---@field osType        string Operating system type at runtime (windows, linux, darwin)
---@field archType      string Operating system architecture at runtime (amd64, arm64, etc.)
---@field version       string vfox runtime version
---@field pluginDirPath string Plugin directory
RUNTIME = {}

---@alias Scope "global" | "project" | "session"

---@class AvailableCtx
---@field args string[] Extra CLI arguments passed after the tool name to `vfox available`
AvailableCtx = {}

---@class ToolSpec
---@field name    string
---@field version string
ToolSpec = {}

---@class AvailableVersion
---@field version  string
---@field note     string?
---@field addition ToolSpec[]?
AvailableVersion = {}

---@class SdkInfo
---@field name    string  Tool name
---@field path    string  Tool installation directory
---@field version string  Tool version
---@field note    string? Additional note set by PreInstall
SdkInfo = {}

---@class EnvContext
---@field sdkInfo table<string, SdkInfo> Tool info table
---@field main    SdkInfo Current plugin info
---@field path    string  Current plugin directory. Deprecated, same as sdkInfo[plugin-name].path
EnvContext = {}

---@class EnvEntry
---@field key   string
---@field value string
EnvEntry = {}

---@class PreUseCtx
---@field scope           Scope User selected scope
---@field version         string User selected version
---@field previousVersion string Current used version
---@field installedSdks   table<string, SdkInfo> Tool info table
---@field cwd             string Working directory
PreUseCtx = {}

---@class PreUseResult
---@field version string Version to activate
PreUseResult = {}

---@class PreInstallCtx
---@field version string Selected tool version
PreInstallCtx = {}

---@class ChecksumInfo Package file info
---@field sha256 string?
---@field sha512 string?
---@field sha1   string?
---@field md5    string?
ChecksumInfo = {}

---@class PreInstallFile: ChecksumInfo
---@field name    string?
---@field url     string? Remote URL or local file path
---@field headers table<string, string>? Request headers for downloading
---@field note    string?
PreInstallFile = {}

---@class PreInstallPackage: ChecksumInfo
---@field name     string?
---@field version  string Tool package version
---@field url      string? Remote URL or local file path
---@field headers  table<string, string>? Request headers for downloading
---@field note     string?
---@field addition PreInstallFile[]?
PreInstallPackage = {}

---@class PostInstallContext
---@field sdkInfo  table<string, SdkInfo> Tool info table
---@field rootPath string  Current plugin directory
PostInstallContext = {}

---@class PreUninstallCtx
---@field main    SdkInfo Tool info being uninstalled
---@field sdkInfo table<string, SdkInfo> Tool info table
PreUninstallCtx = {}
