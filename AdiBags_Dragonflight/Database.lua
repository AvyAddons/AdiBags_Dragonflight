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
			--------------------------------------------------------------------
			198608, -- Alchemy Notes
			201281, -- Ancient Alchemist's ResearchTalent
			198963, -- Decaying Phlegm
			194697, -- Draconic Treatise on Alchemy
			200974, -- Dusty Alchemist's Research
			198964, -- Elementious Splinter
			193891, -- Experimental Substance
			201706, -- Notebook of Crafting Knowledge
			201270, -- Rare Alchemist's Research
			193897, -- Reawakened Catalyst
			198710, -- Canteen of Suspicious Water
			198697, -- Contraband Concoction
			198599, -- Experimental Decay Sample
			198712, -- Firewater Powder Sample
			198663, -- Frostforged Potion
			201003, -- Furry Gloop
			198685, -- Well Insulated Mug
			-- Blacksmithing
			--------------------------------------------------------------------
			192130, -- Sundered Flame Weapon Mold
			201279, -- Ancient Blacksmith's Diagrams
			198606, -- Blacksmith's Writ
			198454, -- Draconic Treatise on Blacksmithing
			192132, -- Draconium Blade Sharpener
			200972, -- Dusty Blacksmith's Diagrams
			198966, -- Molten Globule
			201708, -- Notebook of Crafting Knowledge
			198965, -- Primeval Earth Fragment
			201268, -- Rare Blacksmith's Diagrams
			192131, -- Valdrakken Weapon Chain
			201007, -- Ancient Monument
			201004, -- Ancient Spear Shards
			201005, -- Curious Ingots
			201006, -- Draconic Flux
			201009, -- Falconer Gauntlet Drawings
			201008, -- Molten Ingot
			201010, -- Qalashi Weapon Diagram
			201011, -- Spelltouched Tongs
			-- Enchanting
			--------------------------------------------------------------------
			201283, -- Ancient Enchanter's Research
			194702, -- Draconic Treatise on Enchanting
			200976, -- Dusty Enchanter's Research
			198610, -- Enchanter's Script
			201709, -- Notebook of Crafting Knowledge
			193901, -- Primal Dust
			198968, -- Primalist Charm
			198967, -- Primordial Aether
			193900, -- Prismatic Focusing Shard
			201272, -- Rare Enchanter's Research
			201012, -- Enchanted Debris
			201013, -- Faintly Enchanted Remains
			-- Engineering
			--------------------------------------------------------------------
			201284, -- Ancient Engineer's Scribblings
			198510, -- Draconic Treatise on Engineering
			200977, -- Dusty Engineer's Scribblings
			198611, -- Engineering Details
			193902, -- Eroded Titan Gizmo
			198970, -- Infinitely Attachable Pair o' Docks
			198969, -- Keeper's Mark
			201710, -- Notebook of Crafting Knowledge
			201273, -- Rare Engineer's Scribblings
			193903, -- Watcher Power Core
			201014, -- Boomthyr Rocket
			198789, -- Intact Coil Capacitor
			-- Herbalism
			--------------------------------------------------------------------
			201287, -- Ancient Herbalist's Notes
			194704, -- Draconic Treatise on Herbalism
			200677, -- Dreambloom Petal
			194054, -- Dredged Seedling
			194041, -- Driftbloom Sprout
			200980, -- Dusty Herbalist's Notes
			199115, -- Herbalism Field Notes
			202014, -- Infused Pollen
			194081, -- Mutated Root
			201705, -- Notebook of Crafting Knowledge
			201717, -- Notebook of Crafting Knowledge
			194080, -- Peculiar Bud
			194055, -- Primordial Soil
			201276, -- Rare Herbalist's Notes
			194061, -- Suffocating Spores
			200678, -- Dreambloom
			-- Inscription
			--------------------------------------------------------------------
			201280, -- Ancient Scribe's Runic Drawings
			198971, -- Curious Djaradin Rune
			198972, -- Draconic Glamour
			194699, -- Draconic Treatise on Inscription
			200973, -- Dusty Scribe's Runic Drawings
			193905, -- Iskaaran Trading Ledger
			201711, -- Notebook of Crafting Knowledge
			193904, -- Phoenix Feather Quill
			201269, -- Rare Scribe's Runic Drawings
			198607, -- Scribe's Glyphs
			201015, -- Counterfeit Darkmoon Deck
			198659, -- Forgetful Apprentice's Tome
			198686, -- Frosted Parchment
			198669, -- How to Train Your Whelpling
			198704, -- Pulsing Earth Rune
			198703, -- Sign Language Reference Sheet
			-- Jewelcrafting
			--------------------------------------------------------------------
			193909, -- Ancient Gem Fragments
			201285, -- Ancient Jeweler's Illustrations
			193907, -- Chipped Tyrstone
			194703, -- Draconic Treatise on Jewelcrafting
			200978, -- Dusty Jeweler's Illustrations
			198974, -- Elegantly Engraved Embellishment
			198973, -- Incandescent Curio
			198612, -- Jeweler's Cuts
			201712, -- Notebook of Crafting Knowledge
			201274, -- Rare Jeweler's Illustrations
			198682, -- Alexstraszite Cluster
			198687, -- Closely Guarded Shiny
			198664, -- Crystalline Overgrowth
			198660, -- Fragmented Key
			201016, -- Harmonic Crystal Harmonizer
			201017, -- Igneous Gem
			198670, -- Lofty Malygite
			198656, -- Painter's Pretty Jewel
			-- Leatherworking
			--------------------------------------------------------------------
			201286, -- Ancient Leatherworker's Diagrams
			194700, -- Draconic Treatise on Leatherworking
			200979, -- Dusty Leatherworker's Diagrams
			198976, -- Exceedingly Soft Skin
			198613, -- Leatherworking Designs
			193910, -- Molted Dragon Scales
			201713, -- Notebook of Crafting Knowledge
			198975, -- Ossified Hide
			193913, -- Preserved Animal Parts
			201275, -- Rare Leatherworker's Diagrams
			198658, -- Decay-Infused Tanning Oil
			198690, -- Decayed Scales
			198711, -- Poacher's Pack
			198667, -- Spare Djaradin Tools
			198683, -- Treated Hides
			201018, -- Well-Danced Drum
			198696, -- Wind-Blessed Hide
			-- Mining
			--------------------------------------------------------------------
			201288, -- Ancient Miner's Notes
			194708, -- Draconic Treatise on Mining
			200981, -- Dusty Miner's Notes
			202011, -- Elementally-Charged Stone
			194063, -- Glowing Fragment
			194039, -- Heated Ore Sample
			194064, -- Intricate Geode
			201300, -- Iridescent Ore Fragments
			199122, -- Mining Field Notes
			201700, -- Notebook of Crafting Knowledge
			194078, -- Perfect Draconium Scale
			194079, -- Pure Serevite Nugget
			201277, -- Rare Miner's Notes
			194062, -- Unyielding Stone Chunk
			201301, -- Iridescent Ore
			201716, -- Notebook of Crafting Knowledge
			-- Skinning
			--------------------------------------------------------------------
			201289, -- Ancient Skinner's Notes
			198837, -- Curious Hide Scraps
			201023, -- Draconic Treatise on Skinning
			200982, -- Dusty Skinner's Notes
			194076, -- Exotic Resilient Leather
			194067, -- Festering Carcass
			194066, -- Frigid Frostfur Pelt
			201714, -- Notebook of Crafting Knowledge
			201718, -- Notebook of Crafting Knowledge
			194077, -- Pristine Adamant Scales
			194068, -- Progenitor Scales
			201278, -- Rare Skinner's Notes
			202016, -- Saturated Bone
			199128, -- Skinning Field Notes
			194040, -- Slateskin Hide
			198841, -- Large Sample of Curious Hide
			-- Tailoring
			--------------------------------------------------------------------
			201282, -- Ancient Tailor's Diagrams
			194698, -- Draconic Treatise on Tailoring
			200975, -- Dusty Tailor's Diagrams
			201715, -- Notebook of Crafting Knowledge
			198977, -- Ohn'arhan Weave
			193899, -- Primalweave Spindle
			201271, -- Rare Tailor's Diagrams
			198978, -- Stupidly Effective Stitchery
			198609, -- Tailoring Examples
			193898, -- Umbral Bone Needle
			201019, -- Ancient Dragonweave Bolt
			198680, -- Decaying Brackenhide Blanket
			198662, -- Intriguing Bolt of Blue Cloth
			198702, -- Itinerant Singed Fabric
			198684, -- Miniature Bronze Dragonflight Banner
			198699, -- Mysterious Banner
			198692, -- Noteworthy Scrap of Carpet
			201020, -- Silky Surprise
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
