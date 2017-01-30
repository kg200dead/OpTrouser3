private ["_ck"];
if (!hasinterface) exitWith {};
_ck = true;
while {sleep 29; true} do {
	switch (siren_on) do {
		case true: {
			_ck = false;
			siren_1 say3D ["raidloop",1,1];
			siren_2 say3D ["raidloop",1,1];
		};
		case false: {
			if (!_ck) then {
				siren_1 say3D ["allclear",1,1];
				siren_2 say3D ["allclear",1,1];
				_ck = true;
			};
		};
	};
};