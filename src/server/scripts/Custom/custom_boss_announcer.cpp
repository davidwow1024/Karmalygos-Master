#include "ScriptMgr.h"
#include "Player.h"
#include "Creature.h"
#include "Chat.h"

class boss_announcer : public PlayerScript
{
public:
	boss_announcer() : PlayerScript("boss_announcer") {}

	void OnCreatureKill(Player* killer, Creature* killed)
	{
		if (killed->isWorldBoss())
		{
			std::string msg;

			msg += "|CFF64FF64El Jefe de Mundo |CFFFFFFFF[";
			msg += killed->GetName();
			msg += "]|r";
			msg += "|CFF64FF64 fue eliminado por|r ";
			msg += ChatHandler(killer->GetSession()).GetNameLink();
			msg += "|CFF64FF64 y su grupo.|r";
			sWorld->SendServerMessage(SERVER_MSG_STRING, msg.c_str(), 0);
		}
	}

};

void AddSC_custom_boss_announcer()
{
	new boss_announcer;
}