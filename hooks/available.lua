--- Lists installable versions of android-cli.
---
--- Only a rolling "latest" build for this tool is published, so expose a
--- single rolling entry rather than a list of pinned versions.
---@param ctx AvailableCtx
---@return AvailableVersion[] # Descriptions of available versions and accompanying tool descriptions
function PLUGIN:Available(ctx)
	return {
		{
			version = "latest",
			note = "Rolling release - always the latest build published by Google",
		},
	}
end
