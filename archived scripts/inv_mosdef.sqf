﻿private ["_chap", "_i", "_grps", "_gcos", "_gwps", "_g", "_grp", "_wps", "_types", "_posoff", "_rank", "_skill", "_cos", "_type", "_wp", "_pakpos", "_pakaz", "_pos", "_az", "_mgpos", "_mgaz"];
	_chap = true;
	_i = 0;
	_grps = [pz1, pz2];
	_gcos = [[-16,1570,0], [1543,-50,0]];
	_gwps = [[774.39655,3135.1431,0],[1394.9415,2406.7273,0]];
	for "_g" from 0 to ((count _grps)-1) do {
		_grp = _grps select _g;
		_wps = _gwps select _g;
		_types = ["I44_Tank_G_PzKpfwV_G_camo_WH","I44_Tank_G_PzKpfwV_G_camo_WH","I44_Tank_G_PzKpfwIV_G_Skirt_WH","I44_Tank_G_PzKpfwIV_G_WH"];
		_posoff = [[0,0], [-5,-5], [5,-5], [0,-5]];
		_rank = ["CAPTAIN", "LIEUTENANT", "SERGEANT", "CORPORAL"];
		_skill = 0.6;
		for "_i" from 0 to ((count _types) -1) do {
			_cos = _gcos select _g;
			_type = _types select _i;
			_cos = [((_cos select 0)+((_posoff select _i) select 0)), ((_cos select 1)+((_posoff select _i) select 1)), (_cos select 2)];
			_chap = [_cos, 37, _type, _grp] call BIS_fnc_spawnVehicle;
			(effectiveCommander (_chap select 0)) setRank (_rank select _i);
			(effectiveCommander (_chap select 0)) setSkill _skill; 
			if ((_rank select _i) == "CAPTAIN") then {_grp selectLeader (effectiveCommander (_chap select 0))};
			sleep .01;
		};
		_wp = _grp addWaypoint [_wps, 20];
		_wp setWaypointType "MOVE";
		_wp setWaypointSpeed "NORMAL";
		_wp setWaypointBehaviour "COMBAT";
		_wp setWaypointCombatMode "RED";
		_wp setWaypointFormation "WEDGE";	
		_wp setWaypointCompletionRadius 200;
		sleep .01;		
	};
	_pakpos = [[1432.5583,3563.8562,0], [1169.2646,3418.7073,0], [1244.6674,3426.7485,0], [1484.996,2987.7822,0], [1534.4139,2965.8896,0], [1605.4716,3012.0327,0]];
	_pakaz = [-293,-31,-31,-53,-264,34];
	for "_i" from 0 to ((count _pakpos) -1) do {
		_pos = _pakpos select _i;
		_az = _pakaz select _i;
		_chap = [_pos, _az, "I44_GunAT_G_PaK40_Pintle_WH", paks] call BIS_fnc_spawnVehicle;
		(effectiveCommander (_chap select 0)) setRank "SERGEANT";
		(effectiveCommander (_chap select 0)) setSkill _skill;
		if (_i == 0) then {paks selectLeader (effectiveCommander (_chap select 0))};
	};
	_mgpos = [[1427.594,3603.9905,0],[1292.3473,3662.3201,0]];
	_mgaz = [51,-60];
	for "_i" from 0 to ((count _mgpos) -1) do {
		_pos = _mgpos select _i;
		_az = _mgaz select _i;
		_chap = [_pos, _az, "I44_GunMG_G_MG42_Nest_WH", paks] call BIS_fnc_spawnVehicle;
		(effectiveCommander (_chap select 0)) setRank "SERGEANT";
		(effectiveCommander (_chap select 0)) setSkill _skill; 
	};	
	paks setBehaviour "STEALTH";
	paks setCombatMode "RED";