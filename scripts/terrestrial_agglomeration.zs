import crafttweaker.item.IItemCondition;
import mods.botaniatweaks.Agglomeration;

// This script requires:
// - Botania
// - Botania Tweaks
// - Blood Magic
// - Embers: Rekindled
// - Tech Reborn
// - Tinkering with Blood Magic (probably want TiC as well)

// Botania Tweaks is beyond broken and there are caveats with this script
// The life essence tank check DOES work, but it does not show up as a filled tank in JEI. Fun stuff.
// I can't use the object-based method of adding these recipes because it's like it ignores it
// also the ritual stones also do not show up with correct metadata in JEI lol, maybe its JustEnoughIDs messing with it though
// these problems will be fixed in the 1.18 rewrite of Botania Tweaks that will be developed as well as adding:
  // fluid support
  // bigger (max 5x5, I think) and more arbitrary multiblocks
  // NBT support for blocks in the multiblock
// hopefully I'll learn how to do this when I'm working on Production Chambers
// just need to learn really what I'm doing in terms of programming and Fabric/Quilt, and then I'll be good! :)

// Blood Bronze in-world conversion
Agglomeration.addRecipe(
    /////////////////// Actual inputs
    /* Output */        <techreborn:dynamiccell> * 16,
    /* Input(s) */      [
                            <techreborn:dynamiccell>.withTag({Fluid:{FluidName:"lifeessence",Amount:1000}}) * 16,
                            <techreborn:dust:49> * 36,
                            <bloodmagic:activation_crystal>
                        ],
    /* Mana Cost */     250000,
    /* Start Color */   0xFFBC4E,
    /* End Color */     0xFF4F4F,
    
    /////////////////// Multiblock
    /* Center Start */  <botania:alchemycatalyst>,
    /* Edges Start */   <embers:block_bronze>, 
    /* Corners Start */ <bloodmagic:ritual_stone:2>,
    /* Center End */    <botania:alchemycatalyst>,
    /* Edges End */     <bloodtinker:blood_bronze_block>,
    /* Corners End */   <minecraft:stone>
);
