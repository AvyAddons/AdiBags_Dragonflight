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
local pairs = pairs

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
filter.uiName = L["|cffa0a0a0Dragonflight|r"]
filter.uiDesc = L["Put common Dragoflight items in their own categories."]

function filter:OnInitialize()
	-- Register the settings namespace
	self.db = AdiBags.db:RegisterNamespace(self.filterName, {
		profile = {
			-- Add your settings here
			primal_storms = true,
			storms_fury = true,
			profession_knowledge = true,
			drakewatcher = true,
			lizis_reins = true,
			temperamental_skyclaw = true,
			magmashell = true,
			magmammoth = true,
			reputation = true,
			treasure_sack = true,
			darkmoon_cards = true,
			fortune_card = true,
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

	for key, value in pairs(DB) do
		if (self.db.profile[key]) then
			enableIds(ids, value)
		end
	end

	return ids
end

-- Filter Options Panel
-----------------------------------------------------------
function filter:GetOptions()
	local options = {}

	for key, value in pairs(DB) do
		options[key] = {
			name = L[value.name],
			desc = L[value.desc],
			type = "toggle",
			order = value.order,
		}
	end

	return options, AdiBags:GetOptionHandler(self, true, function() return self:Update() end)
end
