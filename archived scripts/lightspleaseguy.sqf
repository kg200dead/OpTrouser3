private ["_pos", "_i", "_dave", "_slamps"];
	_pos = _this select 0;
	for "_i" from 0 to ((count _pos) -1) step 1 do {
		_epi = markerPos (_pos select _i);
		_slamps = _epi nearObjects ["StreetLamp",350];
		{_x switchLight "OFF"; _x inflame false; _x setDamage 0.8;} forEach _slamps;
	};
ST_FTHud_ShownUI = 0;
ST_FTHud_Centre = [150,200];
ST_FTHud_Zoom = 0.5;
ST_FTHud_Scale = 1.0;