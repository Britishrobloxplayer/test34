local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local webhook = "https://discord.com/api/webhooks/1366158880505331776/iW5XXxbX-PMSoKW6a6luof-HY4jvCQx6hj8Q3V4_9O0jLkJepPH3zHv4F3y44IJeWV6Z"

Players.PlayerAdded:Connect(function(plr)
	plr.Chatted:Connect(function(msg)
		local data = {
			content = msg;
			username = plr.Name;
			avatar_url = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userId="..plr.UserId
		}
		HttpService:PostAsync(webhook, HttpService:JSONEncode(data))
	end)
end)
