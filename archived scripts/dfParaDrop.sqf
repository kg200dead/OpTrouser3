private ["_kite", "_ordr", "_box"];
_kite = _this select 0;
switch (_kite) do 
{
	case Flight_1: 
	{
		_ordr = [Able_1, Able_2, Able_4, Able_7, Able_5, Able_8, Able_6, Able_9, Able_3, Able_10, Able_11, Able_12];
		_box =  [missionNamespace getVariable "f1c1", missionNamespace getVariable "f1c2", missionNamespace getVariable "f1c3"];
	};
	case Flight_2: 
	{
		_ordr = [Baker_1, Baker_2, Baker_4, Baker_7, Baker_5, Baker_8, Baker_6, Baker_9, Baker_3, Baker_10, Baker_11, Baker_12];
		_box =  [missionNamespace getVariable "f2c1", missionNamespace getVariable "f2c2", missionNamespace getVariable "f2c3"];
	};
	case Flight_3: 
	{
		_ordr = [Charlie_1, Charlie_2, Charlie_4, Charlie_7, Charlie_5, Charlie_8, Charlie_6, Charlie_9, Charlie_3, Charlie_10, Charlie_11, Charlie_12];
		_box =  [missionNamespace getVariable "f3c1", missionNamespace getVariable "f3c2", missionNamespace getVariable "f3c3"];
	};
	case Flight_4: 
	{
		_ordr = [Dog_1, Dog_2, Dog_4, Dog_7, Dog_5, Dog_8, Dog_6, Dog_9, Dog_3, Dog_10, Dog_11, Dog_12];
		_box = [missionNamespace getVariable "f4c1", missionNamespace getVariable "f4c2", missionNamespace getVariable "f4c3"];
	};
	default
	{
		Hint format ["drop cock up %1", _kite];
	};
};
{
	_x action ["EJECT", _kite];
	_x leavevehicle _kite;
	sleep 0.3;
	if ((random 10) > 9)  then {
	_weps = weapons _x;
	_mags = magazines _x;
	if ((round random 1) > 0) then {
		for "_i" from 0 to (round random ((count _weps) -1)) step 1 do {
			_sel = round random ((count _weps) -1);
			_x removeWeapon (_weps select _sel);
		};
	} else {
		for "_i" from 0 to (round random ((count _mags) -1)) step 1 do {
			_sel = round random ((count _mags) -1);
			_x removeMagazine (_mags select _sel);
		};
	};
};
} forEach _ordr;
[_kite, _box select 0] spawn dfKitDrop;
sleep 0.4;
[_kite, _box select 1] spawn dfKitDrop;
sleep 0.4;
[_kite, _box select 2] spawn dfKitDrop;
_ordr = nil;
_box = nil;