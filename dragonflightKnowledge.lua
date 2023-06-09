local addonName, addon = ...

local D = {
    --#Alchemy
    [193891] = true, -- Experimental Substance
    [193897] = true, -- Reawakened Catalyst
    [198599] = true, -- Experimental Decay Sample
    [198608] = true, -- Alchemy Notes
    [198663] = true, -- Frostforged Potion
    [198685] = true, -- Well Insulated Mug
    [198697] = true, -- Contraband Concoction
    [198710] = true, -- Canteen of Suspicious Water
    [198712] = true, -- Firewater Powder Sample
    [198963] = true, -- Decaying Phlegm
    [198964] = true, -- Elementious Splinter
    [201003] = true, -- Furry Gloop
    [200974] = true, -- Dusty Alchemist's Research
    [201270] = true, -- Rare Alchemist's Research
    [201281] = true, -- Ancient Alchemist's Research
    [201706] = true, -- Notebook of Crafting Knowledge (Alchemy)
    [203471] = true, -- Tasty Candy
    [204226] = true, -- Blazehoof Ashes
    [205211] = true, -- Nutrient Diluted Protofluid
    [205212] = true, -- Marrow-Ripened Slime
    [205213] = true, -- Suspicious Mold
    [205353] = true, -- Niffen Notebook of Alchemy Knowledge
    [205429] = true, -- Bartered Alchemy Notes
    [205440] = true, -- Bartered Alchemy Journal
    --#Blacksmithing
    [192131] = true, -- Valdrakken Weapon Chain
    [192132] = true, -- Draconium Blade Sharpener
    [198606] = true, -- Blacksmith's Writ
    [198791] = true, -- Glimmer of Blacksmithing Wisdom
    [198965] = true, -- Primeval Earth Fragment
    [198966] = true, -- Molten Globule
    [201004] = true, -- Ancient Spear Shards
    [201005] = true, -- Curious Ingots
    [201006] = true, -- Draconic Flux
    [201007] = true, -- Ancient Monument
    [201008] = true, -- Molten Ingot
    [201009] = true, -- Falconer Gauntlet Drawings
    [201010] = true, -- Qalashi Weapon Diagram
    [201011] = true, -- Spelltouched Tongs
    [200972] = true, -- Dusty Blacksmith's Diagrams
    [201268] = true, -- Rare Blacksmith's Diagrams
    [201279] = true, -- Ancient Blacksmith's Diagrams
    [201708] = true, -- Notebook of Crafting Knowledge (Blacksmithing)
    [204230] = true, -- Dense Seaforged Javelin
    [205352] = true, -- Niffen Notebook of Blacksmithing Knowledge
    [205986] = true, -- Well-Worn Kiln
    [205987] = true, -- Brimstone Rescue Ring
    [205988] = true, -- Zaqali Elder Spear
    [205428] = true, -- Bartered Blacksmithing Notes
    [205439] = true, -- Bartered Blacksmithing Journal
    --#Enchanting
    [193900] = true, -- Prismatic Focusing Shard
    [198610] = true, -- Enchanter's Script
    [198675] = true, -- Lava-Infused Seed
    [198689] = true, -- Stormbound Horn
    [198694] = true, -- Enriched Earthen Shard
    [198967] = true, -- Primordial Aether
    [198968] = true, -- Primalist Charm
    [198798] = true, -- Flashfrozen Scroll
    [198799] = true, -- Forgotten Arcane Tome
    [198800] = true, -- Fractured Titanic Sphere
    [201012] = true, -- Enchanted Debris
    [201013] = true, -- Faintly Enchanted Remains
    [200976] = true, -- Dusty Enchanter's Research
    [201272] = true, -- Rare Enchanter's Research
    [201283] = true, -- Ancient Enchanter's Research
    [201356] = true, -- Glimmer of Fire
    [201357] = true, -- Glimmer of Frost
    [201358] = true, -- Glimmer of Air
    [201359] = true, -- Glimmer of Earth
    [201360] = true, -- Glimmer of Order
    [201709] = true, -- Notebook of Crafting Knowledge (Enchanting)
    [204224] = true, -- Speck of Arcane Awareness
    [204990] = true, -- Lava-Drenched Shadow Crystal
    [204999] = true, -- Shimmering Aqueous Orb
    [205001] = true, -- Resonating Arcane Crystal
    [205351] = true, -- Niffen Notebook of Enchanting Knowledge
    [205427] = true, -- Bartered Enchanting Notes
    [205438] = true, -- Bartered Enchanting Journal
    --#Engineering
    [193902] = true, -- Eroded Titan Gizmo
    [193903] = true, -- Watcher Power Core
    [198611] = true, -- Engineering Details
    [198789] = true, -- Intact Coil Capacitor
    [198611] = true, -- Engineering Details
    [198969] = true, -- Keeper's Mark
    [198970] = true, -- Infinitely Attachable Pair o' Docks
    [201014] = true, -- Boomthyr Rocket
    [200977] = true, -- Dusty Engineer's Scribblings
    [201273] = true, -- Rare Engineer's Scribblings
    [201284] = true, -- Ancient Engineer's Scribblings
    [201710] = true, -- Notebook of Crafting Knowledge (Engineering)
    [204227] = true, -- Everflowing Antifreeze
    [204469] = true, -- Misplaced Aberrus Outflow Blueprints
    [204470] = true, -- Haphazardly Discarded Bomb
    [204471] = true, -- Defective Survival Pack
    [204475] = true, -- Busted Wyrmhole Generator
    [204480] = true, -- Inconspicuous Data Miner
    [204850] = true, -- Handful of Khaz'gorite Bolts
    [204853] = true, -- Discarded Dracothyst Drill
    [204855] = true, -- Overclocked Determination Core
    [205349] = true, -- Niffen Notebook of Engineering Knowledge
    [205425] = true, -- Bartered Engineering Notes
    [205436] = true, -- Bartered Engineering Journal
    --#Herbalism
    [194041] = true, -- Driftbloom Sprout
    [194054] = true, -- Dredged Seedling
    [194055] = true, -- Primordial Soil
    [194061] = true, -- Suffocating Spores
    [194080] = true, -- Peculiar Bud
    [194081] = true, -- Mutated Root
    [199115] = true, -- Herbalism Field Notes
    [200677] = true, -- Dreambloom Petal
    [200678] = true, -- Dreambloom
    [200980] = true, -- Dusty Herbalist's Notes
    [201276] = true, -- Rare Herbalist's Notes
    [201287] = true, -- Ancient Herbalist's Notes
    [201705] = true, -- Notebook of Crafting Knowledge (Herbalism)
    [201717] = true, -- Notebook of Crafting Knowledge (Herbalism)
    [202014] = true, -- Infused Pollen
    [204228] = true, -- Undigested Hochenblume Petal
    [205358] = true, -- Niffen Notebook of Herbalism Knowledge
    [205434] = true, -- Bartered Herbalism Notes
    [205445] = true, -- Bartered Herbalism Journal
    --#Inscription
    [193904] = true, -- Phoenix Feather Quill
    [193905] = true, -- Iskaaran Trading Ledger
    [198607] = true, -- Scribe's Glyphs
    [198659] = true, -- Forgetful Apprentice's Tome
    [198669] = true, -- How to Train Your Whelpling
    [198686] = true, -- Frosted Parchment
    [198693] = true, -- Dusty Darkmoon Card
    [198703] = true, -- Sign Language Reference Sheet
    [198704] = true, -- -lsing Earth Rune
    [198971] = true, -- Curious Djaradin Rune
    [198972] = true, -- Draconic Glamour
    [201015] = true, -- Counterfeit Darkmoon Deck
    [200973] = true, -- Dusty Scribe's Runic Drawings
    [201269] = true, -- Rare Scribe's Runic Drawings
    [201280] = true, -- Ancient Scribe's Runic Drawings
    [201711] = true, -- Notebook of Crafting Knowledge (Inscriptioin)
    [204229] = true, -- Glimmering Rune of Arcantrix
    [205354] = true, -- Niffen Notebook of Inscription Knowledge
    [205430] = true, -- Bartered Inscription Notes
    [205441] = true, -- Bartered Inscription Journal
    [206031] = true, -- Intricate Zaqali Runes
    [206034] = true, -- Hissing Rune Draft
    [206035] = true, -- Ancient Research
    --#Jewelcrafting
    [193907] = true, -- Chipped Tyrstone
    [193909] = true, -- Ancient Gem Fragments
    [198656] = true, -- Painter's Pretty Jewel
    [198660] = true, -- Fragmented Key
    [198612] = true, -- Jeweler's Cuts
    [198664] = true, -- Crystalline Overgrowth
    [198670] = true, -- Lofty Malygite
    [198682] = true, -- Alexstraszite Cluster
    [198687] = true, -- Closely Guarded Shiny
    [198974] = true, -- Elegantly Engraved Embellishment
    [201016] = true, -- Harmonic Crystal Harmonizer
    [201017] = true, -- Igneous Gem
    [200978] = true, -- Dusty Jeweler's Illustrations
    [201274] = true, -- Rare Jeweler's Illustrations
    [201285] = true, -- Ancient Jeweler's Illustrations
    [201712] = true, -- Notebook of Crafting Knowledge (Jewelcrafting)
    [204222] = true, -- Conductive Ametrine Shard
    [205214] = true, -- Snubbed Snail Shells
    [205216] = true, -- Gently Jostled Jewels
    [205219] = true, -- Broken Barter Boulder
    [205348] = true, -- Niffen Notebook of Jewelcrafting Knowledge
    [205424] = true, -- Bartered Jewelcrafting Notes
    [205435] = true, -- Bartered Jewelcrafting Journal
    --#Leatherworking
    [193910] = true, -- Molted Dragon Scales
    [193913] = true, -- Preserved Animal Parts
    [198613] = true, -- Leatherworking Designs
    [198658] = true, -- Decay-Infused Tanning Oil
    [198667] = true, -- Spare Djaradin Tools
    [198690] = true, -- Decayed Scales
    [198696] = true, -- Wind-Blessed Hide
    [198683] = true, -- Treated Hides
    [198711] = true, -- Poacher's Pack
    [198975] = true, -- Ossified Hide
    [198976] = true, -- Exceedingly Soft Skin
    [201018] = true, -- Well-Danced Drum
    [200979] = true, -- Dusty Leatherworker's Diagrams
    [201275] = true, -- Rare Leatherworker's Diagrams
    [201286] = true, -- Ancient Leatherworker's Diagrams
    [201713] = true, -- Notebook of Crafting Knowledge (Leatherworking)
    [204232] = true, -- Slyvern Alpha Claw
    [204986] = true, -- Flame-Infused Scale Oil
    [204987] = true, -- Lava-Forged Leatherworker's "Knife"
    [204988] = true, -- Sulfur-Soaked Skins
    [205350] = true, -- Niffen Notebook of Leatherworking Knowledge
    [205426] = true, -- Bartered Leatherworking Notes
    [205437] = true, -- Bartered Leatherworking Journal
    --#Mining
    [194039] = true, -- Heated Ore Sample
    [194062] = true, -- Unyielding Stone Chunk
    [194063] = true, -- Glowing Fragment
    [194064] = true, -- Intricate Geode
    [194078] = true, -- Perfect Draconium Scale
    [194079] = true, -- Pure Serevite Nugget
    [199122] = true, -- Mining Field Notes
    [200981] = true, -- Dusty Miner's Notes
    [201277] = true, -- Rare Miner's Notes
    [201288] = true, -- Ancient Miner's Notes
    [201300] = true, -- Iridescent Ore Fragments
    [201301] = true, -- Iridescent Ore
    [201700] = true, -- Notebook of Crafting Knowledge (Mining)
    [201716] = true, -- Notebook of Crafting Knowledge (Mining)
    [202011] = true, -- Elementally-Charged Stone
    [204233] = true, -- Impenetrable Elemental Core
    [204632] = true, -- Tectonic Rock Fragment
    [205356] = true, -- Niffen Notebook of Mining Knowledge
    [205432] = true, -- Bartered Mining Notes
    [205443] = true, -- Bartered Mining Journal
    --#Skinning
    [198837] = true, -- Curious Hide Scraps
    [198841] = true, -- Large Sample of Curious Hide
    [199128] = true, -- Skinning Field Notes
    [200982] = true, -- Dusty Skinner's Notes
    [201278] = true, -- Rare Skinner's Notes
    [201289] = true, -- Ancient Skinner's Notes
    [201714] = true, -- Notebook of Crafting Knowledge (Skinning)
    [201718] = true, -- Notebook of Crafting Knowledge (Skinning)
    [202016] = true, -- Saturated Bone
    [204231] = true, -- Kingly Sheepskin Pelt
    [205357] = true, -- Niffen Notebook of Skinning Knowledge
    [205443] = true, -- Bartered Skinning Notes
    [205444] = true, -- Bartered Skinning Journal
    --#Tailoring
    [193898] = true, -- Umbral Bone Needle
    [193899] = true, -- Primalweave Spindle
    [198609] = true, -- Tailoring Examples
    [198662] = true, -- Intriguing Bolt of Blue Cloth
    [198680] = true, -- Decaying Brackenhide Blanket
    [198684] = true, -- Miniature Bronze Dragonflight Banner
    [198692] = true, -- Noteworthy Scrap of Carpet
    [198699] = true, -- Mysterious Banner
    [198702] = true, -- Itinerant Singed Fabric
    [198977] = true, -- Ohn'arhan Weave
    [198978] = true, -- Stupidly Effective Stitchery
    [201019] = true, -- Ancient Dragonweave Bolt
    [201020] = true, -- Silky Surprise
    [200975] = true, -- Dusty Tailor's Diagrams
    [201271] = true, -- Rare Tailor's Diagrams
    [201282] = true, -- Ancient Tailor's Diagrams
    [201715] = true, -- Notebook of Crafting Knowledge (Tailoring)
    [204225] = true, -- Perfect Windfeather
    [205355] = true, -- Niffen Notebook of Tailoring Knowledge
    [205431] = true, -- Bartered Tailoring Notes
    [205442] = true, -- Bartered Tailoring Journal
    [206019] = true, -- Abandoned Reserve Chute
    [206025] = true, -- Used Medical Wrap Kit
    [206030] = true, -- Exquisitely Embroidered Banner
    --#Treatise
    [198454] = true, -- Draconic Treatise on Blacksmithing
    [194697] = true, -- Draconic Treatise on Alchemy
    [194698] = true, -- Draconic Treatise on Tailoring
    [194699] = true, -- Draconic Treatise on Inscription
    [194700] = true, -- Draconic Treatise on Leatherworking
    [194702] = true, -- Draconic Treatise on Enchanting
    [194703] = true, -- Draconic Treatise on Jewelcrafting
    [194704] = true, -- Draconic Treatise on Herbalism
    [194708] = true, -- Draconic Treatise on Mining
    [198510] = true, -- Draconic Treatise on Engineering
    [201023] = true, -- Draconic Treatise on Skinning
    --#Misc
    [191784] = true, -- Dragon Shard of Knowledge
}

addon.D = D