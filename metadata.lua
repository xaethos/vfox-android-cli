PLUGIN = {
	name = "Android CLI",
	version = "0.1.0",
	description = "Android CLI - a command-line interface for development and SDK management",
	author = "Diego Garcia Valenzuela (@xaethos)",
	homepage = "https://developer.android.com/tools/agents/android-cli",
	license = "Apache 2.0",
	minRuntimeVersion = "0.3.0", -- Minimum vfox version.

	---If configured, vfox will check for updates to the plugin at this address,
	---otherwise it will check for updates at the global registry.
	---
	---If you want use the global registry to distribute your plugin, you can
	---remove this field.
	---
	---If you develop a plugin based on the template, which will automatically
	---generate a manifest file by CI, you can set this address to the manifest
	---file address, so that the plugin can be updated automatically.
	manifestUrl = "https://github.com/xaethos/vfox-android-cli/releases/download/manifest/manifest.json",
}
