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
// Nitric Oxide
var NitricOxide = RecipeBuilder.newBuilder("CTNitricOxide", "chemical_reactor", 400);
NitricOxide.addEnergyPerTickInput("1024");
NitricOxide.addFluidInput(<liquid:ammonia> *100);
NitricOxide.addFluidInput(<liquid:oxygen> *100);
NitricOxide.addItemInput(<ore:dustPlatinum>);
NitricOxide.addFluidOutput(<liquid:nitricoxide> *100);
NitricOxide.build();

// Impure Nitric Dioxide
var ImpureNitricDioxide = RecipeBuilder.newBuilder("CTImpureNitricDioxide", "chemical_reactor", 400 );
ImpureNitricDioxide.addEnergyPerTickInput("1024");
ImpureNitricDioxide.addFluidInput(<liquid:nitricoxide> *100);
ImpureNitricDioxide.addFluidInput(<liquid:oxygen> *100);
ImpureNitricDioxide.addFluidOutput(<liquid:impurenitrogendioxide> *100);
ImpureNitricDioxide.build();


// Nitric Acid
var NitricAcid = RecipeBuilder.newBuilder("CTNitricAcid", "chemical_reactor", 400);
NitricAcid.addEnergyPerTickInput("1024");
NitricAcid.addFluidInput(<liquid:impurenitrogendioxide> *50);
NitricAcid.addFluidInput(<liquid:water> *100);
NitricAcid.addFluidOutput(<liquid:nitricacid> *100);
NitricAcid.build();

// Nitrogen Dioxide
var NitricDioxide = RecipeBuilder.newBuilder("CTNitricDioxide", "chemical_reactor", 400);
NitricDioxide.addEnergyPerTickInput("1024");
NitricDioxide.addFluidInput(<liquid:impurenitrogendioxide> *100);
NitricDioxide.addFluidInput(<liquid:nitricacid> *100);
NitricDioxide.addItemInput(<ore:dustPlatinum>);
NitricDioxide.addFluidOutput(<liquid:nitrogendioxide> *100);
NitricDioxide.build();

// Dinitrogen Tetraoxide
var DinitrogenTetroxide = RecipeBuilder.newBuilder("CTDinitrogenTetroxide", "chemical_reactor", 400);
DinitrogenTetroxide.addEnergyPerTickInput("1024");
DinitrogenTetroxide.addFluidInput(<liquid:nitrogendioxide> *100);
DinitrogenTetroxide.addFluidInput(<liquid:highbrine> *100);
DinitrogenTetroxide.addFluidOutput(<liquid:dinitrogentetroxide> *50);
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
