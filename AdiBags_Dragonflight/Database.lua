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
		name = "Move |cff0070ddProfession Knowledge|r",
		desc = "Move |cff0070ddProfession Knowledge|r items into their own category",
		category = "|cff0070ddProfession Knowledge|r",
		items = {
			-- Alchemy
			201003, 198685, 198697, 198599, 198663, 198710, 198712, 194697, 198963, 200974, 198964, 198608, 193891,
			201270, 193897, 201706, 201281,
			-- Blacksmithing
			201007, 201004, 201006, 201009, 198454, 201005, 201011, 201010, 201008, 200972, 198606, 198966, 198965,
			201268, 192131, 192132, 201708, 201279,
			-- Enchanting
			201012, 201013, 194702, 200976, 201709, 198968, 201283, 193900, 198967, 198610, 201272, 193901,
			-- Engineering
			201014, 198789, 198510, 200977, 198611, 198969, 198970, 201284, 201710, 201273, 193902, 193903,
			-- Herbalism
			194704, 202014, 200677, 200980, 200678, 199115, 201287, 201276, 194054, 201705, 201717, 194041, 194080,
			194081, 194055, 194061,
			-- Inscription
			198703, 198669, 194699, 198704, 198659, 198686, 201015, 200973, 198972, 198607, 201269, 193904, 201711,
			193905, 201280, 198971,
			-- Jewelcrafting
			198656, 198670, 201016, 198660, 198687, 201017, 198664, 198682, 194703, 200978, 198973, 201712, 198612,
			198974, 193907, 201285, 193909, 201274,
			-- Leatherworking
			198711, 198690, 198696, 201018, 198683, 198667, 198658, 194700, 200979, 198975, 198976, 198613, 201275,
			193910, 193913, 201286, 201713,
			-- Mining
			194708, 201301, 202011, 200981, 201300, 199122, 194062, 194039, 201277, 201288, 201716, 201700, 194078,
			194063, 194064, 194079,
			-- Skinning
			201023, 202016, 198837, 198841, 200982, 199128, 201278, 201289, 194076, 201714, 194066, 194067, 194040,
			194077, 201718, 194068,
			-- Tailoring
			201019, 194698, 198684, 201020, 198702, 198699, 198692, 198662, 198680, 200975, 198609, 198977, 198978,
			201271, 193898, 193899, 201282, 201715,
		},
	},
	lizis_reins = {
		name = "Move |cffa335eeLizi's Reins|r",
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
		name = "Move |cffff8040Reputation|r",
		desc = "Move |cffff8040Reputation|r items into their own category",
		category = "|cffff8040Reputation|r",
		items = {
			191251, -- Key Fragments
			193201, -- Key Framing
			191264, -- Restored Obsidian Key
			191255, -- Greater Obsidian Key
			199906, -- Titan Relic
			200450, -- Titan Relic
			200071, -- Sacred Tuskarr Totem
			200449, -- Sacred Tuskarr Totem
			192055, -- Dragon Isles Artifact
			200443, -- Dragon Isles Artifact
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
	darkmoon_cards = {
		name = "Move Darkmoon Cards",
		desc = "Move Darkmoon Cards into their own category",
		category = "Darkmoon Cards",
		items = {
			198614, -- Soggy Clump of Darkmoon Cards
			194827, -- Bundle O' Cards: Dragon Isles
			194801, -- Ace of Air
			194809, -- Ace of Earth
			194785, -- Ace of Fire
			194793, -- Ace of Frost
			194808, -- Eight of Air
			194816, -- Eight of Earth
			194792, -- Eight of Fire
			194800, -- Eight of Frost
			194805, -- Five of Air
			194813, -- Five of Earth
			194789, -- Five of Fire
			194797, -- Five of Frost
			194804, -- Four of Air
			194812, -- Four of Earth
			194788, -- Four of Fire
			194796, -- Four of Frost
			194807, -- Seven of Air
			194815, -- Seven of Earth
			194799, -- Seven of Fire
			194791, -- Seven of Frost
			194806, -- Six of Air
			194814, -- Six of Earth
			194790, -- Six of Fire
			194798, -- Six of Frost
			194803, -- Three of Air
			194811, -- Three of Earth
			194787, -- Three of Fire
			194795, -- Three of Frost
			194802, -- Two of Air
			194810, -- Two of Earth
			194786, -- Two of Fire
			194794, -- Two of Frost
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
	drakewatcher = {
		name = "Move |cff56BBFFDrakewatcher Manuscript|r",
		desc = "Move |cff56BBFFDrakewatcher Manuscripts|r into their own category",
		category = "|cff56BBFFDrakewatcher Manuscript|r",
		items = {
			196961, -- Cliffside Wylderdrake: Armor
			196986, -- Cliffside Wylderdrake: Black Hair
			196991, -- Cliffside Wylderdrake: Black Horns
			197013, -- Cliffside Wylderdrake: Black Scales
			196987, -- Cliffside Wylderdrake: Blonde Hair
			197012, -- Cliffside Wylderdrake: Blue Scales
			197019, -- Cliffside Wylderdrake: Blunt Spiked Tail
			196996, -- Cliffside Wylderdrake: Branched Horns
			196965, -- Cliffside Wylderdrake: Bronze and Teal Armor
			197000, -- Cliffside Wylderdrake: Coiled Horns
			196981, -- Cliffside Wylderdrake: Conical Head
			196979, -- Cliffside Wylderdrake: Curled Head Horns
			197015, -- Cliffside Wylderdrake: Dark Skin Variation
			196973, -- Cliffside Wylderdrake: Dual Horned Chin
			196982, -- Cliffside Wylderdrake: Ears
			196969, -- Cliffside Wylderdrake: Finned Back
			197001, -- Cliffside Wylderdrake: Finned Cheek
			196984, -- Cliffside Wylderdrake: Finned Jaw
			197022, -- Cliffside Wylderdrake: Finned Neck
			197018, -- Cliffside Wylderdrake: Finned Tail
			197002, -- Cliffside Wylderdrake: Flared Cheek
			196974, -- Cliffside Wylderdrake: Four Horned Chin
			196964, -- Cliffside Wylderdrake: Gold and Black Armor
			196966, -- Cliffside Wylderdrake: Gold and Orange Armor
			196967, -- Cliffside Wylderdrake: Gold and White Armor
			197011, -- Cliffside Wylderdrake: Green Scales
			196975, -- Cliffside Wylderdrake: Head Fin
			196976, -- Cliffside Wylderdrake: Head Mane
			196992, -- Cliffside Wylderdrake: Heavy Horns
			196990, -- Cliffside Wylderdrake: Helm
			196998, -- Cliffside Wylderdrake: Hook Horns
			196985, -- Cliffside Wylderdrake: Horned Jaw
			197005, -- Cliffside Wylderdrake: Horned Nose
			197017, -- Cliffside Wylderdrake: Large Tail Spikes
			196983, -- Cliffside Wylderdrake: Maned Jaw
			197023, -- Cliffside Wylderdrake: Maned Neck
			197016, -- Cliffside Wylderdrake: Maned Tail
			197008, -- Cliffside Wylderdrake: Narrow Stripes Pattern
			196972, -- Cliffside Wylderdrake: Plated Brow
			197006, -- Cliffside Wylderdrake: Plated Nose
			196988, -- Cliffside Wylderdrake: Red Hair
			197010, -- Cliffside Wylderdrake: Red Scales
			197009, -- Cliffside Wylderdrake: Scaled Pattern
			196994, -- Cliffside Wylderdrake: Short Horns
			196963, -- Cliffside Wylderdrake: Silver and Blue Armor
			196962, -- Cliffside Wylderdrake: Silver and Purple Armor
			196993, -- Cliffside Wylderdrake: Sleek Horns
			196978, -- Cliffside Wylderdrake: Small Head Spikes
			197020, -- Cliffside Wylderdrake: Spear Tail
			196970, -- Cliffside Wylderdrake: Spiked Back
			196971, -- Cliffside Wylderdrake: Spiked Brow
			197003, -- Cliffside Wylderdrake: Spiked Cheek
			197021, -- Cliffside Wylderdrake: Spiked Club Tail
			196995, -- Cliffside Wylderdrake: Spiked Horns
			197004, -- Cliffside Wylderdrake: Spiked Legs
			196977, -- Cliffside Wylderdrake: Split Head Horns
			196997, -- Cliffside Wylderdrake: Split Horns
			196968, -- Cliffside Wylderdrake: Steel and Yellow Armor
			196999, -- Cliffside Wylderdrake: Swept Horns
			196980, -- Cliffside Wylderdrake: Triple Head Horns
			196989, -- Cliffside Wylderdrake: White Hair
			197014, -- Cliffside Wylderdrake: White Scales
			197007, -- Cliffside Wylderdrake: Wide Stripes Pattern
			197099, -- Highland Drake: Armor
			197117, -- Highland Drake: Black Hair
			197142, -- Highland Drake: Black Scales
			197153, -- Highland Drake: Bladed Tail
			197156, -- Highland Drake: Bronze and Green Armor
			197145, -- Highland Drake: Bronze Scales
			197118, -- Highland Drake: Brown Hair
			197101, -- Highland Drake: Bushy Brow
			197149, -- Highland Drake: Club Tail
			197125, -- Highland Drake: Coiled Horns
			197100, -- Highland Drake: Crested Brow
			197128, -- Highland Drake: Curled Back Horns
			197116, -- Highland Drake: Ears
			201792, -- Highland Drake: Embodiment of the Crimson Gladiator
			197098, -- Highland Drake: Finned Back
			197106, -- Highland Drake: Finned Head
			197155, -- Highland Drake: Finned Neck
			197090, -- Highland Drake: Gold and Black Armor
			197094, -- Highland Drake: Gold and Red Armor
			197095, -- Highland Drake: Gold and White Armor
			197127, -- Highland Drake: Grand Thorn Horns
			197143, -- Highland Drake: Green Scales
			197131, -- Highland Drake: Hairy Cheek
			197122, -- Highland Drake: Heavy Horns
			197147, -- Highland Drake: Heavy Scales
			197119, -- Highland Drake: Helm
			197126, -- Highland Drake: Hooked Horns
			197152, -- Highland Drake: Hooked Tail
			197102, -- Highland Drake: Horned Chin
			197139, -- Highland Drake: Large Spotted Pattern
			197103, -- Highland Drake: Maned Chin
			197111, -- Highland Drake: Maned Head
			197114, -- Highland Drake: Multi-Horned Head
			197120, -- Highland Drake: Ornate Helm
			197110, -- Highland Drake: Plated Head
			197144, -- Highland Drake: Red Scales
			197141, -- Highland Drake: Scaled Pattern
			197091, -- Highland Drake: Silver and Blue Armor
			197093, -- Highland Drake: Silver and Purple Armor
			197112, -- Highland Drake: Single Horned Head
			197129, -- Highland Drake: Sleek Horns
			197140, -- Highland Drake: Small Spotted Pattern
			197132, -- Highland Drake: Spiked Cheek
			197150, -- Highland Drake: Spiked Club Tail
			197109, -- Highland Drake: Spiked Head
			197134, -- Highland Drake: Spiked Legs
			197151, -- Highland Drake: Spiked Tail
			197097, -- Highland Drake: Spined Back
			197133, -- Highland Drake: Spined Cheek
			197105, -- Highland Drake: Spined Chin
			197108, -- Highland Drake: Spined Head
			197154, -- Highland Drake: Spined Neck
			197137, -- Highland Drake: Spined Nose
			197130, -- Highland Drake: Stag Horns
			197096, -- Highland Drake: Steel and Yellow Armor
			197138, -- Highland Drake: Striped Pattern
			197124, -- Highland Drake: Swept Horns
			197113, -- Highland Drake: Swept Spiked Head
			197121, -- Highland Drake: Tan Horns
			197104, -- Highland Drake: Tapered Chin
			197136, -- Highland Drake: Taperered Nose
			197123, -- Highland Drake: Thorn Horns
			197115, -- Highland Drake: Thorned Jaw
			197135, -- Highland Drake: Toothy Mouth
			197107, -- Highland Drake: Triple Finned Head
			197148, -- Highland Drake: Vertical Finned Tail
			197146, -- Highland Drake: White Scales
			197357, -- Renewed Proto-Drake: Armor
			197401, -- Renewed Proto-Drake: Beaked Snout
			197348, -- Renewed Proto-Drake: Black and Red Armor
			197392, -- Renewed Proto-Drake: Black Scales
			197368, -- Renewed Proto-Drake: Blue Hair
			197390, -- Renewed Proto-Drake: Blue Scales
			197377, -- Renewed Proto-Drake: Bovine Horns
			197353, -- Renewed Proto-Drake: Bronze and Pink Armor
			197391, -- Renewed Proto-Drake: Bronze Scales
			197369, -- Renewed Proto-Drake: Brown Hair
			197403, -- Renewed Proto-Drake: Club Tail
			197375, -- Renewed Proto-Drake: Curled Horns
			197380, -- Renewed Proto-Drake: Curved Horns
			197358, -- Renewed Proto-Drake: Curved Spiked Brow
			197366, -- Renewed Proto-Drake: Dual Horned Crest
			197376, -- Renewed Proto-Drake: Ears
			201790, -- Renewed Proto-Drake: Embodiment of the Storm-Eater
			197365, -- Renewed Proto-Drake: Finned Crest
			197388, -- Renewed Proto-Drake: Finned Jaw
			197404, -- Renewed Proto-Drake: Finned Tail
			197408, -- Renewed Proto-Drake: Finned Throat
			197346, -- Renewed Proto-Drake: Gold and Black Armor
			197351, -- Renewed Proto-Drake: Gold and Red Armor
			197349, -- Renewed Proto-Drake: Gold and White Armor
			197381, -- Renewed Proto-Drake: Gradient Horns
			197367, -- Renewed Proto-Drake: Gray Hair
			197371, -- Renewed Proto-Drake: Green Hair
			192523, -- Renewed Proto-Drake: Green Scales
			197389, -- Renewed Proto-Drake: Green Scales
			197356, -- Renewed Proto-Drake: Hairy Back
			197359, -- Renewed Proto-Drake: Hairy Brow
			197395, -- Renewed Proto-Drake: Harrier Pattern
			197383, -- Renewed Proto-Drake: Heavy Horns
			197397, -- Renewed Proto-Drake: Heavy Scales
			197373, -- Renewed Proto-Drake: Helm
			197354, -- Renewed Proto-Drake: Horned Back
			197385, -- Renewed Proto-Drake: Horned Jaw
			197379, -- Renewed Proto-Drake: Impaler Horns
			197363, -- Renewed Proto-Drake: Maned Crest
			197405, -- Renewed Proto-Drake: Maned Tail
			197394, -- Renewed Proto-Drake: Predator Pattern
			197372, -- Renewed Proto-Drake: Purple Hair
			197399, -- Renewed Proto-Drake: Razor Snout
			197370, -- Renewed Proto-Drake: Red Hair
			197400, -- Renewed Proto-Drake: Shark Snout
			197364, -- Renewed Proto-Drake: Short Spiked Crest
			197347, -- Renewed Proto-Drake: Silver and Blue Armor
			197350, -- Renewed Proto-Drake: Silver and Purple Armor
			197396, -- Renewed Proto-Drake: Skyterror Pattern
			197398, -- Renewed Proto-Drake: Snub Snout
			197402, -- Renewed Proto-Drake: Spiked Club Tail
			197361, -- Renewed Proto-Drake: Spiked Crest
			197386, -- Renewed Proto-Drake: Spiked Jaw
			197407, -- Renewed Proto-Drake: Spiked Throat
			197360, -- Renewed Proto-Drake: Spined Brow
			197362, -- Renewed Proto-Drake: Spined Crest
			197406, -- Renewed Proto-Drake: Spined Tail
			197352, -- Renewed Proto-Drake: Steel and Yellow Armor
			197378, -- Renewed Proto-Drake: Subtle Horns
			197374, -- Renewed Proto-Drake: Swept Horns
			197355, -- Renewed Proto-Drake: Thick Spined Jaw
			197384, -- Renewed Proto-Drake: Thick Spined Jaw
			197387, -- Renewed Proto-Drake: Thin Spined Jaw
			197382, -- Renewed Proto-Drake: White Horns
			197393, -- Renewed Proto-Drake: White Scales
			197588, -- Windborne Velocidrake: Armor
			197620, -- Windborne Velocidrake: Beaked Snout
			197597, -- Windborne Velocidrake: Black Fur
			197611, -- Windborne Velocidrake: Black Scales
			197612, -- Windborne Velocidrake: Blue Scales
			197577, -- Windborne Velocidrake: Bronze and Green Armor
			197613, -- Windborne Velocidrake: Bronze Scales
			197624, -- Windborne Velocidrake: Club Tail
			197602, -- Windborne Velocidrake: Cluster Horns
			197605, -- Windborne Velocidrake: Curled Horns
			197603, -- Windborne Velocidrake: Curved Horns
			197583, -- Windborne Velocidrake: Exposed Finned Back
			197626, -- Windborne Velocidrake: Exposed Finned Neck
			197621, -- Windborne Velocidrake: Exposed Finned Tail
			197587, -- Windborne Velocidrake: Feathered Back
			197630, -- Windborne Velocidrake: Feathered Neck
			197593, -- Windborne Velocidrake: Feathery Head
			197625, -- Windborne Velocidrake: Feathery Tail
			197584, -- Windborne Velocidrake: Finned Back
			197595, -- Windborne Velocidrake: Finned Ears
			197627, -- Windborne Velocidrake: Finned Neck
			197622, -- Windborne Velocidrake: Finned Tail
			197580, -- Windborne Velocidrake: Gold and Red Armor
			197598, -- Windborne Velocidrake: Gray Hair
			197608, -- Windborne Velocidrake: Gray Horns
			197591, -- Windborne Velocidrake: Hairy Head
			197617, -- Windborne Velocidrake: Heavy Scales
			197600, -- Windborne Velocidrake: Helm
			197619, -- Windborne Velocidrake: Hooked Snout
			197596, -- Windborne Velocidrake: Horned Jaw
			197589, -- Windborne Velocidrake: Large Head Fin
			197618, -- Windborne Velocidrake: Long Snout
			197585, -- Windborne Velocidrake: Maned Back
			197604, -- Windborne Velocidrake: Ox Horns
			197628, -- Windborne Velocidrake: Plated Neck
			197635, -- Windborne Velocidrake: Reaver Pattern
			197599, -- Windborne Velocidrake: Red Hair
			197614, -- Windborne Velocidrake: Red Scales
			197636, -- Windborne Velocidrake: Shrieker Pattern
			197578, -- Windborne Velocidrake: Silver and Blue Armor
			197581, -- Windborne Velocidrake: Silver and Purple Armor
			197594, -- Windborne Velocidrake: Small Ears
			197590, -- Windborne Velocidrake: Small Head Fin
			197586, -- Windborne Velocidrake: Spiked Back
			197629, -- Windborne Velocidrake: Spiked Neck
			197623, -- Windborne Velocidrake: Spiked Tail
			197592, -- Windborne Velocidrake: Spined Head
			197607, -- Windborne Velocidrake: Split Horns
			197579, -- Windborne Velocidrake: Steel and Orange Armor
			197606, -- Windborne Velocidrake: Swept Horns
			197615, -- Windborne Velocidrake: Teal Scales
			197601, -- Windborne Velocidrake: Wavy Horns
			197582, -- Windborne Velocidrake: White and Pink Armor
			197609, -- Windborne Velocidrake: White Horns
			197616, -- Windborne Velocidrake: White Scales
			197634, -- Windborne Velocidrake: Windswept Pattern
			197610, -- Windborne Velocidrake: Yellow Horns
		}
	}
}
