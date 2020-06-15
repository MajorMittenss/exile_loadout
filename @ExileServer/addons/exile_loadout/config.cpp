class CfgPatches 
{
    class exile_loadout
    {
        requiredVersion = 0.1;
		requiredAddons[] = {"exile_client","exile_server"};
		units[] = {};
		weapons[] = {};
		magazines[] = {};
		ammo[] = {};
    };
};

class CfgFunctions
{
    class exile_loadout
    {
        class Bootstrap
        {
            file="exile_loadout";
            class preInit 
            {
                preInit=1;
            };
        };
    };
};