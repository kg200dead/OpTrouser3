player allowDammage false;
setViewDistance 3000;
enableCamShake true;
enableEngineArtillery true;
ST_FTHud_ShownUI=0;
if (!isnil "RUG_DSAI_TerminalDistance") then {
	RUG_DSAI_SIDES = [ "RUG_DSAIGER", "RUG_DSAIENG", "RUG_DSAISPA", "RUG_DSAISPA", "RUG_DSAIGER" ];
	RUG_CycleTime = 60;
};
if (local player && {ACRE_on}) then {execVM "acrehip\DIH_ACRE_vehRadios_special.sqf";};
_typo = typeOf player;
if (_typo == "I44_Man_B_Army_AB_CO_StenMk5") then {
	_bob = format ["chap %1 assigning teams player", name player];
	[_bob, "StartupClient", [false, true, false] ] call CBA_fnc_debug;
	switch (true) do 
	{
		case (player == Able_1): 
		{
			{_x assignTeam "GREEN";} forEach [Able_2, Able_7, Able_8, Able_9];
			{_x assignTeam "BLUE";} forEach [Able_3, Able_10, Able_11, Able_12];
		};
		case (player == Baker_1): 
		{
			{_x assignTeam "GREEN";} forEach [Baker_2, Baker_7, Baker_8, Baker_9];
			{_x assignTeam "BLUE";} forEach [Baker_3, Baker_10, Baker_11, Baker_12];
		};
		case (player == Charlie_1): 
		{
			{_x assignTeam "GREEN";} forEach [Charlie_2, Charlie_7, Charlie_8, Charlie_9];
			{_x assignTeam "BLUE";} forEach [Charlie_3, Charlie_10, Charlie_11, Charlie_12];
		};
		case (player == Dog_1): 
		{
			{_x assignTeam "GREEN";} forEach [Dog_2, Dog_7, Dog_8, Dog_9];
			{_x assignTeam "BLUE";} forEach [Dog_3, Dog_10, Dog_11, Dog_12];
		};
		default 
		{
		_bob = format ["Problem with chap: %1 who is %2", player, name player];
		[_bob, "ArmUp-West", [false, true, false] ] call CBA_fnc_debug;
		};
	};
};
nul=[] execVM "dead\sirens.sqf"; 