--[[----------------------------------------------------------------------------

Info.lua
CollectionBuilder.lrplugin

------------------------------------------------------------------------------]]

return {

	LrSdkVersion = 5.0,

	LrToolkitIdentifier = 'de.andreasbrett.CollectionBuilder',
	LrPluginName = "CollectionBuilder",
	appName = "CollectionBuilder",
	Author = "Andreas Brett",
	authorsWebsite = "www.andreasbrett.de",
	platforms = {
        [1] = "Windows", 
        [2] = "Mac"
	}, 
	
	-- Add the menu item to the Library menu.
	LrExportMenuItems = {
		title = 'CollectionBuilder',
		file = 'CollectionBuilderRun.lua'
	},

	VERSION = { major=0, minor=0, revision=0, build=2, },

}
