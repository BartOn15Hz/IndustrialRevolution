#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;

// Temp Solution for Stainless Steel
var sscolor = Color.fromHex("FF69B4") as Color;
var stainless = MaterialSystem.getMaterialBuilder()
    .setName("Stainless Steel")
    .setColor(sscolor)
    .build();

stainless.registerParts(["ingot", "plate", "gear", "rod"] as string[]);

// Temp Solution for Electrum
var elcolor = Color.fromHex("023020") as Color;
var electrum = MaterialSystem.getMaterialBuilder()
    .setName("Electrum")
    .setColor(elcolor)
    .build();

electrum.registerParts(["ingot", "plate", "gear", "rod"] as string[]);