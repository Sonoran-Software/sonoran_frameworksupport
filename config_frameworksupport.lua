--[[
    Sonoran Plugins

    frameworksupport Plugin Configuration

    Put all needed configuration in this file.

]]
local config = {
    enabled = true,
    configVersion = "4.0",
    pluginName = "frameworksupport", -- name your plugin here
    pluginAuthor = "SonoranCAD", -- author
    requiresPlugins = {}, -- required plugins for this plugin to work, separated by commas

    -- Newer ESX versions use license instead of steam for identity, specify the other below if different
    identityType = "license",
    -- Some ESX versions don't use the prefix (such as license:abcdef), set to false to disable the prefix
    usePrefix = true,
    -- Use QBUS (a renamed ESX with some changes)? Set this to "true"
    usingQBCore = true,

    -- Fine payment system
    issueFines = true,                 -- Use the fine system
    fineNotify = false,                 -- Send a message in chat when someone is fined.
    fineableForms = {"Arrest Report", "General Citation"},  -- List of form names that should issue fines (Don't Include Warrants or Bolos)

    -- ESX Legacy Support (Created for and tested using ESX v1.1.0 esx_identity v1.0.2)
    legacyESX = false                   -- Set to true if default settings do not get character name properly (older esx_identity/ESX legacy versions)
}

if config.enabled then
    Config.RegisterPluginConfig(config.pluginName, config)
end
