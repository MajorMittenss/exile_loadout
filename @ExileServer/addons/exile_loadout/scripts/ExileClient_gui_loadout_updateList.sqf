/*
	ExileClient_gui_loadout_refreshList

	Magn
	© 2019 Magn

	This work is property of Magn. You do not have permissions distribute any of this content
 	without written permission from Magn
*/

disableSerialization;
private _display = uiNamespace getVariable ["RscLoadout", displayNull];
private _currentStored = _display displayCtrl 1;
private _listbox = _display displayCtrl 2;
lbClear _listbox;

private _storedLoadouts = (profileNamespace getVariable ["ExileStoredLoadouts", []]);
_currentStored ctrlSetText format ["%1/%2", count _storedLoadouts, getNumber(missionConfigFile >> "CfgLoadout" >> "maximumLoadouts")];
{
	private _name = _x select 0;
	private _index = _listbox lbAdd _name;
	private _loadout = _x select 2;
	private _loadoutCost = _x select 1;
	private _loadoutColor = [1, 1, 1, 1];
	if((player getVariable ["ExileLocker", 0]) < _loadoutCost) then
	{
		_listbox lbSetTooltip [_index, format ["You need %1 poptabs in your locker to use this loadout!", (((_loadoutCost - (player getVariable ["ExileLocker", 0]))) call ExileClient_util_string_exponentToString)]];
		_loadoutColor set [3, 0.3];
		_listbox lbSetColor [_index, _loadoutColor];
	}
	else
	{
		_listbox lbSetTooltip [_index, format ["Locker Cost: %1 Poptabs", (_loadoutCost call ExileClient_util_string_exponentToString)]];
	};
	if!((_loadout select 0) isEqualTo []) then {
		private _primaryClass = ((_loadout select 0) select 0);
		_listbox lbSetPictureRight [_index, (getText(configFile >> "CfgWeapons" >> _primaryClass >> "picture"))];
	} 
	else 
	{
		if!((_loadout select 1) isEqualTo []) then
		{
			private _secondaryClass = ((_loadout select 1) select 0);
			_listbox lbSetPictureRight [_index, (getText(configFile >> "CfgWeapons" >> _secondaryClass >> "picture"))];
		}
		else
		{
			if!((_loadout select 2) isEqualTo []) then 
			{
				private _handgunClass = ((_loadout select 2) select 0);
				_listbox lbSetPictureRight [_index, (getText(configFile >> "CfgWeapons" >> _handgunClass >> "picture"))];
			};
		};
	};

	if!((_loadout select 3) isEqualTo []) then
	{
		private _uniformClass = ((_loadout select 3) select 0);
		_listbox lbSetPicture [_index, (getText(configFile >> "CfgWeapons" >> _uniformClass >> "picture"))];
	};
} forEach _storedLoadouts;

true