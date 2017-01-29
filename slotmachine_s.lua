--[[
Casino - slot machine
@author Hyperion/R3fr3Sh <r3fr3sh123@gmail.com>
@copyright 2017 Hyperion/R3fr3Sh <r3fr3sh123@gmail.com>
@license GPLv3
]]

local function takeStake(stake)
	if source ~= client then
		outputDebugString("Possible cheater in casino", 2)
	end
	takePlayerMoney(client, stake)
end

local function givePrize(prize)
	if source ~= client then
		outputDebugString("Possible cheater in casino", 2)
	end
	givePlayerMoney(client, prize)
end

addEvent("casinoTakePlayerMoney", true)
addEvent("casinoGivePlayerMoney", true)
addEventHandler("casinoTakePlayerMoney", root, takeStake)
addEventHandler("casinoGivePlayerMoney", root, givePrize)
