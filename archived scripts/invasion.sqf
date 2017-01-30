private ["_dave", "_defence"];
if ((name player == HCName) || {(!HCPresent) && isServer}) then {
	_defence =[] execVM "dead\inv_mosdef.sqf";
	waituntil {sleep 10; scriptDone _defence};
	nul=[] execVM "dead\inv_arti.sqf";
	_dave = (round random 6) + 4;
	waituntil {sleep 600; (daytime > _dave)}; 
	nul=[] execVM "dead\inv_beachboys.sqf";
};