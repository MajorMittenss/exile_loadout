/*
	ExileClient_loadout_util_calculatePrice

	Magn
	© 2019 Magn

	This work is property of Magn. You do not have permissions distribute any of this content
 	without written permission from Magn
*/

private _total = 0;
private _config = missionConfigFile >> "CfgExileArsenal";
private _loadout = [
	assignedItems player,
	backpack player,
	(getItemCargo backpackContainer player) call ExileClient_util_cargo_getMap,
	(backpackContainer player) call ExileClient_util_cargo_getMagazineMap,
	(getWeaponCargo backpackContainer player) call ExileClient_util_cargo_getMap,
	vest player,
	(getItemCargo vestContainer player) call ExileClient_util_cargo_getMap,
	(vestContainer player) call ExileClient_util_cargo_getMagazineMap,
	(getWeaponCargo vestContainer player) call ExileClient_util_cargo_getMap,
	uniform player,
	(getItemCargo uniformContainer player) call ExileClient_util_cargo_getMap,
	(uniformContainer player) call ExileClient_util_cargo_getMagazineMap,
	(getWeaponCargo uniformContainer player) call ExileClient_util_cargo_getMap,
	primaryWeapon player,
	primaryWeaponItems player,
	secondaryWeapon player,
	secondaryWeaponItems player,
	handgunWeapon player,
	handgunItems player,
	binocular player,
	headgear player,
	goggles player,
	player call ExileClient_util_inventory_getLoadedMagazinesMap
];

private _assignedItems = (_loadout select 0);
{
	if (_x != "") then
	{
		_total = _total + (getNumber(_config >> _x >> "price"));
	};
}
forEach _assignedItems;

private _backpack = (_loadout select 1);
if(_backpack != "") then
{
	_total = _total + (getNumber(_config >> _backpack >> "price"));

	private _backpackItems = (_loadout select 2);
	{
		_total = _total + (getNumber(_config >> (_x select 0) >> "price"));
	}
	forEach _backpackItems;

	private _backpackMagazines = (_loadout select 3);
	{
		_total = _total + (getNumber(_config >> (_x select 0) >> "price"));
	}
	forEach _backpackMagazines;

	private _backpackWeapons = (_loadout select 4);
	{
		_total = _total + (getNumber(_config >> (_x select 0) >> "price"));
	}
	forEach _backpackWeapons;
};

private _vest = (_loadout select 5);
if(_vest != "") then
{
	_total = _total + (getNumber(_config >> _vest >> "price"));

	private _vestItems = (_loadout select 6);
	{
		_total = _total + (getNumber(_config >> (_x select 0) >> "price"));
	}
	forEach _vestItems;

	private _vestMagazines = (_loadout select 7);
	{
		_total = _total + (getNumber(_config >> (_x select 0) >> "price"));
	}
	forEach _vestMagazines;

	private _vestWeapons = (_loadout select 8);
	{
		_total = _total + (getNumber(_config >> (_x select 0) >> "price"));
	}
	forEach _vestWeapons;
};

private _uniform = (_loadout select 9);
if(_uniform != "") then
{
	_total = _total + (getNumber(_config >> _uniform >> "price"));

	private _uniformItems = (_loadout select 10);
	{
		_total = _total + (getNumber(_config >> (_x select 0) >> "price"));
	}
	forEach _uniformItems;

	private _uniformMagazines = (_loadout select 11);
	{
		_total = _total + (getNumber(_config >> (_x select 0) >> "price"));
	}
	forEach _uniformMagazines;

	private _uniformWeapon = (_loadout select 12);
	{
		_total = _total + (getNumber(_config >> (_x select 0) >> "price"));
	}
	forEach _uniformWeapon;
};

private _primaryWeapon = (_loadout select 13);
if(_primaryWeapon != "") then
{
	_total = _total + (getNumber(_config >> _primaryWeapon >> "price"));

	private _primaryWeaponItems = (_loadout select 14);
	{
		if (_x != "") then
		{
			_total = _total + (getNumber(_config >> _x >> "price"));
		}
	}
	forEach _primaryWeaponItems;
};

private _secondaryWeapon = (_loadout select 15);
if(_secondaryWeapon != "") then
{
	_total = _total + (getNumber(_config >> _secondaryWeapon >> "price"));

	private _secondaryWeaponItems = (_loadout select 16);
	{
		if(_x != "") then
		{
			_total = _total + (getNumber(_config >> _x >> "price"));
		};
	}
	forEach _secondaryWeaponItems;
};

private _handgun = (_loadout select 17);
if(_handgun != "") then
{
	_total = _total + (getNumber(_config >> _handgun >> "price"));

	private _handgunItems = (_loadout select 18);
	{
		if(_x != "") then
		{
			_total = _total + (getNumber(_config >> _x >> "price"));
		};
	}
	forEach _handgunItems;
};

private _binocular = (_loadout select 19);
if (_binocular != "") then
{
	_total = _total + (getNumber(_config >> _binocular >> "price"));
};

private _headgear = (_loadout select 20);
if(_headgear != "") then
{
	_total = _total + (getNumber(_config >> _headgear >> "price"));
};

private _goggles = (_loadout select 21);
if(_goggles != "") then
{
	_total = _total + (getNumber(_config >> _goggles >> "price"));
};

private _loadedMagazines = (_loadout select 22);
{
	_total = _total + (getNumber(_config >> (_x select 1) >> "price"));
}
forEach _loadedMagazines;
_total