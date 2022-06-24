#include <Chat.h>

enum ForbiddenAreas : uint16
{
	ZONE_TIMELESS_ISLE			= 6757,	// Timeless Isle
	ZONE_ISLE_OF_GIANT			= 6661, // IsleofGiants
	ZONE_ISLE_OF_THUNDER		= 6507, // IsleofThunder
};
     
 class protected_zone : public PlayerScript
 {
 public:
     protected_zone() : PlayerScript("protected_zone") {}
     
     void OnUpdateZone(Player* player, uint32 newZone, uint32 /*newArea*/)
	 {
		 switch (newZone)
		 {
			 case ZONE_TIMELESS_ISLE:
			 case ZONE_ISLE_OF_GIANT:
			 case ZONE_ISLE_OF_THUNDER:
			 {
				 if (player->GetSession()->GetSecurity() >= 1)
					 return;

				 uint64 mod = player->GetMoney() * 0.1f;
				 
				 player->GetTeamId() == TEAM_ALLIANCE ? player->TeleportTo(0, -8833.07f, 622.778f, 93.9317f, 0.6771f) : player->TeleportTo(1, 1569.97f, -4397.41f, 16.0472f, 0.543025f);

				 player->SetMoney(player->GetMoney() - player->GetMoney() * 0.1f);
				 ChatHandler(player->GetSession()).PSendSysMessage("|cffFF0000Se le ha retirado|r %u |cffFF0000de oro por intentar entrar en una zona prohibida.|r", mod / 10000);

				 break;
			 }
			 default:
				 break;
		 }
	 }
 };
     
 void AddSC_protected_zone()
 {
     new protected_zone();
 }