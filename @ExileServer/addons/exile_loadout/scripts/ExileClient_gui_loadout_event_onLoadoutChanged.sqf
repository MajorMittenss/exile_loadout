/*
	ExileClient_gui_loadout_event_onLoadoutChanged

	Magn
	© 2019 Magn

	This work is property of Magn. You do not have permissions distribute any of this content
 	without written permission from Magn
*/

_this params ["_listbox", "_index"];

disableSerialization;
if(_index isEqualTo -1) exitWith {true};
private _display = uiNamespace getVariable ["RscLoadout", displayNull];
private _retrieveButton = _display displayCtrl 5;
private _currentLoadouts = profileNamespace getVariable ["ExileStoredLoadouts", []];
private _loadoutData = (_currentLoadouts select _index);
_retrieveButton ctrlEnable ((player getVariable ["ExileLocker", 0]) >= (_loadoutData select 1));
(_loadoutData select 2) call ExileClient_gui_loadout_modelBox_updateLoadout;
true