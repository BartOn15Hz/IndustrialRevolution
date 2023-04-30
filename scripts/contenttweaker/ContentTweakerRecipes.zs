# By BartOn15Hz

# Imports
import mods.thermalexpansion.Refinery;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.InductionSmelter;

# Recipes

// Stabilized Redstone
Refinery.addRecipe(
    <liquid:stabilized_redstone> *100,
    <minecraft:redstone> %1,
    <liquid:redstone> *160,
    4000);

// Destabilized Quartz
Crucible.addRecipe(
    <liquid:destabilized_quartz> *100,
    <minecraft:quartz>,
    8000);

// Stabilized Quartz
Refinery.addRecipe(
    <liquid:stabilized_quartz> *100,
    <minecraft:quartz> %1,
    <liquid:destabilized_quartz> *160,
    4000);

// Tungsten Steel 
InductionSmelter.addRecipe(
    <contenttweaker:material_part:22>,
    <contenttweaker:material_part:27>,
    <minecraft:iron_ingot>,
    4000
    );

// Stabilized Uranium
Refinery.addRecipe(
    <liquid:stabilized_uranium> *100,
    <immersiveengineering:metal:25> %1,
    <liquid:uranium> *144,
    4000
);

