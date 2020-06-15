/*
	ExileServer_loadout_network_applyLoadoutRequest

	Magn
	© 2019 Magn

	This work is property of Magn. You do not have permissions distribute any of this content
 	without written permission from Magn
*/

_this params ["_sessionID", "_parameters"];
private ["_player"];

try 
{
	_player = _sessionID call ExileServer_system_session_getPlayerObject;
	if(isNull _player) throw "You dont exist!";
	if !(alive _player) throw "You are not alive!";

	if(_player getVariable ["ExileMutex", false]) throw "You are already processing another request elsewhere!";
	_player setVariable ["ExileMutex", false];

	private _loadoutData = (_parameters select 0);
	private _loadoutTotal = (_loadoutData select 1);
	private _currentMoney = _player getVariable ["ExileLocker", 0];
	if(_currentMoney < _loadoutTotal) throw format ["You are missing %1 poptabs in your locker!", (_currentMoney - _loadoutTotal)];
	
	_currentMoney = (_currentMoney - _loadoutTotal);
	_player setVariable ["ExileLocker", _currentMoney, true];
	format ["updateLocker:%1:%2", _currentMoney, (getPlayerUID _player)] call ExileServer_system_database_query_fireAndForget;

	_player setUnitLoadout (_loadoutData select 2);
	_player call ExileServer_object_player_database_update;

	[_sessionID, "toastRequest", ["SuccessTitleAndText", [format ["Loadout was changed to '%1'", (_loadoutData select 0)], format ["%1 Poptabs was deducted from your locker.", _loadoutTotal]]]] call ExileServer_system_network_send_to;
}
catch 
{
	[_sessionID, "toastRequest", ["ErrorTitleAndText", ["Loadout", _exception]]] call ExileServer_system_network_send_to;
};
_player setVariable ["ExileMutex", false];
true