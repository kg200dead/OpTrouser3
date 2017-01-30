//[] execVM "briefing.sqf";
DAC_Basic_Value = 0; execVM "DAC\DAC_Config_Creator.sqf";
siren_on = false;
ACRE_on = false;
publicvariable "siren_on";
publicvariable "ACRE_on";
noisy = 0;
publicvariable "noisy";
/*
if(isNil "paramsArray") then {paramsArray=[2,3000,0,0]};
Dead_DAC_Ready = false;
waitUntil { !isNil "BIS_MPF_InitDone"}; 
waitUntil { BIS_MPF_InitDone};
//startLoadingScreen ["Putting Trousers on"];
/*
switch (paramsArray select 0) do {
	case 0: {setTerrainGrid 50};
	case 1: {setTerrainGrid 25};
	case 2: {setTerrainGrid 12.5};
	case 3: {setTerrainGrid 6.25};
	case 4: {setTerrainGrid 3.125};
};
setViewDistance (paramsArray select 1);
if(paramsArray select 2 == 1) then{
	if (isServer) then {
		HCPresent = true;
		publicVariable "HCPresent";
	};
	if (!hasInterface && {!isServer}) then{
		HCName = name player; 
		publicVariable "HCName";
	};
} else{
	if(isServer) then {
		HCPresent = false;
		HCName = "NOONE";
		publicVariable "HCPresent";
		publicVariable "HCName";
	};
};
if(paramsArray select 3 == 1) then{
		ACRE_on = true;
		publicVariable "ACRE_on";
} else {
		ACRE_on = false;
		publicVariable "ACRE_on";
};
if(!isServer) then {waitUntil{!isNull player}};
if ((!isDedicated) && {player != player}) then {
    waitUntil {player == player};
};
endLoadingScreen;  
processInitCommands;
finishMissionInit;
*/