/*
	Loadout Dialog for exile_loadout

	Magn
	© 2019 Magn

	This work is property of Magn. You do not have permissions distribute any of this content
 	without written permission from Magn
*/

class RscLoadoutShortcutButton
{
	idc=-1;
	style=0;
	default=0;
	shadow=1;
	w=0.183825;
	h="(		(		((safezoneW / safezoneH) min 1.2) / 1.2) / 20)";
	color[]={1,1,1,1};
	colorFocused[]={1,1,1,1};
	color2[]={0.94999999,0.94999999,0.94999999,1};
	colorDisabled[]={1,1,1,0.25};
	colorBackground[]=
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
		1
	};
	colorBackgroundFocused[]=
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
		1
	};
	colorBackground2[]={1,1,1,1};
	textSecondary="";
	colorSecondary[]={1,1,1,1};
	colorFocusedSecondary[]={1,1,1,1};
	color2Secondary[]={0.94999999,0.94999999,0.94999999,1};
	colorDisabledSecondary[]={1,1,1,0.25};
	sizeExSecondary="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	fontSecondary="RobotoCondensed";
	animTextureDefault="\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureNormal="\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureDisabled="\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureOver="\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
	animTextureFocused="\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
	animTexturePressed="\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
	periodFocus=1.2;
	periodOver=0.80000001;
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	class HitZone
	{
		left=0;
		top=0;
		right=0;
		bottom=0;
	};
	class ShortcutPos
	{
		left=0;
		top="(			(		(		((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - 		(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		w="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		h="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	};
	class TextPos
	{
		left="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		top="(			(		(		((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - 		(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right=0.0049999999;
		bottom=0;
	};
	period=0.40000001;
	font="RobotoCondensed";
	size="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	text="";
	url="";
	soundEnter[]=
	{
		"\A3\ui_f\data\sound\RscButton\soundEnter",
		0.090000004,
		1
	};
	soundPush[]=
	{
		"\A3\ui_f\data\sound\RscButton\soundPush",
		0.090000004,
		1
	};
	soundClick[]=
	{
		"\A3\ui_f\data\sound\RscButton\soundClick",
		0.090000004,
		1
	};
	soundEscape[]=
	{
		"\A3\ui_f\data\sound\RscButton\soundEscape",
		0.090000004,
		1
	};
	action="";
	class Attributes
	{
		font="RobotoCondensed";
		color="#E5E5E5";
		align="left";
		shadow="true";
	};
	class AttributesImage
	{
		font="RobotoCondensed";
		color="#E5E5E5";
		align="left";
	};
};

class RscLoadoutButtonMenu: RscLoadoutShortcutButton
{
	idc=-1;
	type=16;
	style="0x02 + 0xC0";
	default=0;
	shadow=0;
	x=0;
	y=0;
	w=0.095588997;
	h=0.039216001;
	animTextureNormal="#(argb,8,8,3)color(1,1,1,1)";
	animTextureDisabled="#(argb,8,8,3)color(1,1,1,1)";
	animTextureOver="#(argb,8,8,3)color(1,1,1,1)";
	animTextureFocused="#(argb,8,8,3)color(1,1,1,1)";
	animTexturePressed="#(argb,8,8,3)color(1,1,1,1)";
	animTextureDefault="#(argb,8,8,3)color(1,1,1,1)";
	colorBackground[]={0,0,0,0.80000001};
	colorBackgroundFocused[]={1,1,1,1};
	colorBackground2[]={0.75,0.75,0.75,1};
	color[]={1,1,1,1};
	colorFocused[]={0,0,0,1};
	color2[]={0,0,0,1};
	colorText[]={1,1,1,1};
	colorDisabled[]={1,1,1,0.25};
	textSecondary="";
	colorSecondary[]={1,1,1,1};
	colorFocusedSecondary[]={0,0,0,1};
	color2Secondary[]={0,0,0,1};
	colorDisabledSecondary[]={1,1,1,0.25};
	sizeExSecondary="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	fontSecondary="PuristaLight";
	period=1.2;
	periodFocus=1.2;
	periodOver=1.2;
	size="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	tooltipColorText[]={1,1,1,1};
	tooltipColorBox[]={1,1,1,1};
	tooltipColorShade[]={0,0,0,0.64999998};
	class TextPos
	{
		left="0.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
		top="(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - 		(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right=0.0049999999;
		bottom=0;
	};
	class Attributes
	{
		font="PuristaLight";
		color="#E5E5E5";
		align="left";
		shadow="false";
	};
	class ShortcutPos
	{
		left="5.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
		top=0;
		w="1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
		h="1 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	};
	soundEnter[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",
		0.090000004,
		1
	};
	soundPush[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundPush",
		0.090000004,
		1
	};
	soundClick[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundClick",
		0.090000004,
		1
	};
	soundEscape[]=
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",
		0.090000004,
		1
	};
};

class RscLoadoutText
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = 
	{
		0,
		0,
		0,
		0
	};
	colorText[] = 
	{
		1,
		1,
		1,
		1
	};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 1;
	colorShadow[] = 
	{
		0,
		0,
		0,
		0.5
	};
	font = "RobotoCondensed";
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	linespacing = 1;
	tooltipColorText[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] = 
	{
		0,
		0,
		0,
		0.65
	};
};

class RscLoadoutButtonMenuCancel: RscLoadoutButtonMenu
{
	idc = 2;
	shortcuts[] = 
	{
		"0x00050000 + 1"
	};
	text = "Cancel";
};

class RscLoadoutEdit
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 2;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] = 
	{
		0,
		0,
		0,
		0
	};
	colorText[] = 
	{
		0.95,
		0.95,
		0.95,
		1
	};
	colorDisabled[] = 
	{
		1,
		1,
		1,
		0.25
	};
	colorSelection[] = 
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
		1
	};
	autocomplete = "";
	text = "";
	size = 0.2;
	style = "0x00 + 0x40";
	font = "RobotoCondensed";
	shadow = 2;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	canModify = 1;
	tooltipColorText[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] = 
	{
		0,
		0,
		0,
		0.65
	};
};

class RscLoadoutButtonMenuOK: RscLoadoutButtonMenu
{
	idc = 1;
	shortcuts[] = 
	{
		"0x00050000 + 0",
		28,
		57,
		156
	};
	default = 1;
	text = "OK";
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenuOK\soundPush",
		0.09,
		1
	};
};

class RscLoadoutListBox
{
	type = 5;
	idc = -1;
	x = -0.64999981;
	y = -0.30050499;
	w = 0.40075759;
	h = 1.20025262;
	style = 16;
	colorBackground[] = {0,0,0,0.3};
	colorDisabled[] = {1,1,1,0.25};
	colorSelect[] = {0.949,0.949,0.949,1};
	colorText[] = {0.6,0.6,0.6,1};
	font = "PuristaMedium";
	maxHistoryDelay = 0;
	rowHeight = 2 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 32);
	sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 26) * 1);
	soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
	class ListScrollBar
	{
		color[] = {1,1,1,1};
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
	};
};

