--- Custom environment variables set by the plugin.
---
--- Adds the install root with the raw `android` binary to PATH.
---@param ctx EnvContext Context information
---@return EnvEntry[]
function PLUGIN:EnvKeys(ctx)
	return {
		{ key = "PATH", value = ctx.path },
	}
end
