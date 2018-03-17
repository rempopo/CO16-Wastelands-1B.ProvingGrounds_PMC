// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************


/*
	TKA
*/
#define TKA_UNI	["CUP_U_O_TK_MixedCamo","CUP_U_O_TK_Green"]
#define TKA_HEAD	["rhs_6b27m_ml","rhs_fieldcap_helm_ml"]
#define TKA_UITEMS [["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",2],["ACE_CableTie",2],["ACE_Flashlight_MX991",1],["ACE_EarPlugs",1]]
#define TKA_SLUITEMS [["Binocular",1],["ACE_Maptools",1],["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",2],["ACE_CableTie",2],["ACE_Flashlight_MX991",1],["ACE_EarPlugs",1]]
#define TKA_ASSIGNED	"ItemMap","ItemCompass","ItemWatch","ItemRadio"

#define	AK74	["rhs_weap_ak74n","rhs_weap_ak74n_2","rhs_weap_aks74","rhs_weap_aks74_2"],["rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK"]
#define	AK74GP	["rhs_weap_ak74_gp25","rhs_weap_ak74n_gp25","rhs_weap_ak74n_2_gp25","rhs_weap_aks74_gp25"],["rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK"]


kit_tka_sl = 
	[
	["<EQUIPEMENT >>  ",TKA_UNI,"CUP_V_O_TK_Vest_1","tf_anprc155_coyote",TKA_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74GP,["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",TKA_ASSIGNED],
	["<UNIFORM ITEMS >> ", TKA_SLUITEMS],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",8],["rhs_VOG25",10]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_tka_mg = 
	[
	["<EQUIPEMENT >>  ",TKA_UNI,"CUP_V_O_TK_Vest_1","CUP_B_AlicePack_Khaki",TKA_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",TKA_ASSIGNED],
	["<UNIFORM ITEMS >> ", TKA_UITEMS],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];

kit_tka_at = 
	[
	["<EQUIPEMENT >>  ",TKA_UNI,"CUP_V_O_TK_Vest_1","rhs_rpg_empty",TKA_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74,["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","",["","","rhs_acc_pgo7v",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",TKA_ASSIGNED],
	["<UNIFORM ITEMS >> ", TKA_UITEMS],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["rhs_rpg7_PG7VL_mag",2]]]
];

kit_tka_aat =
	[
	["<EQUIPEMENT >>  ",TKA_UNI,"CUP_V_O_TK_Vest_1","rhs_rpg_empty",TKA_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74,["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",TKA_ASSIGNED],
	["<UNIFORM ITEMS >> ", TKA_UITEMS],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["rhs_rpg7_PG7VL_mag",2]]]
];

kit_tka_ss = 
	[
	["<EQUIPEMENT >>  ",TKA_UNI,"CUP_V_O_TK_Vest_1","",TKA_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74_45","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",TKA_ASSIGNED],
	["<UNIFORM ITEMS >> ", TKA_UITEMS],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_tka_gr = 
	[
	["<EQUIPEMENT >>  ",TKA_UNI,"CUP_V_O_TK_Vest_1","",TKA_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74GP,["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",TKA_ASSIGNED],
	["<UNIFORM ITEMS >> ", TKA_UITEMS],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",8],["rhs_VOG25",10]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_tka_mm = 
	[
	["<EQUIPEMENT >>  ",TKA_UNI,"CUP_V_O_TK_Vest_1","CUP_B_AlicePack_Khaki",TKA_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_svds","rhs_10Rnd_762x54mmR_7N1",["","","rhs_acc_pso1m21_svd",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",TKA_ASSIGNED],
	["<UNIFORM ITEMS >> ", TKA_UITEMS],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[["rhs_100Rnd_762x54mmR", 2]]]
];

kit_tka_vehicle = [
	[["rhs_weap_rpg26",1], ["rhs_weap_aks74",1]],
	[["rhs_100Rnd_762x54mmR", 5], ["rhs_mag_rgd5",6],["rhs_mag_rdg2_black",6],["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",5],["rhs_30Rnd_545x39_AK",25],["rhs_VOG25",14]],
	[["ACE_fieldDressing",15],["ACE_elasticBandage",6],["ACE_packingBandage",6],["ACE_tourniquet",5]],
	[]
];

/*
	HOSTAGE
*/
kit_tka_hostage = 	
	[
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Officer","","","","TRYK_Beard_BK"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","",""],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_tka_r = 
	[
	["<EQUIPEMENT >>  ",TKA_UNI,"CUP_V_O_TK_Vest_1","","",""],
	["<PRIMARY WEAPON >>  ",AK74,["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",TKA_ASSIGNED],
	["<UNIFORM ITEMS >> ", TKA_UITEMS],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

/*
	NATO SF Unit
*/

#define SEC_UNI		["TRYK_U_taki_BL","TRYK_U_taki_COY","TRYK_U_taki_wh","TRYK_U_taki_G_BL","TRYK_U_taki_G_BLK","TRYK_U_taki_G_COY","TRYK_U_taki_G_WH"]
#define SEC_HEAD		["H_ShemagOpen_khk","H_ShemagOpen_tan","H_Shemag_olive_hs","H_Watchcap_blk","H_Watchcap_khk","CUP_H_TKI_Lungee_01","CUP_H_TKI_Lungee_06","CUP_H_TKI_Pakol_1_05","CUP_H_TKI_Pakol_2_03"]
#define SEC_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio"
#define SEC_UNI_ITEMS	[["ACE_fieldDressing",6],["ACE_packingBandage",8],["ACE_elasticBandage",7],["ACE_tourniquet",2],["ACE_morphine",1],["ACE_epinephrine",1],["ACE_quikclot",7],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]]
#define SEC_GOGGLES	["TRYK_Beard_BK4","TRYK_Beard_BW4","TRYK_Beard2","G_Bandanna_oli","G_Bandanna_shades"]
kit_natosf_random = [
	"kit_sec_ar"
	,"kit_sec_gr"
	,"kit_sec_r"
];


kit_sec_ar =
	[
	["<EQUIPEMENT >>  ",SEC_UNI,"TRYK_V_ArmorVest_CBR","B_AssaultPack_rgr",SEC_HEAD,SEC_GOGGLES],
	["<PRIMARY WEAPON >>  ","CUP_lmg_Mk48_des","CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",["","","ACE_optic_Arco_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ",SEC_ITEMS],
	["<UNIFORM ITEMS >> ",SEC_UNI_ITEMS],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",2],["SmokeShellRed",1],["SmokeShellBlue",1],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2],["ACE_M84",2]]]
];
kit_sec_gr =
	[
	["<EQUIPEMENT >>  ",SEC_UNI,"TRYK_V_ArmorVest_CBR","B_AssaultPack_rgr",SEC_HEAD,SEC_GOGGLES],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4a1_m203s_d","rhs_mag_30Rnd_556x45_Mk318_Stanag",["rhsusf_acc_nt4_tan","","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ",SEC_ITEMS,"ACE_Vector"],
	["<UNIFORM ITEMS >> ",SEC_UNI_ITEMS],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",1],["rhs_mag_30Rnd_556x45_M855A1_Stanag",8],["rhs_mag_M433_HEDP",7]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_M433_HEDP",4],["30Rnd_556x45_Stanag",2],["UGL_FlareRed_F",2],["1Rnd_SmokeBlue_Grenade_shell",1],["1Rnd_SmokeRed_Grenade_shell",1],["SmokeShellGreen",1],["SmokeShellPurple",1],["ACE_M84",2]]]
];

kit_sec_r =
	[
	["<EQUIPEMENT >>  ",SEC_UNI,"TRYK_V_ArmorVest_CBR","",SEC_HEAD,SEC_GOGGLES],
	["<PRIMARY WEAPON >>  ","rhs_weap_mk18_grip_KAC","30Rnd_556x45_Stanag",["rhsusf_acc_nt4_tan","","CUP_optic_CompM4","rhsusf_acc_grip3"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",["muzzle_snds_acp","","",""]],
	["<ASSIGNED ITEMS >>  ",SEC_ITEMS],
	["<UNIFORM ITEMS >> ",SEC_UNI_ITEMS],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",1],["SmokeShellRed",1],["SmokeShellBlue",1],["30Rnd_556x45_Stanag",10],["ACE_M84",2]]],
	["<BACKPACK ITEMS >> ",[]]
];