class RscLoadoutItemListBox: RscLoadoutListBox
{
	sizeEx="0.8 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	sizeEx2="0.8 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	rowHeight="2 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	canDrag=0;
	itemSpacing=0.001;
	period=0;
	shadow=0;
	maxHistoryDelay=1;
	fade=0;
	deletable=0;
	type=5;
	style=16;
	colorBackground[]={0,0,0,0.30000001};
	colorDisabled[]={1,1,1,0.25};
	colorPicture[]={1,1,1,1};
	colorPictureDisabled[]={1,1,1,0.25};
	colorPictureRight[]={1,1,1,1};
	colorPictureRightDisabled[]={1,1,1,0.25};
	colorPictureSelected[]={1,1,1,1};
	colorScrollbar[]={1,0,0,0};
	colorSelect2[]={0,0,0,1};
	colorSelect2Right[]={0,0,0,1};
	colorSelectBackground2[]={1,1,1,0.5};
	colorSelectBackground[]={0.94999999,0.94999999,0.94999999,1};
	colorSelectRight[]={0,0,0,1};
	colorShadow[]={0,0,0,0.5};
	colorText[]={1,1,1,1};
	colorTextRight[]={1,1,1,1};
	disabledCtrlColor[]={1,1,1,0.5};
	itemBackground[]={1,1,1,0.1};
	tooltipColorBox[]={1,1,1,1};
	tooltipColorShade[]={0,0,0,0.64999998};
	tooltipColorText[]={1,1,1,1};
};

