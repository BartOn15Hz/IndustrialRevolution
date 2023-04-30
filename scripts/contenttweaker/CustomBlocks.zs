#loader contenttweaker 

import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;

# Blocks
// Tungstensteel Casing
var tungstensteel_casing = VanillaFactory.createBlock("tungstensteel_casing", <blockmaterial:iron>);
    tungstensteel_casing.setBlockHardness(10.0);
    tungstensteel_casing.setBlockResistance(12.0);
    tungstensteel_casing.setToolClass("pickaxe");
    tungstensteel_casing.setToolLevel(1);
    tungstensteel_casing.setBlockSoundType(<soundtype:metal>);
    tungstensteel_casing.register();

// Stainlesssteel Casing
var stainlesssteel_casing = VanillaFactory.createBlock("stainlesssteel_casing", <blockmaterial:iron>);
    stainlesssteel_casing.setBlockHardness(10.0);
    stainlesssteel_casing.setBlockResistance(12.0);
    stainlesssteel_casing.setToolClass("pickaxe");
    stainlesssteel_casing.setToolLevel(1);
    stainlesssteel_casing.setBlockSoundType(<soundtype:metal>);
    stainlesssteel_casing.register();
    
