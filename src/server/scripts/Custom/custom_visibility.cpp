#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Object.h"
#include "Player.h"

enum CreatureIds :  uint32
{
	NPC_GARROSHAR_GRUNT	    = 66398,
	NPC_GARROSHAR_GRUNT2    = 66282,
	NPC_HORDE_WAR_WAGON     = 66339,
	NPC_GARROSHARR_SHREDDER = 66397
};

enum GameobjectIds : uint32
{

};

enum  QuestIds : uint16
{
	THE_RIGTH_TOOL_FOR_THE_JOB = 31735
};

class visibility_control_script : public PlayerScript
{
public:
	visibility_control_script() : PlayerScript("visibility_control_script") {}

	uint32 checkTimer = 1000;
	
	void OnUpdate(Player* player, uint32 diff) override
	{
		if (checkTimer <= diff)
		{
			// Creature part
			std::list<uint32> NpcEntrys;

			// Quest THE_RIGTH_TOOL_FOR_THE_JOB = 31735
			NpcEntrys.push_back(NPC_GARROSHAR_GRUNT);
			NpcEntrys.push_back(NPC_GARROSHAR_GRUNT2);
			NpcEntrys.push_back(NPC_HORDE_WAR_WAGON);
			NpcEntrys.push_back(NPC_GARROSHARR_SHREDDER);

			std::list<Creature*> creatures = player->FindNearestCreatures(NpcEntrys, 90.0f);
			for (auto itr : creatures)
			{
				player->ExecuteCanNeverSee(itr);
				itr->UpdateObjectVisibility();
			}

			// Gameobject part
			std::list<uint32> GoEntrys;
			// Example
			GoEntrys.push_back(1);

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
