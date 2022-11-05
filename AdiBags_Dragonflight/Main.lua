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
local Addon, Private = ...
local L = Private.L

-- Lua API
-----------------------------------------------------------
local _G = _G
local ipairs = ipairs

-- WoW API
-----------------------------------------------------------
-- Upvalue any WoW functions used here.

-- Callbacks
-----------------------------------------------------------
local function enableIds(dict, id_list)
	for _, v in ipairs(id_list.items) do
		dict[v] = L[id_list.category]
	end
end

-- Constants
-----------------------------------------------------------
local CacheIds
local Database = Private.Database

-- AdiBags namespace
-----------------------------------------------------------
local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")

-- Filter Registration
-----------------------------------------------------------
local filter = AdiBags:RegisterFilter("Dragonflight", 90, "ABEvent-1.0")
filter.uiName = L["Dragonflight"]
filter.uiDesc = L["AdiBags filter for common Dragonflight items."]

function filter:OnInitialize()
	-- Register the settings namespace
	self.db = AdiBags.db:RegisterNamespace(self.filterName, {
		profile = {
			-- Add your settings here
			move_primal_storms = true,
		},
	})
end

function filter:Update()
	-- Reset filtered IDs
	CacheIds = nil
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
	CacheIds = CacheIds or self:StartCache()

	if (itemId and CacheIds[itemId]) then
		return CacheIds[itemId]
	end

	-- TODO: some addons have a tooltip here, for whatever reason
	-- even if they're tracking by ID and not by tt scanning. 
	-- figure out why
end

function filter:StartCache()
	local ids = {}

	if self.db.profile.move_primal_storms then
		enableIds(ids, Database.primal_storms)
	end

	return ids
end

-- Filter Options Panel
-----------------------------------------------------------
function filter:GetOptions()
	return {
		-- Setup for the options panel
		move_primal_storms = {
			name = L[Private.Database.primal_storms.name],
			desc = L[Private.Database.primal_storms.desc],
			type = "toggle",
			order = 0,
		},
	}, AdiBags:GetOptionHandler(self, true, function() return self:Update() end)
end
