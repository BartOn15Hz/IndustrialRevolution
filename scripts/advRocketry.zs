import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;

# Removals 
val removals = [
    <libvulpes:coalgenerator>,
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
