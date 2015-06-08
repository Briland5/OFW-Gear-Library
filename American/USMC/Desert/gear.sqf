#include "core\gearCore.sqf" //DO NOT REMOVE

_unit call FNC_removeAllGear;

#define STANDARD_GEAR\
//["rhsusf_ANPVS_14"] call FNC_addItem;
["ItemMap"] call FNC_addItem;\
["ItemCompass"] call FNC_addItem;\
["ItemWatch"] call FNC_addItem;\
["ACRE_PRC343"] call FNC_addItem;\
["ACE_Earplugs"] call FNC_addItem;

#define USMC_GROUND\
["rhs_uniform_FROG01_d"] call FNC_addItem;\
["rhsusf_spc"] call FNC_addItem;\ //Will remove once there are actually different 
["rhsusf_assault_eagleaiii_coy"] call FNC_addItem;\
[\
	"rhsusf_mich_helmet_marpatd", \
	"rhsusf_mich_helmet_marpatd_headset",\
	"rhsusf_mich_helmet_marpatd_alt", \
	"rhsusf_mich_helmet_marpatd_alt_headset",\
	"rhsusf_mich_helmet_marpatd_norotos", \
	"rhsusf_mich_helmet_marpatd_norotos_headset"\
] call FNC_addItemRandom;

#define MAGAZINE_VEST(STANAG, TRACER, M249, SR25, M203_G, M203_SM, M67, GREEN, RED)\
["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer", STANAG, "vest"] call FNC_addItem;\
["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", TRACER, "vest"] call FNC_addItem;\
["rhsusf_100Rnd_556x45_soft_pouch", M249, "vest"] call FNC_addItem;\
["rhsusf_20Rnd_762x51_m118_special_Mag", SR25, "vest"] call FNC_addItem;\
["rhs_mag_M433_HEDP", M203_G, "vest"] call FNC_addItem;\
["rhs_mag_m713_Red", M203_SM, "vest"] call FNC_addItem;\
["rhs_mag_m67", M67, "vest"] call FNC_addItem;\
["SmokeShellGreen", GREEN, "vest"] call FNC_addItem;\
["SmokeShellRed", RED, "vest"] call FNC_addItem;

#define MAGAZINE_BACKPACK(STANAG, TRACER, M249, SR25, M203_G, M203_SM, GREEN, RED, BLUE)\
["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer", STANAG, "backpack"] call FNC_addItem;\
["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", TRACER, "backpack"] call FNC_addItem;\
["rhsusf_100Rnd_556x45_soft_pouch", M249, "backpack"] call FNC_addItem;\
["rhsusf_20Rnd_762x51_m118_special_Mag", SR25, "backpack"] call FNC_addItem;
["rhs_mag_M433_HEDP", M203_G, "backpack"] call FNC_addItem;\
["rhs_mag_m713_Red", M203_SM, "backpack"] call FNC_addItem;\
["SmokeShellGreen", GREEN, "backpack"] call FNC_addItem;\
["SmokeShellRed", RED, "backpack"] call FNC_addItem;\
["SmokeShellBlue", BLUE, "backpack"] call FNC_addItem;

#define M16A4\
[\
	"RHS_WEAP_M16A4", \
	"RHS_WEAP_M16A4_CARRYHANDLE", \
	"RHS_WEAP_M16A4_CARRYHANDLE_PMAG", \
	"RHS_WEAP_M16A4_GRIP", \
	"rhs_weap_m16a4_carryhandle_grip", \
	"rhs_weap_m16a4_carryhandle_grip_pmag"\
] call FNC_AddItemRandom;\
["rhsusf_acc_anpeq15_light"] call FNC_addItem;\
["rhsusf_acc_ACOG_USMC"] call FNC_addItem;

#define M249\
["rhs_weap_m249_pip"] call FNC_AddItem;\
["rhsusf_acc_ELCAN"] call FNC_addItem;

#define M203\
["rhs_weap_m16a4_carryhandle_M203"] call FNC_AddItem;\
["rhsusf_acc_anpeq15_light"] call FNC_addItem;\
["rhsusf_acc_ACOG_USMC"] call FNC_addItem;

#define SR25\
["rhs_weap_sr25"] call FNC_AddItem;\
["rhsusf_acc_LEUPOLDMK4"] call FNC_addItem;\
["rhsusf_acc_harris_bipod"] call FNC_addItem;

#define IFAK \
["ACE_fieldDressing", 4, "uniform"] call FNC_addItem; \
["ACE_elasticBandage", 3, "uniform"] call FNC_addItem; \
["ACE_packingBandage", 3, "uniform"] call FNC_addItem; \
["ACE_quikclot", 3, "uniform"] call FNC_addItem; \
["ACE_morphine", 1, "uniform"] call FNC_addItem; \
["ACE_tourniquet", 1, "uniform"] call FNC_addItem;

