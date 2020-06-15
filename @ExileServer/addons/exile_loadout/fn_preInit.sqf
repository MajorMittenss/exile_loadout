/*
	fn_preInit

	Magn
	© 2019 Magn

	This work is property of Magn. You do not have permissions distribute any of this content
 	without written permission from Magn
*/

diag_log "[exile_loadout] - Pre Initializing!";
private _path = "exile_loadout\scripts";
{
	_x params [
		["_function", ""],
		["_public", true]
	];
	missionNamespace setVariable [_function, compileFinal (preprocessFileLineNumbers format ["%1\%2.sqf", _path, _function]), _public];
	diag_log format ["[exile_loadout] - Function '%1' compiled successfully", _function];
} forEach [
	// Server
	["ExileServer_loadout_network_applyLoadoutRequest", false],
	
	// Client
	["ExileClient_gui_loadout_event_onDeleteLoadout"],
	["ExileClient_gui_loadout_event_onLoad"],
	["ExileClient_gui_loadout_event_onLoadoutChanged"],
	["ExileClient_gui_loadout_event_onRetrieveLoadout"],
	["ExileClient_gui_loadout_event_onSaveLoadout"],
	["ExileClient_gui_loadout_event_onUnload"],
	["ExileClient_gui_loadout_modelBox_updateLoadout"],
	["ExileClient_gui_loadout_show"],
	["ExileClient_gui_loadout_updateList"],
	["ExileClient_loadout_util_calculatePrice"],
	["ExileClient_object_player_checkLoadout"],
	["ExileClient_util_gear_getDisplayNameByClassName"],
	["ExileClient_util_loadout_isItemBlacklisted"]
];
diag_log "[exile_loadout] - Pre Initialization done!";
true