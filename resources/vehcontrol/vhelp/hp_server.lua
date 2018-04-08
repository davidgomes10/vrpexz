
-- NAME:	SIMPLE HELP/COMMAND LIST
-- BY:  	VESPURA
-- VERSION:	1.1



-- CONFIGURATION VARIABLES
-- Must change the filePath to your help.lua's file location!
local filePath = 'C:\\FXserver\\server\\resources\\vhelp\\help.lua'
local sortFile = true		--default: true
local helpMessagePrefix = '^0[^1+^0]'		--default: '^0[^1+^0]'

-- note: if you remove the '/' below, your command will have 1 '/' in game!
-- note: if you leave the '/' below your command will have 2 '/' in game!
-- important: '/help' (ingame) is already used by FxServer so you can't use that for this command!
local helpCommand = '/help'










-- CODE // NO NEED TO TOUCH THIS IF YOU CONFIGURE THE VARIABLES ABOVE.
RegisterCommand('/help', function(source)
	if source == 0 then
		CancelEvent()
	else
		TriggerClientEvent('chatMessage', source , '', { 255, 255, 255 }, '^0____________________________________________________')
		io.input(filePath)
		local lines = {}
		for line in io.lines() do
			table.insert(lines, line)
		end
		if sortFile then
			table.sort(lines)
		end
		for i, l in ipairs(lines) do TriggerClientEvent('chatMessage', source , '', { 255, 255, 255 }, helpMessagePrefix .. ' ' .. l) end
	end
end)