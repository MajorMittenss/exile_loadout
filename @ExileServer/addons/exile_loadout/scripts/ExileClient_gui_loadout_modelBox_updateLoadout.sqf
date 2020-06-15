/*
	ExileClient_gui_loadout_modelBox_updateLoadout

	Magn
	© 2019 Magn

	This work is property of Magn. You do not have permissions distribute any of this content
 	without written permission from Magn
*/

private _loadout = _this;
if(isNull ExileClientModelBoxVehicle) then
{
	"Exile_Unit_Player" call ExileClient_gui_modelBox_update;
};

ExileClientModelBoxVehicle setUnitLoadout _loadout;

if((primaryWeapon ExileClientModelBoxVehicle) != "") then
{
	ExileClientModelBoxVehicle selectWeapon (primaryWeapon ExileClientModelBoxVehicle);
	ExileClientModelBoxVehicle switchMove "amovpercmstpsraswrfldnon";
}
else 
{
	if((secondaryWeapon ExileClientModelBoxVehicle) != "") then
	{
		ExileClientModelBoxVehicle selectWeapon (secondaryWeapon ExileClientModelBoxVehicle);
		ExileClientModelBoxVehicle switchMove "amovpercmstpsraswlnrdnon";
	}
	else
	{
		if((handgunWeapon ExileClientModelBoxVehicle) != "") then
		{
			ExileClientModelBoxVehicle selectWeapon (handgunWeapon ExileClientModelBoxVehicle);
			ExileClientModelBoxVehicle switchMove "amovpercmstpsraswpstdnon";
		}
		else 
		{
			ExileClientModelBoxVehicle switchMove "amovpercmstpsnonwnondnon";
		};
	};
};

true