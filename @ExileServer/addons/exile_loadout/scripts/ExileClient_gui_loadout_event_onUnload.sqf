/*
	ExileClient_gui_loadout_event_onUnload

	Magn
	© 2019 Magn

	This work is property of Magn. You do not have permissions distribute any of this content
 	without written permission from Magn
*/

disableSerialization;
ExileClientMoonLight setLightBrightness 0.75;
call ExileClient_gui_modelBox_destroy;
true call ExileClient_gui_hud_toggle;
uiNamespace setVariable ['RscLoadout', displayNull];