#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;

//Impure Stainless Steel
var impureStainlessSteelColor = Color.fromHex("a7a6b0") as Color;

var impureStainlessSteel = MaterialSystem.getMaterialBuilder().setName("Impure Stainless Steel").setColor(impureStainlessSteelColor).build();

impureStainlessSteel.registerParts(["ingot", "dust"] as string[]);

//Stainless Steel

var stainlessSteelColor = Color.fromHex("cfd4d9") as Color;

var stainlessSteel = MaterialSystem.getMaterialBuilder().setName("Stainless Steel").setColor(stainlessSteelColor).build();

stainlessSteel.registerParts(["ingot", "plate", "rod", "dust"] as string[]);

var stainlessSteelBlock = stainlessSteel.registerPart("block").getData();
stainlessSteelBlock.addDataValue("hardness", "5");
stainlessSteelBlock.addDataValue("resistance", "6");
stainlessSteelBlock.addDataValue("harvestTool", "pickaxe");
stainlessSteelBlock.addDataValue("harvestLevel", "2");

//Chromium

var chromiumColor = Color.fromHex("c6c8c9") as Color;

var chromium = MaterialSystem.getMaterialBuilder().setName("Chromium").setColor(chromiumColor).build();

chromium.registerParts(["ingot", "dust"] as string[]);

var chromiumBlock = chromium.registerPart("block").getData();
chromiumBlock.addDataValue("hardness", "5");
chromiumBlock.addDataValue("resistance", "6");
chromiumBlock.addDataValue("harvestTool", "pickaxe");
chromiumBlock.addDataValue("harvestLevel", "2");

var chromiumOre = chromium.registerPart("ore").getData();
chromiumOre.addDataValue("variants", "minecraft:stone");
chromiumOre.addDataValue("hardness", "3");
chromiumOre.addDataValue("resistance", "4");
chromiumOre.addDataValue("harvestTool", "pickaxe");
chromiumOre.addDataValue("harvestLevel", "2");

// Tungstensteel
var tungstensteelColor = Color.fromHex("686f71") as Color;

var tungstensteel = MaterialSystem.getMaterialBuilder().setName("Tungsten Steel").setColor(tungstensteelColor).build();

tungstensteel.registerParts(["ingot", "plate", "rod", "dust"] as string[]);

// Tungsten
var tungstenColor = Color.fromHex("b5ac9f") as Color;
var tungsten = MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(tungstenColor).build();
tungsten.registerParts(["ingot", "dust", "plate"] as string[]);

var tungstenOre = tungsten.registerPart("ore").getData();
tungstenOre.addDataValue("variants", "minecraft:stone");
tungstenOre.addDataValue("hardness", "3");
tungstenOre.addDataValue("resistance", "4");
tungstenOre.addDataValue("harvestTool", "pickaxe");
tungstenOre.addDataValue("harvestLevel", "2");

/*
// Titanium Plates
var titaniumColor = Color.fromHex("505f71") as Color;

var titanium = MaterialSystem.getMaterialBuilder().setName("Titanium").setColor(titaniumColor).build();

titanium.registerParts(["plate", "rod"] as string[]);

*/

//Cupronickel

var cuproNickelColor = Color.fromHex("957452") as Color;

var cuproNickel = MaterialSystem.getMaterialBuilder().setName("Cupronickel").setColor(cuproNickelColor).build();

cuproNickel.registerParts(["ingot", "dust"] as string[]);