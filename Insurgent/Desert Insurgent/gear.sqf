#include "core\gearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT", (optional) "GROUPNAME"] call FNC_GearScript; in the Init field of the unit
// Example:
// [this, "SL", "1'1"] call FNC_GearScript;\
//
// more info: https://github.com/dklollol/Olsen-Framework-Arma-3/wiki/gear.sqf

_unit call FNC_RemoveAllGear;

["ItemMap"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;

#define EASTUNIFORM \
[\
	"JO_KP_B", \
	"JO_KP_BP",\
	"JO_KP_BG", \
	"JO_KP_GR",\
	"JO_KP_WB", \
	"JO_Pashtun_Cream", \
	"JO_Pashtun_Grey", \
	"JO_Pashtun_Brown", \
	"JO_Pashtun_White", \
	"JO_Pashtun_Blue"\
] call FNC_addItemRandom; \
[\
	"JO_Pakol_LBrown", \
	"JO_Pakol_Grey",\
	"JO_Pakol_Cream", \
	"JO_Pakol_Blue",\
	"JO_Pakol_Brown", \
	"JO_Taqiyah_Brown", \
	"JO_Taqiyah_Cream", \
	"JO_Taqiyah_LBlue", \
	"JO_Taqiyah_P2", \
	"JO_Taqiyah_P", \
	"JO_Turban_Blue", \
	"JO_Turban_BG", \
	"JO_Turban_LBlue", \
	"JO_Turban_PW", \
	"JO_Turban_WR"\
] call FNC_addItemRandom; \
["V_BandollierB_blk"] call FNC_AddItem;

// Personal Aid Kid Recomended by ACE team for ACE Advanced Medical
#define PAK \
["ACE_fieldDressing", 4, "uniform"] call FNC_AddItem; \
["ACE_packingBandage", 3, "uniform"] call FNC_AddItem; \
["ACE_elasticBandage", 3, "uniform"] call FNC_AddItem; \
["ACE_quikclot", 3, "uniform"] call FNC_AddItem; \
["ACE_tourniquet", 1, "uniform"] call FNC_AddItem; \
["ACE_morphine", 1, "uniform"] call FNC_AddItem;

#define EASTGEAR(RIFLEAMMO, TRACERAMMO, FRAG, SMOKE) \
["ACE_EarPlugs", 1, "uniform"] call FNC_AddItem; \
["JS_30rnd_AK47", RIFLEAMMO] call FNC_AddItem; \
["JS_30rnd_AK47_T", TRACERAMMO] call FNC_AddItem; \
["rhs_mag_rgd5", FRAG] call FNC_AddItem; \
["rhs_mag_rgd2_white", SMOKE] call FNC_AddItem; 

switch (_type) do {

	case "ePL": {

		EASTUNIFORM;
		PAK;
		EASTGEAR(4, 2, 1, 4);

		["ACRE_PRC343"] call FNC_addItem;
		["Binocular"] call FNC_AddItem;
		["JS_RF_AK47"] call FNC_AddItem;

	};

	case "eSL": {

		EASTUNIFORM;
		PAK;
		EASTGEAR(4, 4, 1, 4);
		
		["ACRE_PRC343"] call FNC_addItem;
		["Binocular"] call FNC_AddItem;
		["JS_RF_AK47"] call FNC_AddItem;
		
	};

	case "eFTL": {

		EASTUNIFORM;
		["rhs_sidor"] call FNC_AddItem;

		PAK;
		EASTGEAR(6, 1, 2, 4);
		
		["ACRE_PRC343"] call FNC_addItem;
		["JS_RF_AK47GP"] call FNC_AddItem;

	};

	case "eGREN": {

		EASTUNIFORM;
		PAK;
		EASTGEAR(5, 0, 0, 0);
		
		["ACRE_PRC343"] call FNC_addItem;
		["JS_RF_AK47GP"] call FNC_AddItem;
		["tb_1Rnd_HE_GP25", 4, "vest"] call FNC_AddItem;


	};

	case "eRIFLE": {

		EASTUNIFORM;
		PAK;
		EASTGEAR(5, 1, 1, 0);

		["JS_RF_AK47"] call FNC_AddItem;

	};

	case "eAR": {

		EASTUNIFORM;
		PAK;
		EASTGEAR(0, 0, 1, 1);
		
		["JO_RF_RPK"] call FNC_AddItem;
		["JO_75rnd_RPK", 5] call FNC_AddItem;

	};

	case "eMED": {

		EASTUNIFORM;
		["tin_backpack_ugf_olive_medic"] call FNC_AddItem;
		clearAllItemsFromBackpack _unit;
		
		PAK;
		EASTGEAR(4, 0, 0, 2);
		
		["JS_RF_AK47"] call FNC_AddItem;


		["ACE_fieldDressing",15, "backpack"] call FNC_AddItem;
		["ACE_packingBandage",10, "backpack"] call FNC_AddItem;
		["ACE_elasticBandage",20, "backpack"] call FNC_AddItem;
		["ACE_tourniquet",5, "backpack"] call FNC_AddItem;
		["ACE_morphine",10, "backpack"] call FNC_AddItem;
		["ACE_epinephrine",10, "backpack"] call FNC_AddItem;
		["ACE_atropine",10, "backpack"] call FNC_AddItem;
		["ACE_salineIV_500", 6, "backpack"] call FNC_AddItem;
		["ACE_surgicalKit", 1, "backpack"] call FNC_AddItem;
		["ACE_personalAidKit",4, "backpack"] call FNC_AddItem;

	};

};