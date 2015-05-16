local LrFunctionContext = import 'LrFunctionContext'
local LrLogger = import 'LrLogger'
local LrApplication = import 'LrApplication'
local LrTasks = import 'LrTasks'

Foo = {}

function Foo.foo()
	
	local log = LrLogger("foo")
	log:enable("logfile")
	
	LrTasks.startAsyncTask(function()
		local result = LrFunctionContext.callWithContext("showCustomDialog", function (context)
			local cat = LrApplication.activeCatalog()
			cat:withWriteAccessDo("Foo", function()
				if not cat.hasWriteAccess then
					log:trace("Write access could not be obtained.")
				end
				
				-- EDIT TO FIT YOUR NEEDS HERE (START)
				
				local colset = cat:createCollectionSet("!!! Neues Collection Set", nil, false)
				local col = cat:createCollection("Alle Fotos", colset, false)
				
				-- EDIT TO FIT YOUR NEEDS HERE (END)
			end)
		end)
	end)
	
end

Foo.foo()