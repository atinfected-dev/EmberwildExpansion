# 🌋 Wrath of the Emberwild  
**Custom Expansion Module for AzerothCore 3.3.5**  
*Scripted with Eluna + SQL | Modular & Production-Ready*

---

## 🔥 EXPANSION OVERVIEW

> *“When the Lich King fell, the balance of Azeroth cracked. In the mists of the southern seas lies Zandor’al, a jungle-shrouded, volcanic continent — home to Titan experiments, elemental corruption, and the awakening of Ignaroth, the Heart of Flame.”*

### 🔧 Features:

- 🗺️ **New Continent**: Zandor’al  
- 🏰 **4 Fully Scripted 5-Player Dungeons**  
- 🏅 **Flamewardens Reputation System** (gear + progression)  
- 📜 **Questline spanning all dungeons**  
- 🚪 **Raid access unlock** to *Heart of Ignaroth*  
- 🎞️ Cinematic & campaign expansion-ready

---

## 📖 LORE SUMMARY

Zandor’al was once a Titan crucible — the **Emberwild Forge** — designed to temper elemental fire and life.  
But when Azeroth's elemental balance fractured, the Titan-forged fire entity **Ignaroth** stirred beneath its molten core.

Now, **Emberwild Covenant** cultists, flame-beasts, and corrupted trolls seek to “cleanse” the world in purifying fire.  
Opposing them are the **Flamewardens**, Titan loyalists who seek heroes to stop the inferno before it consumes everything.

---

## 🏅 FACTIONS

| Name               | ID   | Type     | Description                                      |
|--------------------|------|----------|--------------------------------------------------|
| **Flamewardens**   | 2201 | Friendly | Titan elemental guardians (rep, gear, storyline)  
| **Emberwild Covenant** | 2202 | Hostile  | Cult of Ignaroth: corrupted trolls, beasts, fire beings  

---

## 🧭 PROGRESSION PATH

- 📍 Begin with quest **“Into the Ember Bloom”**  
- 🔄 Complete 4 dungeons + boss kills  
- 🧱 Build reputation with **Flamewardens**  
- 🚪 Unlock access to the **Heart of Ignaroth raid**

---

## 🏰 DUNGEONS (Fully Scripted)

---

### 🏛️ 1. Temple of Ember Bloom  
*A jungle temple twisted by fire and overgrowth.*

| Boss | Mechanics |
|------|-----------|
| **Scorchroot the Entwined** | Flame vines, molten thorns, summon adds  
| **Pyrelash Priestess Azura** | Fire nova, flame lash, shield aura  
| **Mol’tah the Devourer** | Berserk, AoE slams, flame bite  
| **Khar’zul** | Flame shield, ignite ground, flame stomp

---

### 🌋 2. Molten Chasm  
*Subterranean lava caverns overflowing with unstable magma beasts.*

| Boss | Mechanics |
|------|-----------|
| **Lavafang** | Burrow ambush, fire bite, molten spawn  
| **Emberflame Hydra** | Head phases, lava splash  
| **Smolderscale the Ancient** | Stacking aura, flame swipe  
| **Volgrak, Core Watcher** | Rune shield, fire pulse, overheating

---

### 🛕 3. Thornfire Hold  
*Fortress of jungle trolls infused with fire shamanism.*

| Boss | Mechanics |
|------|-----------|
| **Zul’ra** | AoE firestorm, flame totems, hex  
| **Thornspike Beastmaster** | Whip attacks, fire-beast summons  
| **Emberblood Twins** | Empowered/immune rotation  
| **Vakar** | Root + fire fusion, flame storm combo

---

### 🧱 4. Ruins of Ard’alor  
*Titanic ruins reclaimed by vegetation and corrupted flame constructs.*

| Boss | Mechanics |
|------|-----------|
| **Ignis Warden Protocol** | Laser barrage, shield modes  
| **Jungleheart Construct** | Roots + ignite combo, overgrowth  
| **Solarflare Sentinel** | Solar blindness, beam fire  
| **Zhar’thul** | Fire archive channel, aura burn, mind fire

---

## 📜 QUESTLINE: *Wrath of the Emberwild*

Quest Giver: **Lorekeeper Alithar**  
Location: Stormwind or Orgrimmar  
Progression: One quest per dungeon

| ID     | Title                   | Objective                        |
|--------|-------------------------|----------------------------------|
| 90400  | Into the Ember Bloom     | Defeat Khar’zul (Temple)         |
| 90401  | Through Fire and Stone   | Defeat Volgrak (Chasm)           |
| 90402  | Scorched Wilds           | Defeat Vakar (Hold)              |
| 90403  | Heart of the Ruins       | Defeat Zhar’thul (Ruins)         |
| 90404  | The Burning Archive 🔓    | Unlocks *Heart of Ignaroth* raid |

---

## 🏅 FLAMEWARDENS REPUTATION SYSTEM

| Feature      | Description                             |
|--------------|-----------------------------------------|
| 📈 Gains     | Dungeon boss kills + quest completions  
| 🏅 Levels    | Friendly → Honored → Revered → Exalted  
| 💰 Vendor    | **Quartermaster Arlia** (entry `99020`)  
| 📍 Location  | Orgrimmar / Stormwind near quest hub  

### 🛍️ Reward Examples

| Item ID | Name                         | Rep Requirement |
|---------|------------------------------|-----------------|
| 50730   | Lava Core Shard              | Friendly        |
| 50731   | Flame-Cleansed Binding       | Honored         |
| 50734   | Cloak of Emberwild Resolve   | Exalted         |

---

## 💰 LOOT SYSTEM

- Each dungeon boss drops **2–3 level 85–90 blues**  
- Tables are defined in `creature_loot_template`  
- Fully editable drop rates and item IDs

---

## 🛠️ INSTALLATION

### SQL
- Import all `.sql` files:
  - `emberwild_dungeons.sql`
  - `emberwild_quests.sql`
  - `emberwild_loot.sql`
  - `flamewardens_faction.sql`
  - `vendor_arlia.sql`

### Lua
Place all `.lua` files into your Eluna scripts folder:



---

## 🔧 DEV NOTES

| Feature               | Supported |
|------------------------|-----------|
| Dungeon Scripts        | ✅ All 4 complete  
| Rep Vendor System      | ✅ Fully functional  
| Quest Integration      | ✅ Eluna + SQL  
| Future Raid Hook       | ✅ Leads to Ignaroth  
| Heroic Mode Support    | 🔜 On request  
| World Building Maps    | 🟡 Placeholder Map IDs (use real terrain or load via `.map`)  
| Eluna Required         | ✅  



*The fire awakens... but heroes will rise.* 🔥  


  

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
