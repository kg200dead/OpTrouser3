private ["_chap", "_grps", "_gcos", "_gwps", "_g", "_grp", "_wps", "_types", "_posoff", "_rank", "_skill", "_cos", "_j", "_i", "_type", "_k", "_wp"];
	_chap = true;
	_i = 0;
	_grps = [ci1, ci1a, ci2, ci2a, ci3, ci3a];
	_gcos = [[2202,4544,0],[2178,4577,0],[1574,4510,0],[1549,4543,0],[1047,4510,0],[1045,4560,0]];
	_gwps = [[[2188,4011,0],[1937,3775,0],[2005,3488,0],[1620,2648,0],[2410,2336,0]], [[2183,4008,0],[1940,3851,0],[1991,3471,0],[1567,2654,0],[2823,2236,0]], [[1725,3800,0],[1912,3483,0],[1398,2615,0],[1723,2360,0],[2314,2285,0],[2439,1996,0]], [[1585,3858,0],[1842,3497,0],[1403,2375,0],[2588,2315,0],[2493,2023,0]], [[1002,3442,0],[845,2726,0],[1408,2096,0],[2903,2221,0]], [[922,3481,0],[715,2808,0],[909,2423,0],[1513,2181,0],[2189,2417,0],[2830,2360,0]]];
	for "_g" from 0 to ((count _grps)-1) do {
		_grp = _grps select _g;
		_wps = _gwps select _g;
		_types = ["I44_Man_B_Army_Commando_BrenMk1", "I44_Man_B_Army_Commando_Engr_GrenadeNo75", "I44_Man_B_Army_Commando_NCO_StenMk2S", "I44_Man_B_Army_Commando_PIAT", "I44_Man_B_Army_Commando_SMLENo4Mk1", "I44_Man_B_Army_Commando_SMLENo4Mk1", "I44_Man_B_Army_Commando_SMLENo4Mk1", "I44_Man_B_Army_Commando_SMLENo4Mk1", "I44_Man_B_Army_Commando_StenMk2", "I44_Man_B_Army_Commando_StenMk5", "I44_Tank_B_ShermanIV_Army"];
		_posoff = [[0,0],[5,-11],[-9,9],[23,-15],[-12,8],[-20,-1],[8,8],[21,-15],[-13,16],[4,0],[-3,-10],[-2,0],[12,1],[-20,-1],[-8,-1],[-2,0],[34,-2],[-29,3],[10,10],[11,-9],[22,-32],[4,0]];
		_rank = ["CAPTAIN", "CORPORAL", "PRIVATE", "PRIVATE", "LIEUTENANT", "SERGEANT", "PRIVATE", "PRIVATE", "PRIVATE", "PRIVATE", "PRIVATE", "PRIVATE", "PRIVATE", "PRIVATE", "PRIVATE", "CORPORAL", "CORPORAL", "PRIVATE", "CORPORAL", "PRIVATE", "SERGEANT", "SERGEANT"];
		_skill = [0.7, 0.4, 0.3, 0.3, 0.6, 0.5, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.4, 0.4, 0.3, 0.4, 0.3, 0.5, 0.5];
		_cos = _gcos select _g;
		_j = 0;
		for "_i" from 0 to ((count _types) -1) do {
			_type = _types select _i;
			_cos = [((_cos select 0)+((_posoff select _j) select 0)), ((_cos select 1)+((_posoff select _j) select 1)), (_cos select 2)];
			if (_type == "I44_Tank_B_ShermanIV_Army") then {
				_chap = [_cos, 184, _type, _grp] call BIS_fnc_spawnVehicle;
				(effectiveCommander (_chap select 0)) setRank (_rank select _j);
				(effectiveCommander (_chap select 0)) setSkill (_skill select _j); 
			} else {
				_chap = _grp createUnit [_type, [(_cos select 0),(_cos select 1),(_cos select 2)], [], 0, "FORM"];
				_chap setRank (_rank select _j);
				_chap setSkill (_skill select _j); 
			};
			if ((_rank select _j) == "CAPTAIN") then {_grp selectLeader _chap};
			_j = _j + 1;
			sleep .01;
			_cos = [((_cos select 0)+((_posoff select _j) select 0)), ((_cos select 1)+((_posoff select _j) select 1)), (_cos select 2)];
			if (_type == "I44_Tank_B_ShermanIV_Army") then {
				_chap = [_cos, 184, _type, _grp] call BIS_fnc_spawnVehicle;
				(effectiveCommander (_chap select 0)) setRank (_rank select _j);
				(effectiveCommander (_chap select 0)) setSkill (_skill select _j); 
			} else {
				_chap = _grp createUnit [_type, [(_cos select 0),(_cos select 1),(_cos select 2)], [], 0, "FORM"];
				_chap setRank (_rank select _j);
				_chap setSkill (_skill select _j); 
			};
			_j = _j + 1;
			sleep .01;
		};
		_types = ["I44_Man_B_Army_Commando_BrenMk1", "I44_Man_B_Army_Commando_Engr_GrenadeNo75", "I44_Man_B_Army_Commando_SMLENo4Mk1", "I44_Man_B_Army_Commando_PIAT", "I44_Tank_B_ShermanIV_Army", "I44_Tank_B_ShermanVC_Army"];
		_posoff = [[-25,-1],[-20,2],[-10,1],[23,-12],[30,-42],[0,-4]];
		_rank = ["PRIVATE", "PRIVATE", "PRIVATE", "PRIVATE", "SERGEANT", "LIEUTENANT"];
		_skill = [0.3, 0.3, 0.3, 0.3, 0.5, 0.6];
		for "_i" from 0 to ((count _types) -1) do {
			_type = _types select _i;
			_cos = [((_cos select 0)+((_posoff select _i) select 0)), ((_cos select 1)+((_posoff select _i) select 1)), (_cos select 2)];
			if (_type == "I44_Tank_B_ShermanIV_Army" || {_type == "I44_Tank_B_ShermanVC_Army"}) then {
				_chap = [[(_cos select 0),(_cos select 1),(_cos select 2)], 184, _type, _grp] call BIS_fnc_spawnVehicle;
				(effectiveCommander (_chap select 0)) setRank (_rank select _i);
				(effectiveCommander (_chap select 0)) setSkill (_skill select _i); 
			} else {
				_chap = _grp createUnit [_type, [(_cos select 0),(_cos select 1),(_cos select 2)], [], 0, "FORM"];
				_chap setRank (_rank select _i);
				_chap setSkill (_skill select _i); 
			};
			sleep .01;
		};
		for "_k" from 0 to ((count _wps) -1) do {
			_wp = _grp addWaypoint [_wps select _k, 5];
			_wp setWaypointType "MOVE";
			_wp setWaypointSpeed "NORMAL";
			_wp setWaypointBehaviour "COMBAT";
			_wp setWaypointCombatMode "RED";
			_wp setWaypointFormation "STAG COLUMN";	
			_wp setWaypointCompletionRadius 300;
			sleep .1;
		};
	};
	Mafeking = createTrigger ["EmptyDetector",[2486,2368,0]];
	Mafeking setTriggerArea [500,500,0,false];
	Mafeking setTriggerActivation ["WEST","PRESENT",true];
	Mafeking setTriggerType "END1";
	Mafeking setTriggerStatements ["this && (((!HCPresent) && isServer) || {name player == HCName}) && {({group _x == ci1} count thislist) + ({group _x == ci1a} count thislist) + ({group _x == ci2} count thislist) + ({group _x == ci2a} count thislist) + ({group _x == ci3} count thislist) + ({group _x == ci3a} count thislist) > 0}", "if (alive ([2486,2368,0] nearestObject 2) && alive ([2486,2368,0] nearestObject 1680)) then {if (Pitt_Cap == ""blu"") then {endMission ""End1"";} else {endMission ""End2"";};} else {endMission ""End3"";};", ""];
	Mafeking setTriggerTimeout [120, 120, 120, true];