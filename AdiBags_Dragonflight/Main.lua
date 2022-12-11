--[[

	The MIT License (MIT)

	Copyright (c) 2022 Lucas Vienna (Avyiel) <dev@lucasvienna.dev>
	Copyright (c) 2021 Lars Norberg

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
local L = addon.L
local DB = addon.db

-- Lua API
-----------------------------------------------------------
local ipairs = ipairs

-- Callbacks
-----------------------------------------------------------
local function enableIds(dict, id_list)
	for _, v in ipairs(id_list.items) do
		dict[v] = L[id_list.category]
	end
end

-- Private Addon APIs and Tables
-----------------------------------------------------------
local Cache

-- AdiBags namespace
-----------------------------------------------------------
local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")

-- Filter Registration
-----------------------------------------------------------
local filter = AdiBags:RegisterFilter("Dragonflight", 92, "ABEvent-1.0")
filter.uiName = L["Dragonflight"]
filter.uiDesc = L["Put common Dragoflight items in their own categories."]

function filter:OnInitialize()
	-- Register the settings namespace
	self.db = AdiBags.db:RegisterNamespace(self.filterName, {
		profile = {
			-- Add your settings here
			move_primal_storms = true,
			move_profession_knowledge = true,
			move_lizis_reins = true,
			move_reputation = true,
			move_treasure_sack = true,
			move_darkmoon_cards = true,
			move_fortune_card = true,
		},
	})
	-- Populate our cache now that settings have loaded
	Cache = self:BuildCache()
end

function filter:Update()
	-- Update filtered IDs
	Cache = self:BuildCache()
	-- Notify myself that the filtering options have changed
	self:SendMessage("AdiBags_FiltersChanged")
end

function filter:OnEnable()
	AdiBags:UpdateFilters()
end

function filter:OnDisable()
	AdiBags:UpdateFilters()
end

-- Main Filter
-----------------------------------------------------------
function filter:Filter(slotData)
	local itemId = slotData.itemId

	if (itemId and Cache[itemId]) then
		return Cache[itemId], L["Dragonflight"]
	end
end

function filter:BuildCache()
	local ids = {}

	if self.db.profile.move_primal_storms then
		enableIds(ids, DB.primal_storms)
	end
	if self.db.profile.move_profession_knowledge then
		enableIds(ids, DB.profession_knowledge)
	end
	if self.db.profile.move_lizis_reins then
		enableIds(ids, DB.lizis_reins)
	end
	if self.db.profile.move_reputation then
		enableIds(ids, DB.reputation)
	end
	if self.db.profile.move_treasure_sack then
		enableIds(ids, DB.treasure_sack)
	end
	if self.db.profile.move_darkmoon_cards then
		enableIds(ids, DB.darkmoon_cards)
	end
	if self.db.profile.move_fortune_card then
		enableIds(ids, DB.fortune_card)
	end

	return ids
end

-- Filter Options Panel
-----------------------------------------------------------
function filter:GetOptions()
	return {
		-- Setup for the options panel
		move_primal_storms = {
			name = L[DB.primal_storms.name],
			desc = L[DB.primal_storms.desc],
			type = "toggle",
			order = 999,
		},
		move_profession_knowledge = {
			name = L[DB.profession_knowledge.name],
			desc = L[DB.profession_knowledge.desc],
			type = "toggle",
			order = 12,
		},
		move_lizis_reins = {
			name = L[DB.lizis_reins.name],
			desc = L[DB.lizis_reins.desc],
			type = "toggle",
			order = 14,
		},
		move_reputation = {
			name = L[DB.reputation.name],
			desc = L[DB.reputation.desc],
			type = "toggle",
			order = 16,
		},
		move_treasure_sack = {
			name = L[DB.treasure_sack.name],
			desc = L[DB.treasure_sack.desc],
			type = "toggle",
			order = 18,
		},
		move_darkmoon_cards = {
			name = L[DB.darkmoon_cards.name],
			desc = L[DB.darkmoon_cards.desc],
			type = "toggle",
			order = 20,
		},
		move_fortune_card = {
			name = L[DB.fortune_card.name],
			desc = L[DB.fortune_card.desc],
			type = "toggle",
			order = 22,
		},
	}, AdiBags:GetOptionHandler(self, true, function() return self:Update() end)
end
