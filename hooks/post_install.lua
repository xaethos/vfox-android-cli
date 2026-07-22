--- Extension point, called after PreInstall, can perform additional
--- operations, such as file operations for the SDK installation directory or
--- compile source code. Currently can be left unimplemented!
--- @param ctx PostInstallContext
function PLUGIN:PostInstall(ctx)
	--- ctx.rootPath SDK installation directory
	local executable = ctx.rootPath .. "/android"

	local exitCode = os.execute("chmod +x '" .. executable .. "'")
	if exitCode ~= 0 then
		error("chmod failed with error code " .. exitCode)
	end
end
