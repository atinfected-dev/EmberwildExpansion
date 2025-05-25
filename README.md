🌋 Wrath of the Emberwild (AzerothCore 3.3.5)

- Custom Expansion Module – Eluna + SQL

🔥 Expansion Overview

- "When the Lich King fell, the balance of Azeroth cracked. In the mists of the southern seas lies Zandor’al, a jungle-shrouded, volcanic continent — home to Titan experiments, elemental corruption, and the awakening of Ignaroth, the Heart of Flame."

Features:
New continent: Zandor’al

4 fully scripted 5-man dungeons

Custom reputation faction with gear vendor

Fully implemented quest chain connecting all dungeons

Future-ready support for raid unlocks + cinematics

📖 Lore Summary


- Zandor’al was once a Titan crucible — the Emberwild Forge — designed to temper elemental fire and life. 
- Now, with elemental balance broken, the ancient Titan-forged entity Ignaroth awakens beneath its molten heart.
- Trolls, flame-beasts, and corrupted constructs form the Emberwild Covenant to prepare the world for purification by fire.
- The Flamewardens, Titan loyalists, seek champions to stop them.

🏅 Factions

Faction Name	ID	Type	Description
Flamewardens	2201	Friendly	Guardians of elemental order (Reputation + Vendor)
Emberwild Covenant	2202	Hostile	Fire-twisted trolls and elementals

🕹️ "Progression Path"
- Players accept a quest chain from Lorekeeper Alithar that spans all four dungeons. Completion rewards rep, gear, and unlocks the raid (Heart of Ignaroth – in development).

🏰 Dungeons (Fully Scripted)
1. Temple of Ember Bloom
A corrupted jungle temple overcome by fire and vines.

Boss	Mechanics

- Scorchroot the Entwined	Flame Vines, Molten Thorns, Add Spawning

- Pyrelash Priestess Azura	Fire Nova, Flame Lash, Shield Aura

- Mol’tah the Devourer	Flame Bite, AoE Slam, Berserk Rage

- Khar’zul	Flame Shield, Ignite Ground, Flame Stomp



2. Molten Chasm
Lava tunnels beneath the Emberwild, infested by molten creatures.

Boss	Mechanics
- Lavafang	Burrow ambush, Fire Bite, Add spawning

- Emberflame Hydra	Head-swapping phases, Lava Splash

- Smolderscale the Ancient	Stacking fire aura, Flame Swipe

- Volgrak, Core Watcher	Rune shield, Fire pulses, Overheat channel



3. Thornfire Hold
Fortress of fire-touched jungle trolls.

Boss	Mechanics
- Zul’ra	AoE Firestorm, Totem spawning, Hex debuff

- Thornspike Beastmaster	Fire beast summoning, Whip attacks

- Emberblood Twins	Alternating empowered/immune states

- Vakar	Fire-root combo, Wild magic fusion


4. Ruins of Ard’alor
Titan ruins overtaken by corrupted constructs and wild growth.

Boss	Mechanics
- Ignis Warden Protocol	Laser barrage, Defensive shields

- Jungleheart Construct	Rooting vines, Ignite-overgrowth combo

- Solarflare Sentinel	Solar fire + blind, Light-beam attacks

- Zhar’thul	Fire barrier aura, Fire archives, Mind burn

📜 Questline: Wrath of the Emberwild
Given by: Flamewarden Lorekeeper Alithar (Stormwind/Orgrimmar)

Quest ID	Title	Objective
90400	Into the Ember Bloom	Defeat Khar’zul (Temple)
90401	Through Fire and Stone	Defeat Volgrak (Chasm)
90402	Scorched Wilds	Defeat Vakar (Hold)
90403	Heart of the Ruins	Defeat Zhar’thul (Ruins)
90404	The Burning Archive	Final quest, unlocks raid content

🏅 Flamewardens Reputation System
Gains: Quest rewards and/or boss kills (optional Eluna hook)

Levels: Friendly → Honored → Revered → Exalted

Rewards Vendor: Quartermaster Arlia (entry 99020)

Example Rewards:
Item ID	Name	Rep Req
50730	Lava Core Shard	Friendly
50731	Flame-Cleansed Binding	Honored
50734	Cloak of Emberwild Resolve	Exalted

🧾 Loot System
Each dungeon boss drops 2–3 pieces of gear appropriate to level 85–90.
You can modify creature_loot_template to adjust drop rates.

📂 Developer Installation
# Step 1: Import SQL
Run all SQL files inside /sql/ against your AzerothCore world DB

# Step 2: Place Lua scripts
Copy contents of /lua_scripts/ into your Eluna Lua scripts folder

# Step 3: Enable vendor, rep gain
Edit boss scripts if you want to award rep per kill (+10 per boss)

# Step 4: Test using teleport NPC (optional, can be provided)



