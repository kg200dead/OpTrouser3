private ["_gunbats", "_rockbats", "_wooshbats", "_j", "_marx", "_bgrps", "_typo", "_ammo", "_i", "_LogicGroup", "_mark", "_dave", "_posx", "_posy", "_leady", "_bob", "_two", "_three", "_ted", "_temphe", "_temprock", "_tempotrg", "_lastbat", "_allbats", "_fire", "_bats", "_temp", "_trgs", "_tru", "_trg", "_batty", "_salvo", "_dest", "_targs", "_randtargs", "_county", "_randomno"];
_gunbats = [];_rockbats = [];_wooshbats = [];
// M119 Guns	minRange = 2375     maxRange = 5800
// MLRS			minRange = 4900		maxRange = 15550
// Grads		minRange = 3300		maxRange = 10100
for "_j" from 0 to 2 do {
	switch (_j) do 
	{
		case 0:
		{
			_marx = ["Amersham_Bat", "Amersham_Bat", "BakerSt_Bat", "BakerSt_Bat", "Chorleywood_Bat", "Chorleywood_Bat", "DollisHill_Bat", "DollisHill_Bat", "Eastcote_Bat", "Eastcote_Bat", "FinchleyRd_Bat", "FinchleyRd_Bat"];
			_bgrps = [Amersham_1, Amersham_2, BakerSt_1, BakerSt_2, Chorleywood_1, Chorleywood_2, DollisHill_1, DollisHill_2, Eastcote_1, Eastcote_2, FinchleyRd_1, FinchleyRd_2];
			_typo = "M119";
			_ammo = "ARTY_30Rnd_105mmHE_M119"; 
		};
		case 1:
		{
			_marx = ["BucksRock_Bat", "OxonRock_Bat"];
			_bgrps = [Rocketman_1, Rocketman_2];
			_typo = "MLRS";
			_ammo = "ARTY_12Rnd_227mmHE_M270";
		};
		case 2:
		{
			_marx = ["BucksWoosh_Bat", "BucksWoosh_Bat", "OxonWoosh_Bat", "OxonWoosh_Bat"];
			_bgrps = [Woosh_1, Woosh_2, Woosh_3, Woosh_4];
			_typo = "GRAD_RU";
			_ammo = "ARTY_40Rnd_120mmHE_BM21";
		};
	};
	for "_i" from 0 to ((count _bgrps) -1) do {
		_LogicGroup = createGroup sideLogic;
		_mark = getMarkerPos (_marx select _i);
		_dave = _bgrps select _i;
		_posx = (_mark select 0);
		_posy = (_mark select 1);
		if ((_i / 2) != (round (_i / 2))) then {_posx = (_posx - 170);};
		_leady = _dave createUnit ["BIS_ARTY_Virtual_Artillery", [_posx, _posy, 0],[],0,"NONE"];
		[_leady, _typo] call BIS_ARTY_F_SetVirtualGun;
		[_leady] call BIS_ARTY_F_initVehicle;
		_bob = format ["Leady is %1", _leady];
		[_bob, _typo, [false, true, false] ] call CBA_fnc_debug;
		_two = _dave createUnit ["BIS_ARTY_Virtual_Artillery", [(_posx-15), _posy, 0],[],0,"NONE"];
		[_two, _typo] call BIS_ARTY_F_SetVirtualGun;
		[_two] call BIS_ARTY_F_initVehicle;
		_bob = format ["Two is %1", _two];
		[_bob, _typo, [false, true, false] ] call CBA_fnc_debug;
		_three = _dave createUnit ["BIS_ARTY_Virtual_Artillery", [(_posx-30), _posy, 0],[],0,"NONE"];
		[_three, _typo] call BIS_ARTY_F_SetVirtualGun;
		[_three] call BIS_ARTY_F_initVehicle;
		_bob = format ["Three is %1", _three];
		[_bob, _typo, [false, true, false] ] call CBA_fnc_debug;
		{_x addMagazine _ammo; _x addMagazine _ammo;_x addMagazine _ammo; _x addMagazine _ammo;_x addMagazine _ammo; _x addMagazine _ammo;_x addMagazine _ammo; _x addMagazine _ammo;_x addMagazine _ammo; _x addMagazine _ammo;} forEach units _dave;
		_ted = _LogicGroup createUnit ["BIS_ARTY_Logic", [_posx+5, _posy, 0],[],0,"NONE"];
		switch (_j) do {
			case 0: {_gunbats set [count _gunbats, _ted];};
			case 1: {_rockbats set [count _rockbats, _ted];};
			case 2: {_wooshbats set [count _wooshbats, _ted];};
		};
		[_ted] call BIS_ARTY_F_initVehicle;
		{_ted addMagazine _ammo; _ted addMagazine _ammo;} forEach [1,2,3];
		_ted synchronizeObjectsAdd [_leady ,_two ,_three];
		_bob = format ["FDC is %1",_ted];
		[_bob, _typo, [false, true, false] ] call CBA_fnc_debug;	
	}; 
};

