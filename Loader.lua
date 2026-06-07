
local SupportedGames = {
	{
		Ids  = { 537413528 },
		Load = "https://raw.githubusercontent.com/chief575012/NewConstanceProject/refs/heads/main/games/BABFT",
	},
}

local function getLoadUrl(placeId)
	for _, entry in ipairs(SupportedGames) do
		for _, id in ipairs(entry.Ids) do
			if id == placeId then
				return entry.Load
			end
		end
	end
	return nil
end

local placeId = game.PlaceId
local url = getLoadUrl(placeId)

if url then
	local ok, source = pcall(function()
		return game:HttpGet(url)
	end)
	end
else
	game.Players.LocalPlayer:Kick("Not Supported Game..")
end