class RscLoadout
{
	idd = 33000;
	onLoad="uiNamespace setVariable ['RscLoadout', _this select 0]";
	//onUnload="[] call ExileClient_gui_loadout_event_onUnload; uiNamespace setVariable ['RscLoadout', displayNull]";
	
	class ControlsBackground
	{

		class RscLoadoutCancelBackground: RscLoadoutText
		{
			idc=-1;

			x = 0.0307812 * safezoneW + safezoneX;
			y = 0.863 * safezoneH + safezoneY;
			w = 0.180469 * safezoneW;
			h = 0.055 * safezoneH;
			colorBackground[] = {0.05,0.05,0.05,0.7};
		};
		class RscLoadoutListBackground: RscLoadoutText
		{
			idc=-1;

			x = 0.0307807 * safezoneW + safezoneX;
			y = 0.0710001 * safezoneH + safezoneY;
			w = 0.180469 * safezoneW;
			h = 0.748 * safezoneH;
			colorBackground[] = {0.05,0.05,0.05,0.7};
		};
		class RscLoadoutStoredCurrentCation: RscLoadoutText
		{
			style = 1;
			idc = 1;

			text = "1/10"; //--- ToDo: Localize;
			x = 0.149375 * safezoneW + safezoneX;
			y = 0.049 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {0.949,0.949,0.949,1};
			colorBackground[] = {0.1,0.1,0.1,1};
		};
		class RscLoadoutStoredCation: RscLoadoutText
		{
			idc=-1;
			style = 0;

			text = "Stored Loadouts"; //--- ToDo: Localize;
			x = 0.0307812 * safezoneW + safezoneX;
			y = 0.049 * safezoneH + safezoneY;
			w = 0.118594 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {0.949,0.949,0.949,1};
			colorBackground[] = {0.1,0.1,0.1,1};
		};
		
	};
	class Controls
	{
		class RscLoadoutCloseButton: RscLoadoutButtonMenuCancel
		{
			onButtonClick = "closeDialog 1";
			style = 2;
			idc=-1;

			text = "Close"; //--- ToDo: Localize;
			x = 0.0359375 * safezoneW + safezoneX;
			y = 0.874 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.033 * safezoneH;
			class Attributes: Attributes
			{
				align="center";
				valign="middle";
			};
		};
		class RscLoadoutList: RscLoadoutItemListBox
		{
			idc=2;

			x = 0.0359375 * safezoneW + safezoneX;
			y = 0.082 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.638 * safezoneH;
			colorBackground[]={1,1,1,0.1};
		};
		class RscLoadoutNameInput: RscLoadoutEdit
		{
			idc=3;

			x = 0.0359375 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.033 * safezoneH;
			colorText[] = {0.949,0.949,0.949,1};
			colorBackground[] = {0.05,0.05,0.05,0.7};
		};
		class RscLoadoutSaveButton: RscLoadoutButtonMenuOK
		{
			idc=4;

			text = "Save"; //--- ToDo: Localize;
			x = 0.0359375 * safezoneW + safezoneX;
			y = 0.775 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
			class Attributes: Attributes
			{
				align="center";
				valign="middle";
			};
		};
		class RscLoadoutRetrieveButton: RscLoadoutButtonMenuOK
		{
			idc=5;

			text = "Retrieve"; //--- ToDo: Localize;
			x = 0.123594 * safezoneW + safezoneX;
			y = 0.775 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
			class Attributes: Attributes
			{
				align="center";
				valign="middle";
			};
		};

	};
	
};