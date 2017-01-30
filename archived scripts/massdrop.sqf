private ["_dave"];
if (hasinterface) then {
	switch (vehicle player) do 
	{
		case Flight_1:
		{
			_dave = Lump_1;
			_lights = Lights_1;
		};
		case Flight_2:
		{
			_dave = Lump_2;
			_lights = Lights_2;
		};
		case Flight_3:
		{
			_dave = Lump_3;
			_lights = Lights_3;
		};
		case Flight_4:
		{
			_dave = Lump_4;
			_lights = Lights_4;
		};
	};
	_dave setLightBrightness 0.004;
	_dave setLightAmbient[0, 0.8, 0];
	_dave setLightColor[0, 1.0, 0];
	hint parseText "<t color='#00ff00'>GREEN LIGHT</t>";
	1 cutText ["GO! GO! GO!", "PLAIN DOWN", 0];
	1 cutFadeOut 4;
};
if (isServer) then {
	nul = [Flight_1] spawn dfParaDrop;
	nul = [Flight_2] spawn dfParaDrop;
	nul = [Flight_3] spawn dfParaDrop;
	nul = [Flight_4] spawn dfParaDrop;
};
if (hasinterface) then {
sleep 25;
deleteVehicle _dave;
deleteVehicle _lights;	
	};