/*
	ExileClient_gui_loadout_event_onDeleteLoadout

	Magn
	© 2019 Magn

	This work is property of Magn. You do not have permissions distribute any of this content
 	without written permission from Magn
*/

_this params ["_listbox", "_index"];
private _result = ["Are you sure you want to delete this loadout?", "Warning", "Yes", "Nope!"] call BIS_fnc_guiMessage;
if !(_result) exitWith {true};
private _storedLoadouts = (profileNamespace getVariable ["ExileStoredLoadouts", []]);
private _loadoutDeleted = _storedLoadouts deleteAt _index;
profileNamespace setVariable ["ExileStoredLoadouts", _storedLoadouts];
saveProfileNamespace;
[format ["'%1' was deleted!", (_loadoutDeleted select 0)]] spawn ExileClient_gui_baguette_show;
call ExileClient_gui_loadout_updateList;
true