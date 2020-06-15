
// Put this in your main "config.cpp" file on your own mission
class CfgLoadout {
    // Whether players are allowed to use loadouts (can't remember if this was implemented xd)
    enabled = 1;

    // Maximum amount of loadouts that are allowed to be saved
	maximumLoadouts = 20;
    
    // This configuration allows you to blacklist certain trade categories from being saved.
	blacklistedTradeCategories[] = {

	};

    // This allows you to blacklist certain items (rather than a whole category). 
    // EXAMPLE CLASSNAMES:
    // Exile_Item_Bandage
	blacklistedItemsClasses[] = {

    };
};

// Put this in your main "config.cpp" file on your own mission
class CfgNetworkMessages {
	class applyLoadoutRequest
	{
		module="loadout";
		parameters[]={"ARRAY"};
	};
};

// Put this in your main "config.cpp" file on your own mission
class CfgInteractionMenus {
	class Loadout
    {
        targetType = 2;
        target = "Exile_Trader_Armory";
        
        class Actions
        {
            class AccessLoadouts: ExileAbstractAction
            {
                title="<img image='\a3\ui_f\data\IGUI\Cfg\Actions\gear_ca.paa' size='1' shadow='false' />Loadouts";
                condition="(getNumber(missionConfigFile >> 'CfgLoadout' >> 'enabled') isEqualTo 1) && ((ExileClientInteractionObject distance player) < 8)";
                action="[] spawn ExileClient_gui_loadout_show";
                priority=1.3;
            };
        };
    };
}