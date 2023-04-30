# By BartOn15Hz

# Imports

import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
import mods.ic2.HeatExchanger;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.immersiveengineering.Mixer;

# Removals 
val removals = [
    <libvulpes:coalgenerator>, // Coal Generator
    <libvulpes:ore0:10>        // Iridium Ore
] as IItemStack[];

for removal in removals {
    rh(removal);
}

# Rocket Fuels

# Circuits and Boards


# Motors
mods.advancedrocketry.ChemicalReactor.removeRecipe(<liquid:rocketfuel>);


// Basic Motor
recipes.remove(<libvulpes:motor>);
recipes.addShaped("CTBasicMotor", <libvulpes:motor>,[
    [<ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}), <ore:gearStainlessSteel>, <ore:plateStainlessSteel>],
    [<ore:stickStainlessSteel>, <ore:stickStainlessSteel>, <ore:plateStainlessSteel>],
    [<ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte}), <ore:gearStainlessSteel>, <ore:plateStainlessSteel>]
]);

// Advanced Motor
recipes.remove(<libvulpes:advancedmotor>);
recipes.addShaped("CTAdvancedMotor", <libvulpes:advancedmotor>,[
    [<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), <ore:gearElectrum>, <ore:plateElectrum>],
    [<ore:stickElectrum>, <ore:stickElectrum>, <ore:plateElectrum>],
    [<ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), <ore:gearElectrum>, <ore:plateElectrum>]
]);

// Enchanced Motor
recipes.remove(<libvulpes:enhancedmotor>);
recipes.addShaped("CTEnchancedMotor", <libvulpes:enhancedmotor>,[
    [<ic2:cable:2>.withTag({type: 2 as byte, insulation: 1 as byte}), <ore:gearTitaniumAluminide>, <ore:plateTitaniumAluminide>],
    [<ore:stickTitaniumAluminide>, <ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>],
    [<ic2:cable:2>.withTag({type: 2 as byte, insulation: 1 as byte}), <ore:gearTitaniumAluminide>, <ore:plateTitaniumAluminide>]
]);

// Elite Motor
recipes.remove(<libvulpes:elitemotor>);
recipes.addShaped("CTEliteMotor", <libvulpes:elitemotor>,[
    [<ic2:cable:3>.withTag({type: 3 as byte, insulation: 1 as byte}), <ore:gearTitaniumIridium>, <ore:plateTitaniumIridium>],
    [<ore:stickTitaniumIridium>, <ore:stickTitaniumIridium>, <ore:plateTitaniumIridium>],
    [<ic2:cable:3>.withTag({type: 3 as byte, insulation: 1 as byte}), <ore:gearTitaniumIridium>, <ore:plateTitaniumIridium>]
]);

# Multiblocks

/*
WIP - Needs other mods

// (Basic) Machine Casing
recipes.remove(<libvulpes:structuremachine>);
recipes.addShaped("CTVulpMachineCasing", <libvulpes:structuremachine> *4,[
    [<ore:stickStainlessSteel>, ],
    [],
    []
]);
*/ 

# Fuels

# Shared
// High-conc Brine
mods.immersiveengineering.Mixer.addRecipe(
    <liquid:highbrine>,
    <liquid:brine>,
    [<ore:itemSalt> *3],
    1024);

# Bipropellant Fuel - 1,1-Dimethylhydrazine


# Bipropellant Oxidizer - Dinitrogen Tetroxide
// Water + Coal in an generator with steam boiler upgrade (thermal) makes steam

// Nitric Oxide
var NitricOxide = RecipeBuilder.newBuilder("CTNitricOxide", "chemical_reactor", 400);
NitricOxide.addEnergyPerTickInput("1024");
NitricOxide.addFluidInput(<liquid:ammonia>);
NitricOxide.addFluidInput(<liquid:oxygen>);
NitricOxide.addFluidInput(<liquid:steam>);
NitricOxide.addFluidOutput(<liquid:nitricoxide>);
NitricOxide.build();

// Impure Nitric Dioxide
var ImpureNitricDioxide = RecipeBuilder.newBuilder("CTImpureNitricDioxide", "chemical_reactor", 400 );
ImpureNitricDioxide.addEnergyPerTickInput("1024");
ImpureNitricDioxide.addFluidInput(<liquid:nitricoixde>);
ImpureNitricDioxide.addFluidInput(<liquid:oxygen>);
ImpureNitricDioxide.addFluidOutput(<liquid:impurenitrogendioxide>);
ImpureNitricDioxide.build();


// Nitric Acid
var NitricAcid = RecipeBuilder.newBuilder("CTNitricAcid", "chemical_reactor", 400);
NitricAcid.addEnergyPerTickInput("1024");
NitricAcid.addFluidInput(<liquid:impurenitrogendioxide>);
NitricAcid.addFluidInput(<liquid:water>);
NitricAcid.addFluidOutput(<liquid:nitricacid>);
NitricAcid.build();

// Nitrogen Dioxide
var NitricDioxide = RecipeBuilder.newBuilder("CTNitricDioxide", "chemical_reactor", 400);
NitricDioxide.addEnergyPerTickInput("1024");
NitricDioxide.addFluidInput(<liquid:impurenitrogendioxide>);
NitricDioxide.addFluidInput(<liquid:nitricacid>);
NitricDioxide.addItemInput(<ore:dustPlatinum>);
NitricDioxide.addFluidOutput(<liquid:nitrogendioxide>);
NitricDioxide.build();

// Dinitrogen Tetraoxide
var DinitrogenTetroxide = RecipeBuilder.newBuilder("CTDinitrogenTetroxide", "chemical_reactor", 400);
DinitrogenTetroxide.addEnergyPerTickInput("1024");
DinitrogenTetroxide.addFluidInput(<liquid:nitrogendioxide>);
DinitrogenTetroxide.addFluidInput(<liquid:highbrine>);
DinitrogenTetroxide.addFluidOutput(<liquid:dinitrogentetroxide>);
DinitrogenTetroxide.build();

/* 
Example

var name = RecipeBuilder.newBuilder("Name", "chemical_reactor", ticks);
name.addEnergyPerTickInput("2048");
name.addItemInput("");
name.addItemOutput("");
name.addFluidInput("");
name.addFluidOutput("");
name.build();
*/
