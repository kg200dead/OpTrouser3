private ["_markrs", "_backup", "_counts", "_i", "_dave", "_rmax", "_id", "_plane", "_wp", "_dz", "_bob"];
if ((name player == HCName) || {(!HCPresent) && {isServer}}) then {
	//if (!isnil "Prawn" || {!isNull "Prawn"}) then {deleteGroup Prawn; deleteGroup KingPrawn; Prawn = nil; KingPrawn = nil;};
	if ((count (units Ocelot)) >0) then {nul = [(units Ocelot)] spawn dfDSpawnAir;};
	while {(count (waypoints Ocelot)) > 0} do {deleteWaypoint ((waypoints Ocelot) select 0);};
	resup = resup + 1;
	publicVariable "resup"; 
	_markrs = ["RDZ_1", "RDZ_2", "RDZ_3", "RDZ_4", "RDZ_5", "RDZ_6", "RDZ_7", "RDZ_8"];
	_backup = _markrs;
	_counts = [];
	for "_i" from 0 to ((count _markrs)-1) do {
		_dave = count ((getMarkerPos (_markrs select _i)) nearEntities ["I44_Man_B",400]);
		_counts set [_i, _dave];
		sleep 0.1;
	};
	_rmax = 0;
	for "_i" from 0 to ((count _counts)-1) do {
		_rmax = _rmax max (_counts select _i);
	};
	for "_i" from 0 to ((count _markrs)-1) do {
		if (_rmax > (_counts select _i)) then { 
			_markrs = _markrs - [_backup select _i];
		};
	};
	nul = [] execVM "dead\dfBoxInit.sqf";
	if (HCPresent) then {
		_id = owner HeadlessChicken;
		if (!((owner Ocelot) == _id)) then {
			Ocelot setOwner _id;
		};
	};
	_plane = [[4300,14500,300], 230, "I44_Plane_A_C47A_AAF", Ocelot] call BIS_fnc_spawnVehicle;
	(_plane select 0) flyInHeight 150;
	Flight_1 = driver (_plane select 0);
	Flight_1 setRank "MAJOR";
	_plane = [[4200,14600,300], 230, "I44_Plane_A_C47A_AAF", Ocelot] call BIS_fnc_spawnVehicle;
	(_plane select 0) flyInHeight 150;
	Flight_2 = driver (_plane select 0);
	Flight_2 setRank "CAPTAIN";
	_plane = [[4400,14500,300], 230, "I44_Plane_A_C47A_AAF", Ocelot] call BIS_fnc_spawnVehicle;
	(_plane select 0) flyInHeight 150;
	Flight_3 = driver (_plane select 0);
	Flight_3 setRank "LIEUTENANT";
	_plane = [[4500,14600,300], 230, "I44_Plane_A_C47A_AAF", Ocelot] call BIS_fnc_spawnVehicle;
	(_plane select 0) flyInHeight 150;
	Flight_4 = driver (_plane select 0);
	Flight_4 setRank "LIEUTENANT";
	[Flight_1, Flight_2, Flight_3, Flight_4] join Ocelot;
	Ocelot selectLeader Flight_1; 
	_wp = Ocelot addWaypoint [[4290,7985,300], 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointCompletionRadius 300;
	_wp setWaypointBehaviour "AWARE";
	_wp setWaypointCombatMode "BLUE";
	_wp setWaypointFormation "WEDGE";
	sleep 0.01;
	switch (true) do 
	{
		case (count _markrs == 0): 
		{
			_dz = _backup call BIS_fnc_selectRandom;
		};
		case (count _markrs == 1): 
		{
			_dz = _markrs select 0;
		};
		case (count _markrs > 1): 
		{
			_dz = _markrs call BIS_fnc_selectRandom;
		};
	};
	
	_bob = format ["Ocelot Dropzone is %1", _dz];
	[_bob, "Resupply", [false, true, false] ] call CBA_fnc_debug;
	
	_wp = Ocelot addWaypoint [getMarkerPos _dz, 300];
	_wp setWaypointType "MOVE";
	_wp setWaypointCompletionRadius 200;
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointBehaviour "AWARE";
	_wp setWaypointCombatMode "BLUE";
	_wp setWaypointFormation "WEDGE";
	_wp setWaypointStatements ["true", "nul=[] spawn dfDropBox; [""Dropped"", ""dfResupply"", [false, true, false] ] call CBA_fnc_debug;"];
	sleep 0.01;	
	_wp = Ocelot addWaypoint [getMarkerPos "exfil", 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointCompletionRadius 600;
	_wp setWaypointSpeed "FULL";
	_wp setWaypointBehaviour "AWARE";
	_wp setWaypointCombatMode "BLUE";
	_wp setWaypointFormation "WEDGE";
	_wp setWaypointStatements ["true", "nul=[(units Ocelot)] spawn dfDSpawnAir;"];
	_wp = 0;
	_markrs = nil;
	_dz = nil; 
	_wp = nil;
};