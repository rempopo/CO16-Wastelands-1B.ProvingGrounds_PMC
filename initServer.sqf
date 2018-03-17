/*
 *	You can change MissionDate to some specific date to override date set in mission editor:
 *		format:		[@Year, @Month, @Day, @Hours, @Minutes] (e.g. [2012, 12, 31, 12, 45])
 */
MissionDate = [
	date select 0
	, date select 1
	, date select 2
	, switch ("par_daytime" call BIS_fnc_getParamValue) do {
		case 0: { 10 + round(random 4) };
		case 1: { 21 + round(random 8) };
		case 2: { round(random 24) };
	}
	, selectRandom [0,10,15,20,25,30,40,45,50]
];
publicVariable "MissionDate";

/*
 * Date
 */
setDate MissionDate;

/*
 *	Weather
 */
if (!isNil "dzn_fnc_setWeather") then {
	("par_weather" call BIS_fnc_getParamValue) spawn dzn_fnc_setWeather;
};


/*
 *	Collect Some Player connection data
 */
PlayerConnectedData = [];
PlayerConnectedEH = addMissionEventHandler ["PlayerConnected", {
	diag_log "Client connected";
	diag_log _this;
	// [ DirectPlayID, getPlayerUID player, name player, @bool, clientOwner ]
	PlayerConnectedData pushBack _this;
	publicVariable "PlayerConnectedData";
}];



[] spawn {
	SFPoses = [ 
		["fuelstation", "fuelstationLogic"]
		, ["roadside", "roadsideLogic"]
		, ["warehouse", "warehouseLogic"]
	];

	SFPos = selectRandom SFPoses;
	SFToClear = SFPoses - [SFPos];
	
	SFPosDynaiName = SFPos select 0;
	SFPosDynai = call compile SFPosDynaiName;
	SFPosLogic = call compile (SFPos select 1);
	
	// Move hostage
	Hostage setPosATL (getPosATL SFPosLogic);
	
	// Remove deadman
	[] spawn {
		waitUntil { time > 5 };
		if (SFPosDynaiName == "roadside") then {	
			Deadman setDamage 1;
		} else {
			deleteVehicle Deadman;
			deleteVehicle DeadmanVehicle;
		};	
		
		waitUntil { !isNil "dzn_dynai_initialized" && { dzn_dynai_initialized } };
		SFPosDynai call dzn_fnc_dynai_activateZone;
	};
	
	{
		private _logic = call compile (_x select 1);
		{
			deleteVehicle _x;		
		} forEach (synchronizedObjects _logic);		
	} forEach SFToClear;
};