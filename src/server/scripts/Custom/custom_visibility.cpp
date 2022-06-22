#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Object.h"
#include "Player.h"

enum CreatureIds :  uint16
{

};

enum GameobjectIds : uint32
{

};

enum QuestIds : uint16
{

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
			// Example
			NpcEntrys.push_back(1);

			std::list<Creature*> creatures = player->FindNearestCreatures(NpcEntrys, 80.0f);
			for (auto itr : creatures)
			{
				player->ExecuteCanNeverSee(itr);
				itr->UpdateObjectVisibility();
			}

			// Gameobject part
			std::list<uint32> GoEntrys;
			// Example
			GoEntrys.push_back(1);

			std::list<GameObject*> gameobjects = player->FindNearestGameObject(GoEntrys, 80.0f);
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
