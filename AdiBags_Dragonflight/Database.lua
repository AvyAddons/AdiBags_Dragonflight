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

--[[
{
    name = "string",
    desc = "string",
    category = "string",
    items = { 12345, 12346 }
}
]]


-- Database
-----------------------------------------------------------
addon.db = {
	primal_storms = {
		name = "Move Primal Storms",
		desc = "Move Primal Storms items into their own category",
		category = "|cff16B7FFPrimal Storms|r",
		items = {
			199211, -- Primeval Essence
			199837, -- Dimmed Primeval Earth
			199836, -- Dimmed Primeval Fire
			199838, -- Dimmed Primeval Storm
			199839, -- Dimmed Primeval Water
		},
	},
	profession_knowledge = {
		name = "Profession Knowledge",
		desc = "Move Profession Knowledge items into their own category",
		category = "|cff0070ddProfession Knowledge|r",
		items = {
			201003, 198685, 198697, 198599, 198663, 198710, 198712, 194697, 198963, 200974, 198964, 198608, 193891, 201270, 193897, 201706, 201281, -- Alchemy
			201007, 201004, 201006, 201009, 198454, 201005, 201011, 201010, 201008, 200972, 198606, 198966, 198965, 201268, 192131, 192132, 201708, 201279, -- Blacksmithing
			201012, 201013, 194702, 200976, 201709, 198968, 201283, 193900, 198967, 198610, 201272, 193901, -- Enchanting
			201014, 198789, 198510, 200977, 198611, 198969, 198970, 201284, 201710, 201273, 193902, 193903, -- Engineering
			194704, 202014, 200677, 200980, 200678, 199115, 201287, 201276, 194054, 201705, 201717, 194041, 194080, 194081, 194055, 194061, -- Herbalism
			198703, 198669, 194699, 198704, 198659, 198686, 201015, 200973, 198972, 198607, 201269, 193904, 201711, 193905, 201280, 198971, -- Inscription
			198656, 198670, 201016, 198660, 198687, 201017, 198664, 198682, 194703, 200978, 198973, 201712, 198612, 198974, 193907, 201285, 193909, 201274, -- Jewelcrafting
			198711, 198690, 198696, 201018, 198683, 198667, 198658, 194700, 200979, 198975, 198976, 198613, 201275, 193910, 193913, 201286, 201713, -- Leatherworking
			194708, 201301, 202011, 200981, 201300, 199122, 194062, 194039, 201277, 201288, 201716, 201700, 194078, 194063, 194064, 194079, -- Mining
			201023, 202016, 198837, 198841, 200982, 199128, 201278, 201289, 194076, 201714, 194066, 194067, 194040, 194077, 201718, 194068, -- Skinning
			201019, 194698, 198684, 201020, 198702, 198699, 198692, 198662, 198680, 200975, 198609, 198977, 198978, 201271, 193898, 193899, 201282, 201715, -- Tailoring
		},
	},
	lizis_reins = {
		name = "Lizi's Reins",
		desc = "Move |cffa335eeLizi's Reins|r items into their own category",
		category = "|cffa335eeLizi's Reins|r",
		items = {
			192615, -- Fluorescent Fluid
			192658, -- High-Fiber Leaf
			192636, -- Woolly Mountain Pelt
			200598, -- Meluun's Green Curry
		},
	},
	reputation = {
		name = "Reputation",
		desc = "Move Reputation items into their own category",
		category = "|cffff8040Reputation|r",
		items = {
			191251, -- Key Fragments
			193201, -- Key Framing
			191264, -- Restored Obsidian Key
			191255, -- Greater Obsidian Key
			199906, -- Titan Relic
			200071, -- Sacred Tuskarr Totem
			192055, -- Dragon Isles Artifact
			200093, -- Centaur Hunting Trophy
			200447, -- Centaur Hunting Trophy
		},
	},
	treasure_sack = {
        name = "Move Treasure Sacks",
        desc = "Move Treasure Sacks into their own category",
        category = "Treasure Sacks",
        items = {
            199341, -- Regurgitated Sack of Swog Treasures
            202104, -- Weighted Sac of Swog Treasures
            199342, -- Weighted Sack of Swog Treasures
            202103, -- Immaculate Sac of Swog Treasures
            202102, -- Immaculate Sac of Swog Treasures
            199343, -- Immaculate Sack of Swog Treasures
        },
    },
	fortune_card = {
        name = "Move Fortune Cards",
        desc = "Move Fortune Cards into their own category",
        category = "Fortune Cards",
        items = {
            199137, -- Fated Fortune Card
            199156, -- Fated Fortune Card
            199166, -- Fated Fortune Card
            199116, -- Fated Fortune Card
            199124, -- Fated Fortune Card
            199127, -- Fated Fortune Card
            199129, -- Fated Fortune Card
            199141, -- Fated Fortune Card
            199155, -- Fated Fortune Card
            199158, -- Fated Fortune Card
            199165, -- Fated Fortune Card
            199121, -- Fated Fortune Card
            199135, -- Fated Fortune Card
            199146, -- Fated Fortune Card
            199151, -- Fated Fortune Card
            199167, -- Fated Fortune Card
            199114, -- Fated Fortune Card
            199117, -- Fated Fortune Card
            199118, -- Fated Fortune Card
            199119, -- Fated Fortune Card
            199120, -- Fated Fortune Card
            199123, -- Fated Fortune Card
            199125, -- Fated Fortune Card
            199126, -- Fated Fortune Card
            199133, -- Fated Fortune Card
            199134, -- Fated Fortune Card
            199136, -- Fated Fortune Card
            199138, -- Fated Fortune Card
            199139, -- Fated Fortune Card
            199140, -- Fated Fortune Card
            199142, -- Fated Fortune Card
            199143, -- Fated Fortune Card
            199144, -- Fated Fortune Card
            199145, -- Fated Fortune Card
            199147, -- Fated Fortune Card
            199148, -- Fated Fortune Card
            199149, -- Fated Fortune Card
            199150, -- Fated Fortune Card
            199152, -- Fated Fortune Card
            199153, -- Fated Fortune Card
            199154, -- Fated Fortune Card
            199157, -- Fated Fortune Card
            199161, -- Fated Fortune Card
            199162, -- Fated Fortune Card
            199163, -- Fated Fortune Card
            199164, -- Fated Fortune Card
            199168, -- Fated Fortune Card
            199169, -- Fated Fortune Card
            194829, -- Fated Fortune Card
            199160, -- Fated Fortune Card
            199131, -- Fated Fortune Card
            199130, -- Fated Fortune Card
            199159, -- Fated Fortune Card
            199132, -- Fated Fortune Card
            199170, -- Fated Fortune Card
        },
    },
}