// ARTI Attacks
//init Variables
_temphe = ["TIMED", "HE", 0, 2400];
_temprock = ["TIMED", "HE", 0, 300];
_tempotrg = ["TIMED", "HE", 0, 150];
_lastbat = _wooshbats select ((count _wooshbats)-1);
_rockbats = _rockbats + _wooshbats;
_allbats = + _gunbats + _rockbats;
//{[_x, true] call BIS_ARTY_F_SetShellSpawn;} forEach _allbats;
{[_x, 300] call BIS_ARTY_F_SetDispersion;} forEach _gunbats;
{[_x, 400] call BIS_ARTY_F_SetDispersion;} forEach _rockbats;

// Debuggery //
_bob = format ["Amersham_1 = %1  Amersham_2 = %2  BakerSt_1 = %3  BakerSt_2 = %4  Chorleywood_1 = %5  Chorleywood_2 = %6  DollisHill_1 = %7  DollisHill_2 = %8  Eastcote_1 = %9  Eastcote_2 = %10  FinchleyRd_1 = %11  FinchleyRd_2 = %12  Rocketman_1 = %13  Rocketman_2 = %14  Woosh_1 = %15  Woosh_2 = %16  Woosh_3 = %17  Woosh_4 = %18", Amersham_1, Amersham_2, BakerSt_1, BakerSt_2, Chorleywood_1, Chorleywood_2, DollisHill_1, DollisHill_2, Eastcote_1, Eastcote_2, FinchleyRd_1, FinchleyRd_2, Rocketman_1, Rocketman_2, Woosh_1, Woosh_2, Woosh_3, Woosh_4];
[_bob, "artikey", [false, true, false] ] call CBA_fnc_debug;
_bob = format ["Gunbats = %1  Rockbats = %2  Wooshbats = %3  Allbats = %4", _gunbats, _rockbats, _wooshbats, _allbats];
[_bob, "artibats", [false, true, false] ] call CBA_fnc_debug;

_fire = {
	_bats = _this select 0;
	_temp = _this select 1;
	_trgs = _this select 2;
	for "_i" from 0 to ((count _bats)-1) do {
		if (((count _trgs) > 1) && {(count _trgs) == (count _bats)}) then {
			_tru = getMarkerPos (_trgs select _i);
		} else {_tru = getMarkerPos (_trgs select 0);};
		_trg = [(_tru select 0) + (120 -(random 240)), (_tru select 1) + (120 -(random 240))];
    	_trg set [2, (getTerrainHeightASL _trg)]; 
		_batty = _bats select _i;
		[_batty, "HE"] call BIS_ARTY_F_LoadMapRanges;
		if ([_batty, _trg, _temp select 1] call BIS_ARTY_F_PosInRange) then {
			[_batty, _trg, _temp] spawn BIS_ARTY_F_ExecuteTemplateMission;
			_bob = format ["Battery %1 Target %2 in range! %3 metres Min = %4 Max = %5", _batty, _trg, (_trg distance _batty), (_batty getVariable "ARTY_MIN_RANGE") , (_batty getVariable "ARTY_MAX_RANGE")];		
			[_bob, _salvo, [false, true, false] ] call CBA_fnc_debug;
		} else {
			_bob = format ["Battery %1 Target %2 out of range: %3 metres Min = %4 Max = %5", _batty, _trg, (_trg distance _batty), (_batty getVariable "ARTY_MIN_RANGE") , (_batty getVariable "ARTY_MAX_RANGE")];
			[_bob, _salvo, [false, true, false] ] call CBA_fnc_debug;
		};		
	};
};

// ARTI Attacks

//Salvo 1
_dest = ["targ_1"];
_salvo = "hqqmo";
[_rockbats, _temprock, _dest] call _fire;

//Salvo 2
_dest = ["Amersham", "Amersham", "BakerSt", "BakerSt", "Chorleywood", "Chorleywood", "DollisHill", "DollisHill", "Eastcote", "Eastcote", "FinchleyRd", "FinchleyRd"];
_salvo = "beachbums";
[_gunbats, _temphe, _dest] call _fire;