#define CFR \
["ACE_fieldDressing", 15, "backpack"] call FNC_addItem; \
["ACE_elasticBandage", 20, "backpack"] call FNC_addItem; \
["ACE_packingBandage", 8, "backpack"] call FNC_addItem; \
["ACE_quikclot", 15, "backpack"] call FNC_addItem; \
["ACE_morphine", 8, "backpack"] call FNC_addItem; \
["ACE_epinephrine", 8, "backpack"] call FNC_addItem; \
["ACE_salineIV_500", 6, "backpack"] call FNC_addItem; \
["ACE_personalAidKit", 3, "backpack"] call FNC_addItem; \
["ACE_tourniquet", 5, "backpack"] call FNC_addItem;

switch (_type) do {
	case "PL":
	{
		USMC_GROUND;
		STANDARD_GEAR;
		IFAK;
		MAGAZINE_VEST(5, 1, 0, 0, 0, 0, 2, 2, 0);
		MAGAZINE_BACKPACK(3, 2, 0, 0, 0, 0, 2, 2, 0);

		["ACRE_PRC152"] call FNC_addItem;
		["ACE_Vector"] call FNC_addItem;

		M16A4;
	};

	case "PSG":
	{
		USMC_GROUND;
		STANDARD_GEAR;
		IFAK;
		MAGAZINE_VEST(5, 1, 0, 0, 0, 0, 2, 2, 0);
		MAGAZINE_BACKPACK(3, 2, 0, 0, 0, 0, 2, 2, 0);

		["ACRE_PRC152"] call FNC_addItem;
		["Binocular"] call FNC_addItem;

		M16A4;
	};

	case "RTO":
	{
		USMC_GROUND;
		STANDARD_GEAR;
		IFAK;
		MAGAZINE_VEST(5, 1, 0, 0, 0, 0, 2, 2, 0);
		MAGAZINE_BACKPACK(2, 0, 0, 0, 0, 0, 2, 0, 0);

		["ACRE_PRC117F"] call FNC_addItem;

		M16A4;
	};

	case "MED":
	{
		USMC_GROUND;
		STANDARD_GEAR;
		CFR;
		MAGAZINE_VEST(5, 1, 0, 0, 0, 0, 2, 2, 0);
		MAGAZINE_BACKPACK(2, 0, 0, 0, 0, 0, 0, 0, 2);

		M16A4;
	};

	case "SQD":
	{
		USMC_GROUND;
		STANDARD_GEAR;
		IFAK;
		MAGAZINE_VEST(5, 1, 0, 0, 0, 0, 2, 2, 0);
		MAGAZINE_BACKPACK(3, 2, 0, 0, 0, 0, 2, 2, 0);

		["ACRE_PRC152"] call FNC_addItem;
		["ACE_Vector"] call FNC_addItem;

		M16A4;
	};

	case "TEAM":
	{
		USMC_GROUND;
		STANDARD_GEAR;
		IFAK;
		MAGAZINE_VEST(5, 1, 0, 0, 6, 2, 2, 2, 0);
		MAGAZINE_BACKPACK(3, 2, 0, 0, 8, 4, 2, 2, 0);

		M203;
	};

	case "AUTO":
	{
		USMC_GROUND;
		STANDARD_GEAR;
		IFAK;
		MAGAZINE_VEST(0, 0, 2, 0, 0, 0, 2, 2, 0);
		MAGAZINE_BACKPACK(0, 0, 4, 0, 0, 0, 2, 2, 0);

		M249;
	};

	case "AAR":
	{
		USMC_GROUND;
		STANDARD_GEAR;
		IFAK;
		MAGAZINE_VEST(5, 1, 0, 0, 0, 0, 2, 2, 0);
		MAGAZINE_BACKPACK(3, 2, 2, 0, 0, 0, 2, 0, 0);

		M16A4;
	};

	case "RFL":
	{
		USMC_GROUND;
		STANDARD_GEAR;
		IFAK;
		MAGAZINE_VEST(5, 1, 0, 0, 0, 0, 2, 2, 0);
		MAGAZINE_BACKPACK(3, 2, 0, 0, 0, 0, 2, 0, 0);

		M16A4;
		["rhs_weap_M136"] call FNC_addItem;
	};

	case "DM":
	{
		USMC_GROUND;
		STANDARD_GEAR;
		IFAK;
		MAGAZINE_VEST(0, 0, 0, 6, 0, 0, 2, 2, 0);
		MAGAZINE_BACKPACK(0, 0, 0, 4, 0, 0, 2, 0, 0);

		SR25;
	};
};