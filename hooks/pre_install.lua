--- Resolves the install information for the current platform.
---
--- Android CLI is currently distributed as a raw single-file binary per
--- platform, always at a "latest" path.
---
--- As of this writing there are neither version-pinned URLs nor checksums for
--- validation.
---
--- @param ctx PreInstallCtx
--- @return PreInstallPackage
function PLUGIN:PreInstall(ctx)
	local os_type = RUNTIME.osType
	local arch_type = RUNTIME.archType

	local platform
	if os_type == "linux" and arch_type == "amd64" then
		platform = "linux_x86_64"
	elseif os_type == "darwin" and arch_type == "amd64" then
		platform = "darwin_x86_64"
	elseif os_type == "darwin" and arch_type == "arm64" then
		platform = "darwin_arm64"
	else
		error(
			"Unsupported platform for android-cli: "
				.. os_type
				.. "/"
				.. arch_type
				.. " (only linux/amd64, darwin/amd64, darwin/arm64 are supported)"
		)
	end

	return {
		version = "latest",
		url = "https://dl.google.com/android/cli/latest/" .. platform .. "/android",
	}
end
