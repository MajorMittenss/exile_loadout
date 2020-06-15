/*
	ExileClient_util_loadout_isItemBlacklisted
	
	Magn
	© 2019 Magn
	
	This work is property of Magn. You do not have permissions distribute any of this content
	without written permission from Magn
*/

private _item = _this;
private _config = missionConfigFile >> "CfgLoadout";
private _blacklistedItemClasses = getArray(_config >> "blacklistedItemsClasses");
private _blacklistedCategories = getArray(_config >> "blacklistedTradeCategories");
private _exileTradeCategories = (missionConfigFile >> "CfgTraderCategories");
private _result = false;
try 
{

	if(_item in _blacklistedItemClasses) then
	{
		throw true;
	};

	{
		private _blacklistedCategory = _x;

		if(isClass(_exileTradeCategories >> _blacklistedCategory)) then
		{
			private _categoryItems = getArray(_exileTradeCategories >> _blacklistedCategory >> "items");
			if(_item in _categoryItems) then
			{
				throw true;
			};
			
		};
	}
	forEach _blacklistedCategories;
}
catch
{
	_result = _exception;
};
_result