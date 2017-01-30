private ["_plane", "_dave", "_lights"];
if (hasinterface) then {
	cutText ["Red light on! Stand up! Hook up! Wait for the green...", "PLAIN DOWN"];
	titleFadeOut 4; 
	_plane = vehicle player;
	switch (_plane) do 
	{
		case Flight_1:
		{
			Lump_1 =  createVehicle ["#lightpoint", (position _plane),[],0,""]; 
			_dave = Lump_1;
		};
		case Flight_2:
		{
			Lump_2 = createVehicle ["#lightpoint", (position _plane),[],0,""]; 
			_dave = Lump_2;
		};
		case Flight_3:
		{
			Lump_3 = createVehicle ["#lightpoint", (position _plane),[],0,""]; 
			_dave = Lump_3;
		};
		case Flight_4:
		{
			Lump_4 = createVehicle ["#lightpoint", (position _plane),[],0,""]; 
			_dave = Lump_4;
		};
		default 
		{
			hint format ["problems problems %1 doesn't know where %2 is", player, _plane];
		};
	};
	_dave setLightBrightness 0.0075;
	_dave setLightAmbient[1.3, -0.2, -0.8];
	_dave setLightColor[.9, -0.2, -0.8];
	_dave attachTo [_plane, [0.8,0.1,0.5], "pos_cargo"];
	_dave setDir -90;
	hint parseText "<t color='#ff0000'>RED LIGHT</t>";
};