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

#define WESTUNIFORM \
["rhs_uniform_cu_ocp"] call FNC_AddItem; \
["rhsusf_iotv_ocp_rifleman"] call FNC_AddItem; \
["rhsusf_ach_helmet_ocp"] call FNC_AddItem; \
["rhsusf_assault_eagleaiii_ocp"] call FNC_AddItem; \
clearAllItemsFromBackpack _unit; 

// Personal Aid Kid Recomended by ACE team for ACE Advanced Medical
#define PAK \
["ACE_fieldDressing", 4, "uniform"] call FNC_AddItem; \
["ACE_packingBandage", 3, "uniform"] call FNC_AddItem; \
["ACE_elasticBandage", 3, "uniform"] call FNC_AddItem; \
["ACE_quikclot", 3, "uniform"] call FNC_AddItem; \
["ACE_tourniquet", 1, "uniform"] call FNC_AddItem; \
["ACE_morphine", 1, "uniform"] call FNC_AddItem;

#define WESTGEAR(RIFLEAMMO, TRACERAMMO, HGAMMO, FRAG, WHITE, GREEN) \
["ACRE_PRC343", 1, "uniform"] call FNC_AddItem; \
["ACE_EarPlugs", 1, "uniform"] call FNC_AddItem; \
["ACE_MapTools", 1, "uniform"] call FNC_AddItem; \
["rhs_mag_30Rnd_556x45_M855A1_Stanag", RIFLEAMMO] call FNC_AddItem; \
["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", TRACERAMMO] call FNC_AddItem; \
["16Rnd_9x21_Mag", HGAMMO] call FNC_AddItem; \
["rhs_mag_m67", FRAG] call FNC_AddItem; \
["rhs_mag_an_m8hc", WHITE] call FNC_AddItem; \
["rhs_mag_m18_green", GREEN] call FNC_AddItem; 

switch (_type) do {

	case "PL": {

		WESTUNIFORM;
		removeVest _unit;
		["rhsusf_iotv_ocp_squadleader"] call FNC_AddItem;

		PAK;
		WESTGEAR(4, 3, 2, 2, 1, 1);

		["ACE_Vector"] call FNC_AddItem;
		["ACRE_PRC148"] call FNC_AddItem;

		["rhs_weap_m4a1_carryhandle_grip2"] call FNC_AddItem;
			["rhsusf_acc_ACOG"] call FNC_AddItem;
			["rhsusf_acc_anpeq15"] call FNC_AddItem;

		["tb_p_g17_T"] call FNC_AddItem;
			["tb_acc_m6x_LLM"] call FNC_AddItem;

	};

	case "SL": {

		WESTUNIFORM;
		removeVest _unit;
		["rhsusf_iotv_ocp_squadleader"] call FNC_AddItem;

		PAK;
		WESTGEAR(5, 2, 2, 2, 1, 1);

		["Binocular"] call FNC_AddItem;
		["ACRE_PRC148"] call FNC_AddItem;

		["rhs_weap_m4a1_carryhandle_grip2"] call FNC_AddItem;
			["rhsusf_acc_ACOG"] call FNC_AddItem;
			["rhsusf_acc_anpeq15"] call FNC_AddItem;

		["tb_p_g17_T"] call FNC_AddItem;
			["tb_acc_m6x_LLM"] call FNC_AddItem;
		
	};

	case "FTL": {

		WESTUNIFORM;
		removeVest _unit;
		["rhsusf_iotv_ocp_teamleader"] call FNC_AddItem;

		PAK;
		WESTGEAR(5, 2, 0, 2, 2, 0);


		["Binocular"] call FNC_AddItem;
		["1Rnd_HE_Grenade_shell", 10] call FNC_AddItem;
		["rhs_mag_m715_Green", 2] call FNC_AddItem;

		["rhs_weap_m4a1_carryhandle_m203"] call FNC_AddItem; 
			["rhsusf_acc_compm4"] call FNC_AddItem;

	};

	case "GREN": {

		WESTUNIFORM;
		removeVest _unit;
		["rhsusf_iotv_ocp_Grenadier"] call FNC_AddItem;

		PAK;
		WESTGEAR(7, 0, 0, 2, 2, 0);

		["1Rnd_HE_Grenade_shell", 10] call FNC_AddItem;
		["rhs_mag_m715_Green", 2] call FNC_AddItem;

		["rhs_weap_m4a1_carryhandle_m203"] call FNC_AddItem; 
			["rhsusf_acc_compm4"] call FNC_AddItem;

	};

	case "RIFLE": {
		
		WESTUNIFORM;

		PAK;
		WESTGEAR(8, 0, 0, 2, 2, 0);

		["rhsusf_100Rnd_556x45_soft_pouch", 1] call FNC_AddItem;

		["rhs_weap_m4a1_carryhandle_grip2"] call FNC_AddItem;
			["rhsusf_acc_compm4"] call FNC_AddItem;

		["rhs_weap_M136"] call FNC_AddItem;

	};

	case "AR": {

		WESTUNIFORM;
		removeVest _unit;
		["rhsusf_iotv_ocp_SAW"] call FNC_AddItem;

		WESTGEAR(0, 0, 2, 2, 2, 0);

		["rhsusf_100Rnd_556x45_soft_pouch", 3] call FNC_AddItem;

		["rhs_weap_m249_pip"] call FNC_AddItem;
			["rhsusf_acc_anpeq15"] call FNC_AddItem;

		["tb_p_g17_T"] call FNC_AddItem;
			["tb_acc_m6x_LLM"] call FNC_AddItem;

	};

	case "MED": {

		WESTUNIFORM;
		removeVest _unit;
		["rhsusf_iotv_ocp_medic"] call FNC_AddItem;
		removeBackpack _unit;
		["rhsusf_assault_eagleaiii_ocp_medic"] call FNC_AddItem;
		clearAllItemsFromBackpack _unit;
		
		PAK;
		WESTGEAR(8, 0, 0, 2, 2, 0);

		
		["rhs_weap_m4a1_carryhandle_grip2"] call FNC_AddItem;

		["ACE_fieldDressing",15] call FNC_AddItem;
		["ACE_packingBandage",10] call FNC_AddItem;
		["ACE_elasticBandage",20] call FNC_AddItem;
		["ACE_tourniquet",5] call FNC_AddItem;
		["ACE_morphine",10] call FNC_AddItem;
		["ACE_epinephrine",10] call FNC_AddItem;
		["ACE_atropine",10] call FNC_AddItem;
		["ACE_salineIV_500", 6] call FNC_AddItem;
		["ACE_surgicalKit", 1] call FNC_AddItem;
		["ACE_personalAidKit",4] call FNC_AddItem;

	};

};