#include "core\gearCore.sqf" //DO NOT REMOVE

_unit call FNC_RemoveAllGear;
["ItemMap"] call FNC_AddItem;
["ItemWatch"] call FNC_AddItem;
["ItemCompass"] call FNC_AddItem;

#define WESTUNIFORM \
["U_B_CombatUniform_mcam"] call FNC_AddItem; \
["rhsusf_iotv_ocp_rifleman"] call FNC_AddItem; \
["rhsusf_ach_helmet_ocp"] call FNC_AddItem; \
["rhsusf_assault_eagleaiii_ocp"] call FNC_AddItem;

#define PAK \ // Personal Aid Kid Recomended by ACE team for ACE Advanced Medical
["ACE_fieldDressing", 4, "uniform"] call FNC_AddItem; \
["ACE_packingBandage", 3, "uniform"] call FNC_AddItem; \
["ACE_elasticBandage", 3, "uniform"] call FNC_AddItem; \
["ACE_quikclot", 3, "uniform"] call FNC_AddItem; \
["ACE_tourniquet", 1, "uniform"] call FNC_AddItem; \
["ACE_morphine", 1, "uniform"] call FNC_AddItem;

#define WESTGEAR(RIFLEAMMO, TRACER, FRAG, WHITE, GREEN) \
["ACRE_PRC343", 1, "uniform"] call FNC_AddItem; \
["ACE_EarPlugs", 1, "uniform"] call FNC_AddItem; \
["ACE_MapTools", 1, "uniform"] call FNC_AddItem; \
["30Rnd_65x39_caseless_mag", RIFLEAMMO] call FNC_AddItem; \
["30Rnd_65x39_caseless_mag_Tracer", TRACER] call FNC_AddItem; \
["HandGrenade", FRAG] call FNC_AddItem; \
["SmokeShell", WHITE] call FNC_AddItem; \
["SmokeShellGreen", GREEN] call FNC_AddItem; 

switch (_type) do {

	case "PL": {

		WESTUNIFORM;
		PAK;
		WESTGEAR(4, 3, 2, 1, 1);
		["rhsusf_iotv_ocp_squadleader"] call FNC_AddItem;
		["Binocular"] call FNC_AddItem;
		["ACRE_PRC148"] call FNC_AddItem;

	};

	case "SL": {

		WESTUNIFORM;
		PAK;
		WESTGEAR(5, 2, 2, 1, 1);
		["rhsusf_iotv_ocp_squadleader"] call FNC_AddItem;
		["Binocular"] call FNC_AddItem;
		["ACRE_PRC148"] call FNC_AddItem;

		["arifle_MX_Hamr_pointer_F"] call FNC_AddItem;
		

	};

	case "FTL": {

		WESTUNIFORM;
		PAK;
		WESTGEAR(5, 2, 2, 2, 0);
		["Binocular"] call FNC_AddItem;
		["1Rnd_HE_Grenade_shell", 4] call FNC_AddItem;
		["1Rnd_Smoke_Grenade_shell", 2] call FNC_AddItem;
		["arifle_MX_GL_F"] call FNC_AddItem;

	};

    case "RIFLE": {

    	WESTUNIFORM;
    	PAK;
        WESTGEAR(8, 0, 2, 2, 0);
        ["B_Kitbag_mcamo"] call FNC_AddItem;
        ["arifle_MX_Hamr_pointer_F"] call FNC_AddItem;
        ["launch_NLAW_F"] call FNC_AddItem;

    };

};