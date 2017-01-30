private ["_source","_bob"];
_source = _this select 0;

//Debuggery
//_bob = format ["Script fired for %1 with noisy %2", _source, noisy];
//[ _bob, "siren_fired", [true, true, false] ] call CBA_fnc_debug;
//End 

if (noisy >= 2) exitWith {};
noisy = noisy + 1;
publicvariable "noisy";

//Debuggery
//_bob = format ["Script for %1 passed noisy with %2", _source, noisy];
//[ _bob, "siren_noisypass", [true, true, false] ] call CBA_fnc_debug;
//End 

while {siren_on} do {
	_source say3D "raidloop";
	sleep 25;
};
_source say3D "allclear";
sleep 40.15;
noisy = 0;
publicvariable "noisy";

//Debuggery
//_bob = format ["Script hit all clear for %1", _source];
//[ _bob, "siren_allclear", [true, true, false] ] call CBA_fnc_debug;
//End