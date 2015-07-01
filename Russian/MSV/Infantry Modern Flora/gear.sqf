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
["rhs_uniform_flora"] call FNC_AddItem; \
["rhs_6b23_rifleman"] call FNC_AddItem; \
["rhs_6b27m_bala"] call FNC_AddItem; \
["rhs_assault_umbts"] call FNC_AddItem; \
clearAllItemsFromBackpack _unit; 

// Personal Aid Kid Recomended by ACE team for ACE Advanced Medical
#define PAK \
["ACE_fieldDressing", 4, "uniform"] call FNC_AddItem; \
["ACE_packingBandage", 3, "uniform"] call FNC_AddItem; \
["ACE_elasticBandage", 3, "uniform"] call FNC_AddItem; \
["ACE_quikclot", 3, "uniform"] call FNC_AddItem; \
["ACE_tourniquet", 1, "uniform"] call FNC_AddItem; \
["ACE_morphine", 1, "uniform"] call FNC_AddItem;

#define EASTGEAR(RIFLEAMMO, TRACERAMMO, HGAMMO, FRAG, WHITE) \
["ACRE_PRC343", 1, "uniform"] call FNC_AddItem; \
["ACE_EarPlugs", 1, "uniform"] call FNC_AddItem; \
["ACE_MapTools", 1, "uniform"] call FNC_AddItem; \
["rhs_30Rnd_545x39_AK", RIFLEAMMO] call FNC_AddItem; \
["rhs_30Rnd_545x39_AK_green", TRACERAMMO] call FNC_AddItem; \
["rhs_mag_9x19_17", HGAMMO] call FNC_AddItem; \
["rhs_mag_rgd5", FRAG] call FNC_AddItem; \
["rhs_mag_rdg2_white", WHITE] call FNC_AddItem;

switch (_type) do {

	case "PL": {

		EASTUNIFORM;
		removeVest _unit;
		["rhs_6b23_6sh92_radio"] call FNC_AddItem;

		PAK;
		EASTGEAR(4, 3, 2, 2, 2);

		["ACE_Vector"] call FNC_AddItem;
		["ACRE_PRC148"] call FNC_AddItem;

		["rhs_weap_ak74m_camo"] call FNC_AddItem;
			["rhs_acc_pkas"] call FNC_AddItem;
			["rhs_acc_dtk1"] call FNC_AddItem;

		["rhs_weap_pya"] call FNC_AddItem;

	};

	case "SL": {

		EASTUNIFORM;
		removeVest _unit;
		["rhs_6b23_6sh92_radio"] call FNC_AddItem;

		PAK;
		EASTGEAR(6, 3, 2, 2, 2);

		["Binocular"] call FNC_AddItem;
		["ACRE_PRC148"] call FNC_AddItem;

		["rhs_weap_ak74m_camo"] call FNC_AddItem;
			["rhs_acc_dtk1"] call FNC_AddItem;

		["rhs_weap_pya"] call FNC_AddItem;

	};

	case "FTL": {

		EASTUNIFORM;
		removeVest _unit;
		["rhs_6b23_6sh92_vog_headset"] call FNC_AddItem;

		PAK;
		EASTGEAR(6, 2, 0, 2, 1);

		["Binocular"] call FNC_AddItem;

		["rhs_weap_ak74m_gp25"] call FNC_AddItem;
			["rhs_acc_dtk"] call FNC_AddItem;

	};

	case "GREN": {

		EASTUNIFORM;
		removeVest _unit;
		["rhs_6b23"] call FNC_AddItem;

		PAK;
		EASTGEAR(6, 1, 0, 2, 1);

		["rhs_weap_ak74m_gp25"] call FNC_AddItem;
			["rhs_acc_dtk"] call FNC_AddItem;

	};

	case "RIFLE": {
		
		EASTUNIFORM;
		removeVest _unit;
		["rhs_6b23"] call FNC_AddItem;

		PAK;
		EASTGEAR(7, 1, 0, 1, 1);

		["rhs_weap_ak74m_camo"] call FNC_AddItem;
			["rhs_acc_dtk1"] call FNC_AddItem;

		["rhs_weap_rpg26"] call FNC_AddItem;
	};

	case "RPG": {
		
		EASTUNIFORM;
		removeVest _unit;
		["rhs_6b23"] call FNC_AddItem;

		PAK;
		EASTGEAR(7, 1, 0, 1, 1);

		["rhs_weap_ak74m_camo"] call FNC_AddItem;
			["rhs_acc_dtk1"] call FNC_AddItem;

		["rhs_rpg7_PG7VL_mag", 3 "backpack"] call FNC_AddItem;

		["rhs_weap_rpg7"] call FNC_AddItem;
			["rhs_acc_pgo7v"] call FNC_AddItem;
	};

	case "aRPG": {
		
		EASTUNIFORM;
		removeVest _unit;
		["rhs_6b23"] call FNC_AddItem;

		PAK;
		EASTGEAR(7, 1, 0, 1, 1);

		["rhs_weap_ak74m_camo"] call FNC_AddItem;
			["rhs_acc_dtk1"] call FNC_AddItem;

		["rhs_rpg7_PG7VL_mag", 3 "backpack"] call FNC_AddItem;
	};

	case "AR": {

		EASTUNIFORM;
		removeVest _unit;
		["rhs_6b23_6sh92"] call FNC_AddItem;

		PAK;
		EASTGEAR(0, 0, 0, 1, 1);

		["rhs_100Rnd_762x54mmR", 4] call FNC_AddItem;

		["rhs_weap_pkm"] call FNC_AddItem;

	};

	case "AAR": {
		
		EASTUNIFORM;
		removeVest _unit;
		["rhs_6b23"] call FNC_AddItem;

		PAK;
		EASTGEAR(7, 1, 0, 1, 1);

		["rhs_weap_ak74m_camo"] call FNC_AddItem;
			["rhs_acc_dtk1"] call FNC_AddItem;

		["rhs_100Rnd_762x54mmR", 3, "backpack"] call FNC_AddItem;
	};

	case "MED": {

		EASTUNIFORM;
		removeVest _unit;
		["rhs_6b23_medic"] call FNC_AddItem;
		removeBackpack _unit;
		["tin_backpack_ugf_olive_medic"] call FNC_AddItem;
		clearAllItemsFromBackpack _unit;
		
		PAK;
		EASTGEAR(8, 0, 0, 2, 2);

		
		["rhs_weap_ak74m_camo"] call FNC_AddItem;
			["rhs_acc_dtk1"] call FNC_AddItem;

		["ACE_fieldDressing",15, "backpack"] call FNC_AddItem;
		["ACE_packingBandage",10, "backpack"] call FNC_AddItem;
		["ACE_elasticBandage",20, "backpack"] call FNC_AddItem;
		["ACE_tourniquet",5, "backpack"] call FNC_AddItem;
		["ACE_morphine",10, "backpack"] call FNC_AddItem;
		["ACE_epinephrine",10, "backpack"] call FNC_AddItem;
		["ACE_atropine",10, "backpack"] call FNC_AddItem;
		["ACE_salineIV_500", 6, "backpack"] call FNC_AddItem;
		["ACE_surgicalKit", 1, "backpack"] call FNC_AddItem;
		["ACE_personalAidKit", 2, "backpack"] call FNC_AddItem;

	};

};