//Salvo 3
_salvo = "fivebyfive";
_targs = ["targ_2", "targ_3"];
for "_j" from 0 to 1 do {
	_dest = [_targs select _j];
	waitUntil {sleep 0.3; _lastbat getVariable "ARTY_COMPLETE";};
	[_rockbats, _temprock, _dest] call _fire;
};
sleep 280;
//Salvo 4
_salvo = "random1";
_randtargs = ["targ_4", "targ_5", "targ_6", "targ_7", "targ_8", "targ_9", "targ_10", "targ_11", "targ_12"];
_county = ((count _randtargs) -1);
_targs = [];
for "_i" from 0 to (_county) step 1 do {
	_randomno = round random (_county - _i);
	_targs set [_i, (_randtargs select _randomno)];
	_randtargs = _randtargs - [(_randtargs select _randomno)];
};
bob = format ["Random1 Final targs = %1", _targs];
[ _bob, "arti_random1", [false, true, false] ] call CBA_fnc_debug;
{[_x, 300] call BIS_ARTY_F_SetDispersion} forEach _rockbats;
for "_j" from 0 to _county step 1 do {
	sleep 140;
	waitUntil {sleep 0.3; _lastbat getVariable "ARTY_COMPLETE";};
	_dest = _targs select _j;
	[_rockbats, _temprock, _dest] call _fire;
};

//Salvo 5
waitUntil {sleep 0.3; _lastbat getVariable "ARTY_COMPLETE";};
_dest = ["Amersham", "Amersham", "BakerSt", "BakerSt", "Chorleywood", "Chorleywood", "DollisHill", "DollisHill", "Eastcote", "Eastcote", "FinchleyRd", "FinchleyRd"];
_salvo = "milkyjoe";
[_gunbats, _temphe, _dest] call _fire;

//Salvo 6
_dest = ["Amersham", "DollisHill", "Amersham", "Amersham", "DollisHill", "DollisHill"];
_salvo = "milkyjoe1";
[_rockbats, _temprock, _dest] call _fire;
sleep 100;
waitUntil {sleep 0.3; _lastbat getVariable "ARTY_COMPLETE";};

//Salvo 7
_dest = ["BakerSt", "Eastcote", "BakerSt", "BakerSt", "Eastcote", "Eastcote"];
_salvo ="milkyjoe2";	
[_rockbats, _temprock, _dest] call _fire;
sleep 100;
waitUntil {sleep 0.3; _lastbat getVariable "ARTY_COMPLETE";};	

//Salvo 8
_dest = ["Chorleywood", "FinchleyRd", "Chorleywood", "Chorleywood", "FinchleyRd", "FinchleyRd"];
_salvo ="milkyjoe3";
[_rockbats, _tempotrg, _dest] call _fire;
sleep 100;
waitUntil {sleep 0.3; _lastbat getVariable "ARTY_COMPLETE";};

//Clean up
{deletevehicle _x; sleep 0.3;} forEach units Amersham_1 + units Amersham_2 + units BakerSt_1 + units BakerSt_2 + units Chorleywood_1 + units Chorleywood_2 + units DollisHill_1 + units DollisHill_2 + units Eastcote_1 + units Eastcote_2 + units FinchleyRd_1 + units FinchleyRd_2 + units Rocketman_1 + units Rocketman_2 + units Woosh_1 + units Woosh_2 + units Woosh_3 + units Woosh_4 + _allbats;
_temphe = nil; _temprock = nil; _tempotrg = nil; _gunbats = nil; _rockbats = nil; _dest = nil; _allbats = nil; _tru = nil; _trg = nil; _i = nil; _batty = nil; _randtargs = nil; _targs = nil; _randomno = nil; _county = nil;
{deleteGroup _x;} forEach [Amersham_1, Amersham_2, BakerSt_1, BakerSt_2, Chorleywood_1, Chorleywood_2, DollisHill_1, DollisHill_2, Eastcote_1, Eastcote_2, FinchleyRd_1, FinchleyRd_2, Rocketman_1, Rocketman_2, Woosh_1, Woosh_2, Woosh_3, Woosh_4];
Amersham_1 = nil; Amersham_2 = nil; BakerSt_1 = nil; BakerSt_2 = nil; Chorleywood_1 = nil; Chorleywood_2 = nil; BucksFDC = nil; DollisHill_1 = nil; DollisHill_2 = nil; Eastcote_1 = nil; Eastcote_2 = nil; FinchleyRd_1 = nil; FinchleyRd_2 = nil; Rocketman_1 = nil; Rocketman_2 = nil; Woosh_1 = nil; Woosh_2 = nil; Woosh_3 = nil; Woosh_4 = nil;
_bob = format ["Rounds Complete"];
[_bob, "artisuccess", [false, true, false] ] call CBA_fnc_debug;