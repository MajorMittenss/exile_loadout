/*
	ExileClient_object_player_checkLoadout

	Magn
	© 2019 Magn

	This work is property of Magn. You do not have permissions distribute any of this content
 	without written permission from Magn
*/

private _result = "";
private _isBlacklisted = false;

/**

INDEX, CATEGORY
0: Assigned Items
1: Backpack
2: Backpack Items
3: Backpack Magazines
4: Backpack Weapon
5: Vest
6: Vest Items
7: Vest Magazines
8: Vest Weapons
9: Uniform
10: Uniform Items
11: Uniform Magazines
12: Uniform Weapons
13: Primary Weapon
14: Primary Weapon Items
15: Secondary Weapon
16: Secondary Weapon Items
17: Handgun Weapon
18: Handgun Weapon Items
19: Binocular
20: Headgear
21: Goggles

 */

try 
{
	{
		if (_x != "") then
		{
			_isBlacklisted = _x call ExileClient_util_loadout_isItemBlacklisted;
			if(_isBlacklisted) then
			{
				throw format ["%1 is blacklisted!", (_x call ExileClient_util_gear_getDisplayNameByClassName)];
			};
		}
	} 
	forEach (assignedItems player);

	private _backpack = backpack player;
	if !(_backpack isEqualTo "") then
	{

		_isBlacklisted = _backpack call ExileClient_util_loadout_isItemBlacklisted;
		if(_isBlacklisted) throw "Your backpack is blacklisted!";

		{
			_isBlacklisted = (_x select 0) call ExileClient_util_loadout_isItemBlacklisted;
			if(_isBlacklisted) throw format ["Item %1 in your Backpack is blacklisted!", (_x call ExileClient_util_gear_getDisplayNameByClassName)];
		}
		forEach ((getItemCargo backpackContainer player) call ExileClient_util_cargo_getMap);

		{
			_isBlacklisted = (_x select 0) call ExileClient_util_loadout_isItemBlacklisted;
			if (_isBlacklisted) throw format ["Magazine %1 in your Backpack is blacklisted!", ((_x select 0) call ExileClient_util_gear_getDisplayNameByClassName)];
		}
		forEach ((backpackContainer player) call ExileClient_util_cargo_getMagazineMap);

		{
			_isBlacklisted = (_x select 0) call ExileClient_util_loadout_isItemBlacklisted;
			if(_isBlacklisted) throw format ["Weapon %1 in your backpack is blacklisted!", (_x call ExileClient_util_gear_getDisplayNameByClassName)];
		}
		forEach ((getWeaponCargo backpackContainer player) call ExileClient_util_cargo_getMap);
	};

	private _vest = vest player;
	if !(_vest isEqualTo "") then
	{
		_isBlacklisted = _vest call ExileClient_util_loadout_isItemBlacklisted;
		if(_isBlacklisted) throw "Your Vest is blacklisted";

		{
			_isBlacklisted = (_x select 0) call ExileClient_util_loadout_isItemBlacklisted;
			if(_isBlacklisted) throw format ["Item %1 in your Vest is blacklisted!", (_x call ExileClient_util_gear_getDisplayNameByClassName)];
		}
		forEach ((getItemCargo vestContainer player) call ExileClient_util_cargo_getMap);
		{
			_isBlacklisted = (_x select 0) call ExileClient_util_loadout_isItemBlacklisted;
			if(_isBlacklisted) throw format ["Magazine %1 in your Vest is blacklisted!", ((_x select 0) call ExileClient_util_gear_getDisplayNameByClassName)];
		} 
		forEach ((vestContainer player) call ExileClient_util_cargo_getMagazineMap);
		{
			_isBlacklisted = (_x select 0) call ExileClient_util_loadout_isItemBlacklisted;
			if(_isBlacklisted) throw format ["Weapon %1 in your Vest is blacklisted!", (_x call ExileClient_util_gear_getDisplayNameByClassName)];
		} 
		forEach ((getWeaponCargo vestContainer player) call ExileClient_util_cargo_getMap);
	};

	private _uniform = uniform player;
	if !(_uniform isEqualTo "") then
	{
		
		_isBlacklisted = _uniform call ExileClient_util_loadout_isItemBlacklisted;
		if(_isBlacklisted) throw "Your Uniform is blacklisted!";

		{
			_isBlacklisted = (_x select 0) call ExileClient_util_loadout_isItemBlacklisted;
			if(_isBlacklisted) throw format ["Item %1 in your Uniform is blacklisted!", ((_x select 0) call ExileClient_util_gear_getDisplayNameByClassName)];
		}
		forEach ((getItemCargo uniformContainer player) call ExileClient_util_cargo_getMap);

		{
			_isBlacklisted = (_x select 0) call ExileClient_util_loadout_isItemBlacklisted;
			if(_isBlacklisted) throw format ["Magazine %1 in your Uniform is blacklisted!", ((_x select 0) call ExileClient_util_gear_getDisplayNameByClassName)];
		}
		forEach ((uniformContainer player) call ExileClient_util_cargo_getMagazineMap);

		{
			_isBlacklisted = (_x select 0) call ExileClient_util_loadout_isItemBlacklisted;
			if(_isBlacklisted) throw format ["Weapon %1 in your Uniform is blacklisted!", (_x call ExileClient_util_gear_getDisplayNameByClassName)];
		}
		forEach ((getWeaponCargo uniformContainer player) call ExileClient_util_cargo_getMap);
	};

	private _primaryWeapon = primaryWeapon player;
	if !(_primaryWeapon isEqualTo "") then
	{
		_isBlacklisted = _primaryWeapon call ExileClient_util_loadout_isItemBlacklisted;
		if (_isBlacklisted) throw "Your Primary Weapon is blacklisted!";

		{
			if(_x != "") then
			{
				_isBlacklisted = _x call ExileClient_util_loadout_isItemBlacklisted;
				if(_isBlacklisted) throw "An Attachment on your Primary Weapon is blacklisted!";
			};
		}
		forEach (primaryWeaponItems player);
	};

	private _secondaryWeapon = secondaryWeapon player;
	if !(_secondaryWeapon isEqualTo "") then
	{
		_isBlacklisted = _secondaryWeapon call ExileClient_util_loadout_isItemBlacklisted;
		if(_isBlacklisted) throw "Your Secondary Weapon is blacklisted";

		{
			if(_x != "") then
			{
				_isBlacklisted = _x call ExileClient_util_loadout_isItemBlacklisted;
				if(_isBlacklisted) throw "An Attachment on your Secondary Weapon is blacklisted!";
			};
		}
		forEach (secondaryWeaponItems player);
	};

	private _handgunWeapon = handgunWeapon player;
	if !(_handgunWeapon isEqualTo "") then
	{
		_isBlacklisted = _handgunWeapon call ExileClient_util_loadout_isItemBlacklisted;
		if(_isBlacklisted) throw "Your Handgun is blacklisted!";

		{
			if(_x != "") then
			{
				_isBlacklisted = _x call ExileClient_util_loadout_isItemBlacklisted;
				if(_isBlacklisted) throw "An Attachment on your Handgun is blacklisted!";
			};
		}
		forEach (handgunItems player);
	};

	private _binocular = binocular player;
	if !(_binocular isEqualTo "") then
	{
		if (_binocular call ExileClient_util_loadout_isItemBlacklisted) throw "Your Binoculars is blacklisted!";
	};

	private _headgear = headgear player;
	if !(_headgear isEqualTo "") then
	{
		if (_headgear call ExileClient_util_loadout_isItemBlacklisted) throw "Your Headgear is blacklisted!";
	};

	private _goggles = goggles player;
	if !(_goggles isEqualTo "") then
	{
		if (_goggles call ExileClient_util_loadout_isItemBlacklisted) throw "Your Goggles is blacklisted!";
	};
} 
catch 
{
	_result = _exception;
};

_result