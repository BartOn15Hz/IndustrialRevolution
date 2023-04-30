import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.ArcFurnace;
import mods.modularmachinery.RecipeBuilder;

# Making Stainless Steel

// 1x Coal Coke + 1x Pulverized Iron --> 1x Steel Dust
BlastFurnace.addRecipe(<immersiveengineering:metal:17>, <ore:dustIron>, 20);

// 1x Steel Dust + 1x Nickel Dust + 1x Chromium Dust --> 1x Impure Stainless Steel Dust + 1x IE Slag
ArcFurnace.addRecipe(<contenttweaker:material_part:9>, <ore:dustSteel>, <immersiveengineering:material:7>, 20, 1024, [<ore:dustNickel>, <ore:dustChromium>], "Alloying");

// 1x Impure Stainless Steel Dust --> 1x Stainless Steel Dust
var stainlessSteelRecipe = RecipeBuilder.newBuilder("purifiedStainlessSteel", "purification_chamber", 20);

stainlessSteelRecipe.addEnergyPerTickInput("1024");

stainlessSteelRecipe.addItemInput(<ore:dustImpureStainlessSteel>);
stainlessSteelRecipe.addItemOutput(<ore:dustStainlessSteel>);

stainlessSteelRecipe.build();

// Removing 1x Stainless Steel Dust --> 1x Stainless Steel Ingot
ArcFurnace.removeRecipe(<contenttweaker:material_part>);

// 1x Stainless Steel Dust + 1x Silicon --> 1x Stainless Steel Ingot
ArcFurnace.addRecipe(<contenttweaker:material_part>, <ore:dustStainlessSteel>, <immersiveengineering:material:7>, 20, 1024, [<ore:itemSilicon>], "Alloying");