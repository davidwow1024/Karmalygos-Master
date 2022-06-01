#include <Chat.h>

enum ForbiddenAreas : uint16
{
	AREA_TIMELESS_ISLE			= 6757,	// Timeless Isle
	AREA_ISLE_OF_GIANT			= 6661, // IsleofGiants
	AREA_ISLE_OF_THUNDER		= 6507, // IsleofThunder

	MAP_MIST_OF_PANDARIA	    = 870,
};
     
 class protected_zone : public PlayerScript
 {
 public:
     protected_zone() : PlayerScript("protected_zone") {}
     
     void OnMapChanged(Player* player)
     {
		if (player->GetMapId() == MAP_MIST_OF_PANDARIA)
		{ 
			uint64 mod = player->GetMoney() * 0.1f;

			if (player->GetSession()->GetSecurity() <= 1)
			{
				if (player->GetTeamId() == TEAM_ALLIANCE)
					player->TeleportTo(0, -8833.07f, 622.778f, 93.9317f, 0.6771f);
				else if (player->GetTeamId() == TEAM_HORDE)
					player->TeleportTo(1, 1569.97f, -4397.41f, 16.0472f, 0.543025f);

				player->SetMoney(player->GetMoney() - player->GetMoney() * 0.1f);
				ChatHandler(player->GetSession()).PSendSysMessage("|cffFF0000Se le ha retirado|r %u |cffFF0000de oro por intentar entrar en una zona prohibida.|r", mod / 10000);
			}
		}
     }
	 /* For the future
	 void OnUpdateZone(Player* player, uint32 newZone, uint32 newArea)
	 {
		 switch (newZone)
		 {
			 case AREA_TIMELESS_ISLE:
			 case AREA_ISLE_OF_GIANT:
			 case AREA_ISLE_OF_THUNDER:
			 {
				 if (player->GetSession()->GetSecurity() >= 1)
					 return;
				 
				 if (player->GetTeamId() == TEAM_ALLIANCE)
					 player->TeleportTo(0, -8833.07f, 622.778f, 93.9317f, 0.6771f);
				 else if (player->GetTeamId() == TEAM_HORDE)
					 player->TeleportTo(1, 1569.97f, -4397.41f, 16.0472f, 0.543025f);

				 break;
			 }
			 default:
				 break;
		 }
	 }*/
 };
     
 void AddSC_protected_zone()
 {
     new protected_zone();
 }