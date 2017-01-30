private ["_blokes", "_kite", "_kites", "_grp", "_i", "_j", "_bob", "_stuff", "_item"];
_bob = format ["_this = %1", _this select 0];
[ _bob, "drop_setup", [true, true, false] ] call CBA_fnc_debug;
_kites =[];
_grp = group (_this select 0);
_blokes = units _grp;
{
	_kite = vehicle _x;
	_kites set [count _kites, _kite]; 
} forEach _blokes;
_bob = format ["_kites = %1", _kites];
[ _bob, "drop_setup", [true, true, false] ] call CBA_fnc_debug;
	{
		_x animate["ramp_bottom",1];
		_x animate["ramp_top",1];
	} forEach _kites;	
// Get paras to jump out and open their chutes
for "_i" from 0 to 3 do {
	_bob = format ["_boys of %1 = %2", _kites select _i, assignedCargo (_kites select _i)];
	[ _bob, "drop_setup", [true, true, false] ] call CBA_fnc_debug;
	{
		_x action ["Eject", vehicle _x];
		_x action ["OpenParachute", _x];
		
// Randomly steal things from paras
		if ((random 10) > 9)  then {
			if ((round random 1) > 0) then {
				_stuff = weapons _x;
				for "_j" from 0 to (round random ((count _stuff) -1)) step 1 do {
				_item = round random ((count _stuff) -1);
				_x removeWeapon (_stuff select _item);
				};
			};
			if ((round random 1) > 0) then {
				_stuff = magazines _x;
				for "_j" from 0 to (round random ((count _stuff) -1)) step 1 do {
				_item = round random ((count _stuff) -1);
				_x removeMagazine (_stuff select _item);
				};
			};
			if ((round random 1) > 0) then {
				_stuff = items _x;
				for "_j" from 0 to (round random ((count _stuff) -1)) step 1 do {
				_item = round random ((count _stuff) -1);
				_x removeItems (_stuff select _item);
				};
			};
		};
	} forEach assignedCargo (_kites select _i);
};