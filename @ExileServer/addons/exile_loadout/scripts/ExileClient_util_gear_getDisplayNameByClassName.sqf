/*
	ExileClient_util_gear_getDisplayNameByClassName
	
	Magn
	© 2019 Magn
	
	This work is property of Magn. You do not have permissions distribute any of this content
	without written permission from Magn
*/

private _className = _this;
private _displayName = (getText(configFile >> (_className call ExileClient_util_gear_getConfigNameByClassName) >> _className >> "displayName"));
_displayName