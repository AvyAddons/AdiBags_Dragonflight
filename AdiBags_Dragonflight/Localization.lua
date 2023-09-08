--[[

	The MIT License (MIT)

	Copyright (c) 2022 Lucas Vienna (Avyiel) <dev@lucasvienna.dev>

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.

--]]
-- Retrive addon folder name, and our local, private namespace.
local _, addon = ...

-- Lua API
-----------------------------------------------------------
local _G = _G
local pairs = pairs

-- WoW API
-----------------------------------------------------------
local GetLocale = _G.GetLocale

-- Localization system.
-----------------------------------------------------------
-- Do not modify the function,
-- just the locales in the table below!
local L = (function(tbl, defaultLocale)
	local gameLocale = GetLocale() -- The locale currently used by the game client.
	local L = tbl[gameLocale] or tbl[defaultLocale] -- Get the localization for the current locale, or use your default.
	-- Replace the boolean 'true' with the key,
	-- to simplify locale creation and reduce space needed.
	for i in pairs(L) do
		if (L[i] == true) then
			L[i] = i
		end
	end
	-- If the game client is in another locale than your default,
	-- fill in any missing localization in the client's locale
	-- with entries from your default locale.
	if (gameLocale ~= defaultLocale) then
		for i, msg in pairs(tbl[defaultLocale]) do
			if (not L[i]) then
				-- Replace the boolean 'true' with the key,
				-- to simplify locale creation and reduce space needed.
				L[i] = (msg == true) and i or msg
			end
		end
	end
	return L
end)({
	-- ENTER YOUR LOCALIZATION HERE!
	-----------------------------------------------------------
	-- * Note that you MUST include a full table for your primary/default locale!
	-- * Entries where the value (to the right) is the boolean 'true',
	--   will use the key (to the left) as the value instead!
	["enUS"] = {
		["|cffa0a0a0Dragonflight|r"] = true, -- uiName
		["Put common Dragoflight items in their own categories."] = true, -- uiDesc

		["Move Primal Storms"] = true,
		["Move Primal Storms items into their own category"] = true,
		["Move The Storm's Fury"] = true,
		["Move The Storm's Fury's items into their own category"] = true,
		["Move |cff0070ddProfession Knowledge|r"] = true,
		["Move |cff0070ddProfession Knowledge|r items into their own category"] = true,
		["Move |cffa335eeLizi's Reins|r"] = true,
		["Move |cffa335eeLizi's Reins|r items into their own category"] = true,
		["Move |cffa335eeTemperamental Skyclaw|r"] = true,
		["Move |cffa335eeTemperamental Skyclaw|r items into their own category"] = true,
		["Move |cffa335eeMagmashell|r"] = true,
		["Move |cffa335eeMagmashell|r items into their own category"] = true,
		["Move |cffa335eeLoyal Magmammoth|r"] = true,
		["Move |cffa335eeLoyal Magmammoth|r items into their own category"] = true,
		["Move |cffff8040Reputation|r"] = true,
		["Move |cffff8040Reputation|r items into their own category"] = true,
		["Move |cffAFB42BContracts|r"] = true,
		["Move |cffAFB42BContract|r items into their own category"] = true,
		["Move Treasure Sacks"] = true,
		["Move Treasure Sacks into their own category"] = true,
		["Move Darkmoon Cards"] = true,
		["Move Darkmoon Cards into their own category"] = true,
		["Move Fortune Cards"] = true,
		["Move Fortune Cards into their own category"] = true,
		["Move |cff56BBFFDrakewatcher Manuscript|r"] = true,
		["Move |cff56BBFFDrakewatcher Manuscripts|r into their own category"] = true,
		["Move |cffEDE4D3Time Rift|r"] = true,
		["Move |cffEDE4D3Time Rift|r items into their own category"] = true,
		["Move |cff67CF9EDreamsurge|r"] = true,
		["Move |cff67CF9EDreamsurge|r items into their own category"] = true,

		["Dragonflight"] = true, -- Generic Category
		["|cff16B7FFPrimal Storms|r"] = true,
		["|cffB5D3E7Storm's Fury|r"] = true,
		["|cff0070ddProfession Knowledge|r"] = true,
		["|cffa335eeLizi's Reins|r"] = true,
		["|cffa335eeTemperamental Skyclaw|r"] = true,
		["|cffa335eeMagmashell|r"] = true,
		["|cffa335eeLoyal Magmammoth|r"] = true,
		["|cffff8040Reputation|r"] = true,
		["|cffAFB42BContracts|r"] = true,
		["Treasure Sacks"] = true,
		["Darkmoon Cards"] = true,
		["Fortune Cards"] = true,
		["|cff56BBFFDrakewatcher Manuscript|r"] = true,
		["|cffEDE4D3Time Rift|r"] = true,
		["|cff67CF9EDreamsurge|r"] = true,
	},
	["deDE"] = {},
	["esES"] = {},
	["esMX"] = {},
	["frFR"] = {},
	["itIT"] = {},
	["koKR"] = {},
	["ptPT"] = {},
	["ruRU"] = {},
	["zhCN"] = {},
	["zhTW"] = {}

	-- The primary/default locale of your addon.
	-- * You should change this code to your default locale.
	-- * Note that you MUST include a full table for your primary/default locale!
}, "enUS")

addon.L = setmetatable(L, {
	__index = function(self, key)
		if key ~= nil then
			--@debug@
			print('Missing locale', tostring(key))
			--@end-debug@
			rawset(self, key, tostring(key))
		end
		return tostring(key)
	end,
})
