local npcId = 500100
local personalHeal = 635
local personalMessage = "i pec u!!"

local function OnEnterCombat(event, creature, target)
    creature:SetData("haveHealed", false)
    creature:SendUnitYell(personalMessage, 0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end

local function OnDamageTaken(event, creature, attacker, damage)
    local haveHealed = creature:GetData("haveHealed")

    if(haveHealed) then
        return
    end

    if(creature:GetHealthPct() > 50) then
        return
    end

    creature:CastSpell(creature, personalHeal, true)
    creature:SetData("haveHealed", true)
end

RegisterCreatureEvent(npcId, 1, OnEnterCombat)
RegisterCreatureEvent(npcId, 2, OnLeaveCombat)
RegisterCreatureEvent(npcId, 9, OnDamageTaken)