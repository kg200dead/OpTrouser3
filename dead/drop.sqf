private ["_blokes", "_kites", "_i","_bob"];
_kites =[];
_blokes =[];
{
	_kites set [count _kites, _x];
} foreach _this;
//DEBUG
_bob = format ["_kites = %1", _kites];
[ _bob, "drop_setup_kites", [true, true, false] ] call CBA_fnc_debug;
//END
{
		_x animateDoor ['Door_1_source', 1];
} forEach _kites;	
// Get paras to jump out and open their chutes
for "_i" from 0 to 3 do {
	_bob = format ["boys of %1 = %2", _kites select _i, assignedCargo (_kites select _i)];
	[ _bob, "drop_setup", [true, true, false] ] call CBA_fnc_debug;
	{
		_x action ["getout", (vehicle _x)];
		sleep .1;
// Randomly steal things from paras here 

	} forEach assignedCargo (_kites select _i);
	sleep .1;
};