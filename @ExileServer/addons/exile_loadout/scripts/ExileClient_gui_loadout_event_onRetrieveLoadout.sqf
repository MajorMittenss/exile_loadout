/*
	ExileClient_gui_loadout_event_onRetrieveLoadout

	Magn
	© 2019 Magn

	This work is property of Magn. You do not have permissions distribute any of this content
 	without written permission from Magn
*/

disableSerialization;
private _display = uiNamespace getVariable ["RscLoadout", displayNull];
private _listbox = _display displayCtrl 2;

try {
	private _index = lbCurSel _listbox;
	if(_index isEqualTo -1) throw "No Loadout Selected";

	private _storedLoadouts = profileNamespace getVariable ["ExileStoredLoadouts", []];
	private _loadout = (_storedLoadouts select _index);
	private _result = ["Changing to a new loadout will remove EVERYTHING in the current equipped loadout (poptabs excluded). Do you want to proceed?", "Loadout Change", "Yes!", "No!"] call BIS_fnc_guiMessage;
	if !(_result) exitWith {true};

	["applyLoadoutRequest", [_loadout]] call ExileClient_system_network_send;
	closeDialog 1;
} 
catch 
{
	["ErrorTitleOnly", [_exception]] call ExileClient_gui_toaster_addTemplateToast;
};
true