🔧 Tech Requirements

- ✅ AzerothCore 3.3.5

- ✅ Eluna enabled

- ✅ Custom map entries for new zones (Zandor’al dungeons use dummy map IDs)

- ✅ Optional: SmartAI/SD2 for trash mobs

  

🚧 In Progress


# 🏰 Heart of Ignaroth (Raid)  
**Custom Level 90 10/25-Player Raid**  
*For AzerothCore 3.3.5 | Eluna Scripted | Fully Modular*

---

## 🔥 LORE

> *“Deep in the Emberwild continent of Zandor’al, a forgotten Titan forge stirs once more. At its heart lies Ignaroth — a half-Titan, half-elemental entity, once created to balance fire and life. But the balance is broken. Ignaroth now burns with rage, threatening to consume the world in purifying flame.”*

---

## 🌋 RAID OVERVIEW

| Feature              | Detail                            |
|----------------------|-----------------------------------|
| **Name**             | Heart of Ignaroth                |
| **Map ID**           | 9930                              |
| **Max Players**      | 10/25                             |
| **Reset Time**       | 7 Days                            |
| **Wings**            | 3 (Emberforge Core, Magma Sanctum, Throne of Flame)  
| **Boss Count**       | 8 (Fully Scripted)                |
| **Entry Quest**      | `90404 - The Burning Archive` (optional)  
| **Recommended Level**| 90                                |

---

## 🧭 RAID STRUCTURE & BOSSES

---

### 🔻 Wing 1: **Emberforge Core**

1. **Coreforged Colossus**  
   - 🔸 Cone cleave  
   - 🔸 Flame pulses  
   - 🔸 Magma jet phase (positioning check)

2. **Ember Wyrm Vael’karos** *(Advanced)*  
   - 🔸 Alternates between **ground and air phase**  
   - 🔸 Meteor impacts on players  
   - 🔸 Add management: molten whelps must die or AoE wipes group

3. **Moltaria, Mother of Magma** *(Challenging)*  
   - 🔸 Spawns lava adds that feed boss if they reach her  
   - 🔸 Kill adds = explosions  
   - 🔸 Lava Fissures restrict LOS  
   - 🔸 Phase 2: boss becomes mobile, trail hazards, AoE stomp  
   - 🔸 Death: wipes if 4+ adds fed to her

4. **Forgehound Thraxx** *(Mobile Fight)*  
   - 🔸 Fixate mechanic: chases random non-tank  
   - 🔸 Interruptable flame howl (raid-wide silence)  
   - 🔸 Chain mechanic between players (fire beam link)  
   - 🔸 25% enrage: faster movement, high tank pressure

---

### 🔻 Wing 2: **Magma Council & Flame Cult**

5. **Magmus, the Flamebreaker** *(Multi-phase)*  
   - 🔸 Rotating hammer stances:  
     - Pulverize → tank cleave  
     - Searing Slam → AoE burst  
     - Flamebrand → attacker debuff  
   - 🔸 Titan rune chains: magic debuff must be dispelled  
   - 🔸 Phase 2: Molten Seal → flame waves + add kill to escape

6. **Lava Revenant Council** *(Trio Encounter)*  
   - 🔸 3 elemental revenants: Fire, Earth, Wind  
   - 🔸 Each buffs nearby councilors  
   - 🔸 Must die within 15 seconds of each other  
   - 🔸 Solo boss alive = ENRAGE and wipe mechanic

7. **High Inquisitor Pyroxis** *(Mechanically Heavy)*  
   - 🔸 Burning Soul debuff spreads unless dispelled  
   - 🔸 Temporal Singularity: freezes raid unless protected  
   - 🔸 Mind control 1–2 players — they gain offensive buffs  
   - 🔸 Corrupted Timeline aura: reduces cooldowns + increases DoT durations

---

### 🔻 Final Wing: **Throne of Flame**

8. **Ignaroth, Heart of Flame** *(Final Boss – Very Hard)*  
   - 🔥 **Phase 1:**  
     - Cone cleaves  
     - Fire jets across platform  
     - Magmatic brands (spread mechanic)

   - 🌿 **Phase 2:**  
     - Raid split into **Fire Realm** and **Nature Realm**  
     - Each must kill an Elemental Heart add  
     - Failure = group-wide DoT for rest of fight

   - 🧨 **Phase 3:**  
     - Heart exposed, raid-wide flame pulse  
     - Meteor spawns, safe zone mechanics  
     - **Final Judgment**: wipes raid unless players interrupt by using cores from Phase 2

---





- 🧱 World building for Zandor’al zones

- 📜 Daily rep quests

- 🎞️ Cinematics + phasing options

- 🧪 GM tools / debug portal

🙌 Credits
Designed and implemented by atinfected
All content is modular, maintainable, and production-grade
