/*
	ExileClient_gui_loadout_dialog_show

	Magn
	© 2019 Magn

	This work is property of Magn. You do not have permissions distribute any of this content
 	without written permission from Magn
*/

private ["_display"];
disableSerialization;

createDialog "RscLoadout";
waitUntil {
	_display = findDisplay 33000;
	!isNull _display
};
[] call ExileClient_gui_loadout_event_onLoad;
_display displayAddEventHandler ["Unload", "[] call ExileClient_gui_loadout_event_onUnload; uiNamespace setVariable ['RscLoadout', displayNull]"];

private _listbox = _display displayCtrl 2;
_listbox ctrlSetEventHandler ["LBDblClick", "_this spawn ExileClient_gui_loadout_event_onDeleteLoadout"];
_listbox ctrlSetEventHandler ["LBSelChanged", "_this call ExileClient_gui_loadout_event_onLoadoutChanged"];
ctrlSetFocus _listbox;
private _saveButton = _display displayCtrl 4;
_saveButton ctrlSetEventHandler ["ButtonClick", "_this call ExileClient_gui_loadout_event_onSaveLoadout"];
private _retrieveButton = _display displayCtrl 5;
_retrieveButton ctrlSetEventHandler ["ButtonClick", "_this spawn ExileClient_gui_loadout_event_onRetrieveLoadout"];
_retrieveButton ctrlEnable false;

call ExileClient_gui_loadout_updateList;

["Double click a loadout to delete."] spawn ExileClient_gui_baguette_show;
true

/* #Jegoni
$[
	1.063,
	["RscLoadout",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1003,"RscLoadoutCancelBackground",[1,"",["0.0307812 * safezoneW + safezoneX","0.863 * safezoneH + safezoneY","0.180469 * safezoneW","0.055 * safezoneH"],[-1,-1,-1,-1],[0.05,0.05,0.05,0.7],[-1,-1,-1,-1],"","-1"],["idc=-1;"]],
	[1002,"RscLoadoutListBackground",[1,"",["0.0307807 * safezoneW + safezoneX","0.0710001 * safezoneH + safezoneY","0.180469 * safezoneW","0.748 * safezoneH"],[-1,-1,-1,-1],[0.05,0.05,0.05,0.7],[-1,-1,-1,-1],"","-1"],["idc=-1;"]],
	[2700,"RscLoadoutCloseButton",[1,"Close",["0.0359375 * safezoneW + safezoneX","0.874 * safezoneH + safezoneY","0.170156 * safezoneW","0.033 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],["onButtonClick = |closeDialog 1|;","style = 0+2;"]],
	[1500,"RscLoadoutList",[1,"",["0.0359375 * safezoneW + safezoneX","0.082 * safezoneH + safezoneY","0.170156 * safezoneW","0.638 * safezoneH"],[0.6,0.6,0.6,1],[0,0,0,0.3],[-1,-1,-1,-1],"","-1"],["colorDisabled[]={1,1,1,0.25};","style=16;","canDrag=0;","itemSpacing=0.001;","colorPictureSelected[]={1,1,1,1};","colorPicture[]={1,1,1,1};","colorPictureDisabled[]={1,1,1,0.25};","colorPictureRight[]={1,1,1,1};","colorPictureRightDisabled[]={1,1,1,0.25};","onLBDblClick = |_this call ExileClient_gui_loadout_event_onDeleteLoadout|;","onLBSelChanged = |_this call ExileClient_gui_loadout_event_onLoadoutChanged|;","colorSelect[] = {0.949,0.949,0.949,1};","rowHeight= 2 ~ ((((safezoneW / safezoneH) min 1.2) / 1.2) / 29);","idc=2;"]],
	[1400,"RscLoadoutNameInput",[1,"",["0.0359375 * safezoneW + safezoneX","0.731 * safezoneH + safezoneY","0.170156 * safezoneW","0.033 * safezoneH"],[0.949,0.949,0.949,1],[0.05,0.05,0.05,0.7],[-1,-1,-1,-1],"","-1"],["idc=3;"]],
	[2600,"RscLoadoutSaveButton",[1,"Save",["0.0359375 * safezoneW + safezoneX","0.775 * safezoneH + safezoneY","0.0825 * safezoneW","0.033 * safezoneH"],[-1,-1,-1,-1],[0,0,0,0.8],[-1,-1,-1,-1],"","-1"],["onButtonClick = |_this call ExileClient_gui_loadout_event_onSaveLoadout|;","style = 0+2;","idc=4;"]],
	[2601,"RscLoadoutRetrieveButton",[1,"Retrieve",["0.123594 * safezoneW + safezoneX","0.775 * safezoneH + safezoneY","0.0825 * safezoneW","0.033 * safezoneH"],[-1,-1,-1,-1],[0,0,0,0.8],[-1,-1,-1,-1],"","-1"],["onButtonClick = |_this call ExileClient_gui_loadout_event_onRetrieveLoadout|;","idc=5;"]],
	[1001,"RscLoadoutStoredCurrentCation",[1,"1/10",["0.149375 * safezoneW + safezoneX","0.049 * safezoneH + safezoneY","0.061875 * safezoneW","0.022 * safezoneH"],[0.949,0.949,0.949,1],[0.1,0.1,0.1,1],[-1,-1,-1,-1],"","-1"],["style = 1;","idc = 1;"]],
	[1000,"RscLoadoutStoredCation",[1,"Stored Loadouts",["0.0307812 * safezoneW + safezoneX","0.049 * safezoneH + safezoneY","0.118594 * safezoneW","0.022 * safezoneH"],[0.949,0.949,0.949,1],[0.1,0.1,0.1,1],[-1,-1,-1,-1],"","-1"],["idc=-1;"]]
]
*/