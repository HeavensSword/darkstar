--------------------------------------
-- 	Spell: Thunderstorm
-- 	Changes the weather around target party member to "thundery."
--------------------------------------
 
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function OnMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
	
	target:delStatusEffectSilent(EFFECT_FIRESTORM);
	target:delStatusEffectSilent(EFFECT_SANDSTORM);
	target:delStatusEffectSilent(EFFECT_RAINSTORM);
	target:delStatusEffectSilent(EFFECT_WINDSTORM);
	target:delStatusEffectSilent(EFFECT_HAILSTORM);
	target:delStatusEffectSilent(EFFECT_THUNDERSTORM);
	target:delStatusEffectSilent(EFFECT_AURORASTORM);
	target:delStatusEffectSilent(EFFECT_VOIDSTORM);
	
	local merit = caster:getMerit(MERIT_STORMSURGE);
	local power = merit + caster:getMod(MOD_STORMSURGE_EFFECT) + 2;	
	target:addStatusEffect(EFFECT_THUNDERSTORM,power,0,180);
end;