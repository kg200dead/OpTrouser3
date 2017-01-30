private ["_ride", "_rides", "_i"];
if ((name player == HCName) || {(!HCPresent) && isServer}) then {
	_rides = _this select 0;
	for "_i" from 0 to ((count _rides) -1) step 1 do {
		_ride = vehicle (_rides select _i);
		_ride setPosATL [-1000,-1000,1000];
		{deleteVehicle _x} forEach crew _ride + [_ride];
		sleep 0.01;
	};
	if ((fiter1 in _rides) || {fiter2 in _rides}) then {{deleteVehicle _x; sleep 0.1;} forEach [BoomBox1, BoomBox2, BombsAway];};
};
_rides = nil;
_ride = nil;