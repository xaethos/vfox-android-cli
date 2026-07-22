--- Returns a resolved version to activate when the `use` command is invoked.
---
--- @param ctx PreUseCtx Context information
--- @return PreUseResult
function PLUGIN:PreUse(ctx)
	-- Android CLI is currently distributed as a raw single-file binary per
	-- platform, always at a "latest" path.
	return {
		version = "latest",
	}
end
