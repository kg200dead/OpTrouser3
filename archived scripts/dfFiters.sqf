private ["_fitergo", "_diceman", "_fitersp", "_wp", "_trad", "_ranx", "_rany", "_computersaysno", "_wally", "_destiny"];
if ((name player == HCName) || {(!HCPresent) && isServer}) then {
	sleep .01;
	_fitergo = false;
	_diceman = round (random 9);
	if ((daytime > 4) && {daytime < 6}) then {
		sortie = (time + 900 + (round (random 1020))); 
		if (_diceman < 9) then {_fitergo = true;};
	} else {
		sortie = (time + 1380 + (round (random 1380)));
		if (_diceman < 7) then {_fitergo = true;};
	};
	if !(_fitergo) exitWith {};
	{
		if !(isNull _x) then {
			_x setPosATL [0,0,0];
			deleteVehicle _x;
			_x = objNull;
		};
	} forEach [fiter1, fiter2] + [vehicle fiter1] + [vehicle fiter2];
	{
		deleteVehicle _x;
		_x = objNull;
	} forEach [BoomBox1, BoomBox2, BombsAway];
	while {(count (waypoints fiters)) > 0} do {deleteWaypoint ((waypoints fiters) select 0);};
	_fitergo = nil;
	_fitersp = [[4882,18513,600], 230, "I44_Plane_B_TyphoonMk1A_RAF", fiters] call BIS_fnc_spawnVehicle;
	fiter1 = driver (_fitersp Select 0);
	fiter1 setRank "MAJOR";
	fiter1 setSkill 1;	
	sleep .1;
	_fitersp = [[4902,18538,610], 230, "I44_Plane_B_TyphoonMk1A_RP3_RAF", fiters] call BIS_fnc_spawnVehicle;
	fiter2 = driver (_fitersp Select 0);
	fiter2 setRank "CAPTAIN";
	fiter2 setSkill 1;	
	fiters selectLeader fiter1;
	sleep .1;
	_wp = fiters addWaypoint [[4290,7985,300], 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointCompletionRadius 400;
	_wp setWaypointBehaviour "COMBAT";
	_wp setWaypointCombatMode "RED";
	_wp setWaypointFormation "WEDGE";
	_trad = 100;
	_ranx = _trad - (random (2 * _trad));
	_rany = _trad - (random (2 * _trad));
	_computersaysno = true;
	_wally = getMarkerPos "MrkOsa";
	while {_computersaysno} do 
	{
		_destiny = round (random 9);
		switch (_destiny) do 
		{
			case 0: 
			{
				if (Zernovo_Cap == "blu") then {
				} else {
					_wally = getMarkerPos "MrkZernovo";
					_computersaysno = false;
				};
			};
			case 1: 
			{
				if (Osa_Cap == "blu") then {
				} else {
					_wally = getMarkerPos "MrkOsa";
					_computersaysno = false;
				};
			};
			case 2: 
			{
				if (Avdon_Cap == "blu") then {
				} else {
					_wally = getMarkerPos "MrkAvdon";
					_computersaysno = false;
				};
			};
			case 3: 
			{
				if (FBArthur_Cap == "blu") then {
				} else {
					_wally = getMarkerPos "MrkFBArthur";
					_computersaysno = false;
				};
			};
			case 4: 
			{
				if (Factory_Cap == "blu") then {
				} else {
					_wally = getMarkerPos "MrkFactory";
					_computersaysno = false;
				};
			};
			case 5: 
			{
				if (FBBertie_Cap == "blu") then {
				} else {
					_wally = getMarkerPos "MrkFBBertie";
					_computersaysno = false;
				};
			};
			case 6: 
			{
				if (Osa_Cap == "blu") then {
				} else {
					_wally = getMarkerPos "MrkRadioTower";
					_computersaysno = false;
				};
			};
			case 7: 
			{
				if (Lebedov_Cap == "blu") then {
				} else {
					_wally = getMarkerPos "MrkLebedov";
					_computersaysno = false;
				};
			};
			case 8: 
			{
				if (RailDepot_Cap == "blu") then {
				} else {
					_wally = getMarkerPos "MrkRailDepot";
					_computersaysno = false;
				};
			};
			case 9: 
			{
				if (Panz_Cap == "blu") then {
				} else {
					_wally = getMarkerPos "MrkPanz";
					_computersaysno = false;
				};
			};
		};
		sleep .1;
	};
	_wp = fiters addWaypoint [_wally, 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointBehaviour "COMBAT";
	_wp setWaypointCombatMode "RED";
	_wp setWaypointFormation "WEDGE";	
	_wp setWaypointCompletionRadius 600;
	BoomBox1 = "TargetFakeTank_Lockable_EP1" createvehicle _wally;
	BoomBox1 setposATL [(_wally select 0) + _ranx, (_wally select 1) + _rany, 0];
	BoomBox2 = "TargetFakeTank_Lockable_EP1" createvehicle _wally;
	BoomBox2 setposATL [(_wally select 0) + _ranx, (_wally select 1) + _rany, 0];
	BoomBox1 allowDamage false;
	BoomBox2 allowDamage false;	
	_ranx = _trad - (random (2 * _trad));
	_rany = _trad - (random (2 * _trad));
	BombsAway = createTrigger ["EmptyDetector", _wally];
	BombsAway setTriggerArea [1800, 1800, 0, false];
	BombsAway setTriggerActivation ["MEMBER","PRESENT", false];
	BombsAway triggerAttachVehicle [fiter2];
	BombsAway triggerAttachVehicle [fiter1];
	BombsAway setTriggerActivation ["MEMBER","PRESENT", false];
	BombsAway setTriggerStatements ["this", "nul = [] spawn dfJabo", ""];
	_wp = fiters addWaypoint [getMarkerPos "exfil", 0];
	_wp setWaypointStatements ["true", "nul =[(units fiters)] spawn dfDSpawnAir;"];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "NORMAL";
	_wp setWaypointBehaviour "AWARE";
	_wp setWaypointCombatMode "RED";
	_wp setWaypointFormation "WEDGE";	
	_wp setWaypointCompletionRadius 600;
	_diceman = nil;
	_trad = nil;
	_ranx = nil;
	_rany = nil;
	_computersaysno = nil;
	_destiny = nil;
};