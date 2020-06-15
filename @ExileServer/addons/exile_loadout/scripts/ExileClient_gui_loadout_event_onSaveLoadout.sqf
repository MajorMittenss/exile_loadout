/*
	ExileClient_gui_loadout_event_onSaveLoadout

	Magn
	© 2019 Magn

	This work is property of Magn. You do not have permissions distribute any of this content
 	without written permission from Magn
*/

disableSerialization;
_this params ["_saveButton"];
private _display = uiNamespace getVariable ["RscLoadout", displayNull];
private _listbox = _display displayCtrl 2;
private _loadoutNameInput = _display displayCtrl 3;

try {

	private _loadoutName = ctrlText _loadoutNameInput;
	if(count(_loadoutName) < 1) throw "No Loadout name entered.";
	if(count(_loadoutname) > 32) throw "Name is longer than 32 characters.";

	private _currentStoredLoadouts = profileNamespace getVariable ["ExileStoredLoadouts", []];
	if(count(_currentStoredLoadouts) >= (getNumber(missionConfigFile >> "CfgLoadout" >> "maximumLoadouts"))) throw "You cannot store anymore loadouts.";

	private _loadoutCheck = [] call ExileCLient_object_player_checkLoadout;
	if !(_loadoutCheck isEqualTo "") throw _loadoutCheck;

	{
		private _loadoutData = _x;
		if(toLower(_loadoutName) isEqualTo toLower(_loadoutData select 0)) throw "A Loadout with that name exists!";
	}
	forEach _currentStoredLoadouts;

	private _newLoadout = [_loadoutName, (call ExileClient_loadout_util_calculatePrice), (getUnitLoadout player)];
	_currentStoredLoadouts pushBack _newLoadout;
	profileNamespace setVariable ["ExileStoredLoadouts", _currentStoredLoadouts];
	saveProfileNamespace;

	_loadoutNameInput ctrlSetText "";
	call ExileClient_gui_loadout_updateList;
	_listbox lbSetCurSel (count _currentStoredLoadouts);
	[format ["'%1' was saved!", _loadoutName]] spawn ExileClient_gui_baguette_show;
} catch {
	[_exception] spawn ExileClient_gui_baguette_show;
};

true