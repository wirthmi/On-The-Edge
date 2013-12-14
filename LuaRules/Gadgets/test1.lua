function gadget:GetInfo()
	return {
		name = "test1",
		desc = "Simple gadget for spawning a player's initial unit",
		author = "ja sam",
		date = "2010-08-30",
		license = "ote",
		layer = -255,
		enabled = true
	}
end

include "LuaRules/Configs/tsp/tsp_actions.lua"


local heroID

function gadget:GameFrame(frame)
	if(frame == 100) then
		heroID = Spring.CreateUnit("tank", 100, 0, 100, 0, 0)
		Spring.AddUnitDamage(heroID, 400)
	end
	if(frame == 300) then
		action.SpawnDrone(heroID, UnitDefNames["dronehealing"].id, 0)
	end
end
