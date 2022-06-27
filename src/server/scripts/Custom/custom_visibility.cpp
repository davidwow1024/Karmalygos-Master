#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Object.h"
#include "Player.h"
#include "custom_visibility.h"

class visibility_control_script : public PlayerScript
{
public:
	visibility_control_script() : PlayerScript("visibility_control_script") {}

	uint32 checkTimer = 1000;
	std::list<uint32> NpcEntrys;
	std::list<uint32> GoEntrys;
	
	void OnLogin(Player* /*player*/) 
	{
		// Creature part
		NpcEntrys.push_back(NPC_GARROSHAR_GRUNT);
		NpcEntrys.push_back(NPC_GARROSHAR_GRUNT2);
		NpcEntrys.push_back(NPC_HORDE_WAR_WAGON);
		NpcEntrys.push_back(NPC_GARROSHARR_SHREDDER);

		// Gameobject part
		// Example
		GoEntrys.push_back(1);
	}
	
	void OnUpdate(Player* player, uint32 diff) override
	{
		if (checkTimer <= diff)
		{
			std::list<Creature*> creatures = player->FindNearestCreatures(NpcEntrys, 90.0f);
			for (auto itr : creatures)
			{
				player->ExecuteCanNeverSee(itr);
				itr->UpdateObjectVisibility();
			}

			std::list<GameObject*> gameobjects = player->FindNearestGameObject(GoEntrys, 90.0f);
			for (auto itr : gameobjects)
			{
				player->ExecuteCanNeverSee(itr);
				itr->UpdateObjectVisibility();
			}

			checkTimer = 1000;
		}
		else checkTimer -= diff;
	}
};

void AddSC_custom_visibility()
{
	new visibility_control_script();
}
