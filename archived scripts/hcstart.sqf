private ["_grp", "_pos", "_init", "_wps", "_i", "_id", "_wp", "_j"];
fiters = createGroup West; ci1 = creategroup West; ci1a = creategroup West; ci2 = creategroup West; ci2a = creategroup West; ci3 = creategroup West; ci3a = creategroup West;
paks = creategroup East; pz1 = creategroup East; pz2 = creategroup East;
Amersham_1 = createGroup sideLogic; Amersham_2 = createGroup sideLogic; BakerSt_1 = createGroup sideLogic; BakerSt_2 = createGroup sideLogic; Chorleywood_1 = createGroup sideLogic; Chorleywood_2 = createGroup sideLogic; DollisHill_1 = createGroup sideLogic; DollisHill_2 = createGroup sideLogic; Eastcote_1 = createGroup sideLogic; Eastcote_2 = createGroup sideLogic; FinchleyRd_1 = createGroup sideLogic; FinchleyRd_2 = createGroup sideLogic; Rocketman_1 = createGroup sideLogic; Rocketman_2 = createGroup sideLogic; Woosh_1 = createGroup sideLogic; Woosh_2 = createGroup sideLogic; Woosh_3 = createGroup sideLogic; Woosh_4 = createGroup sideLogic;
_grp = createGroup sideLogic;
siren_on = false;
publicvariable "siren_on";
sortie = 820 + round (random 420);
resup = 1.92;
inv = 3.5;
invading = false;
DAC_Extern = _grp createUnit ["DAC_Source_Extern", [0, 0, 0], [], 0, "NONE"];
publicVariable "DAC_Extern";
ARTY_Logic = _grp createUnit ["Logic", [0, 0, 10], [], 0, "NONE"];
publicVariable "ARTY_Logic";
DAC_Pos_W = _grp createUnit ["Logic", [7083.2246,5390.5181,0], [], 0, "NONE"];
publicVariable "DAC_Pos_W";
DAC_Pos_E = _grp createUnit ["Logic", [-2799.2734,5066.0713,0], [], 0, "NONE"];
publicVariable "DAC_Pos_E";
ARTY_Logic synchronizeObjectsAdd [ARTI_1_1, ARTI_1_2, ARTI_1_3, ARTI_1_4];
ARTY_Logic synchronizeObjectsAdd [ARTI_2_1, ARTI_2_2, ARTI_2_3, ARTI_2_4];	
ARTY_Logic synchronizeObjectsAdd [MARTY_1_1, MARTY_1_2, MARTY_1_3, MARTY_1_4, MARTY_1_5, MARTY_1_6];	
ARTY_Logic synchronizeObjectsAdd [MARTY_2_1, MARTY_2_2, MARTY_2_3, MARTY_2_4, MARTY_2_5, MARTY_2_6];	
ARTY_Logic synchronizeObjectsAdd [SMARTY_1, SMARTY_2, SMARTY_3, SMARTY_4];	
_pos = [[412.10211,3199.0068,0], [3226.2681,686.85742,0], [-57.074169,1091.7368,0], [4119.7305,2302.5173,0], [765.10034,657.19604,0], [3831.0034,3205.5762,0], [2696.0732,3900.5327,0], [3038.4001,3838.0464,0]];
_init = ["this setdir 5; this setVariable[""Link"", c1];", "this setdir 5; this setVariable[""Link"", c2];", "this setdir 5; this setVariable[""Link"", c3];", "this setdir 5; this setVariable[""Link"", c4];", "this setdir 5; this setVariable[""Link"", mc1];", "this setdir 1; this setVariable[""Link"", z10];", "this setdir 3; this setVariable[""Link"", z10];", "this setdir 2; this setVariable[""Link"", z10];"];
_wps = [[[380.49985,3280.9102,0]], [[3213.1738,669.20801,0]], [[-5.5831385,840.53296,0]], [[4109.1338,35.889088,0]], [[668.28192,447.57956,0]], [[983.92352,2278.2029,0], [966.65558,2374.311,0], [1144.243,2156.2529,0], [1393.1707,2360.0029,0], [1467.1863,2493.7295,0], [1164.2683,1057.7306,0], [1214.2246,978.46875,0], [1582.4755,1130.6759,0], [1620.0565,1310.3926,0], [1781.3131,1299.4084,0], [2569.4619,778.16064,0], [2664.8611,731.70581,0], [3193.9036,672.53345,0], [2833.0386,1517.9595,0], [2439.4946,1977.7239,0], [2507.2786,2011.1389,0], [2771.8711,2248.8369,0], [2765.1033,2377.4763,0], [3169.0239,2764.29,0], [3238.4326,2851.5605,0], [3142.9072,3084.6494,0], [1978.2028,2746.3965,0], [1620.7715,2686.4082,0], [1671.5521,2418.155,0], [1931.084,2440.7507,0], [2342.5203,2339.7139,0], [1962.134,3390.6873,0], [2100.7705,3561.9441,0], [360.28622,3409.4128,0], [286.96762,3242.8606,0], [405.10635,3156.9619,0], [132.04991,1209.7996,0], [98.341835,930.46289,0], [58.685268,822.49243,0], [1340.4404,3293.8921,0]], [[1440.1798,2636.5891,0], [1860.1753,2456.2019,0], [2356.0613,2378.4873,0], [2637.8708,2304.4861,0], [2952.8157,2195.667,0], [2514.6418,2039.5862,0], [2402.5552,1974.4387,0], [1781.9393,1312.009,0], [1618.6008,1289.9312,0], [1348.6864,1321.677,0], [1573.9434,1154.2397,0], [1460.7709,1252.0925,0], [1212.6738,928.48315,0], [586.10077,763.06079,0], [1372.0919,2086.9612,0], [1622.1849,2472.5813,0], [1619.2894,2644.7104,0], [1076.2205,2622.2974,0], [894.0199,2369.1538,0], [2429.4771,2345.3252,0], [2180.1582,1860.1143,0], [2733.3191,640.45605,0], [1975.1639,1234.4839,0], [1992.4849,3477.3691,0]], [[1440.1798,2636.5891,0], [1860.1753,2456.2019,0], [2356.0613,2378.4873,0], [2637.8708,2304.4861,0], [2952.8157,2195.667,0], [2514.6418,2039.5862,0], [2402.5552,1974.4387,0], [1781.9393,1312.009,0], [1618.6008,1289.9312,0], [1348.6864,1321.677,0], [1573.9434,1154.2397,0], [1460.7709,1252.0925,0], [1212.6738,928.48315,0], [586.10077,763.06079,0], [1372.0919,2086.9612,0], [1622.1849,2472.5813,0], [1619.2894,2644.7104,0], [1076.2205,2622.2974,0], [894.0199,2369.1538,0], [2429.4771,2345.3252,0], [2180.1582,1860.1143,0], [2733.3191,640.45605,0], [1975.1639,1234.4839,0], [1992.4849,3477.3691,0]]];
for "_i" from 0 to (count _init -1) do {
	_grp = createGroup sideLogic;
	_id =  "Logic" createUnit [ (_pos select _i), _grp, (_init select _i), 0.60000002, "PRIVATE"];
	_wp = _wps select _i;
	for "_j" from 0 to (count _wp -1) do {
		_grp addWaypoint [(_wp select _j), 0];
		[ _grp, (_j+1)] setWaypointType "AND";
	};
};
for "_i" from 0 to 13 do {
	switch (_i) do {
		case 0: {
			z1 = createTrigger ["EmptyDetector", [2606.1602,2060.3083,0]];
			z1 setTriggerArea[600,600,0, false];
			z1 setTriggerActivation ["LOGIC", "PRESENT", true];
			z1 setTriggerStatements ["time >3", "nul=[""z1"",[1,0,1],[""7"",4,30,8],[18],[18],[],[0,0,0,0,0]] spawn DAC_Zone;", ""];
			z1 setTriggerTimeout [0, 0, 0, true];
			publicVariable "z1";
		};
		case 1: {
			z2 = createTrigger ["EmptyDetector", [1828.1923,3449.6541,0]];
			z2 setTriggerArea[350,350,0,false];
			z2 setTriggerActivation ["LOGIC", "PRESENT", true];
			z2 setTriggerStatements ["time >3", "nul=[""z2"",[1,0,1],[""1"",4,5,5],[4],[4],[],[0,0,0,0,0]] spawn DAC_Zone;", ""];
			z2 setTriggerTimeout [0, 0, 0, true];
			publicVariable "z2";
		};
		case 2: {
			z3 = createTrigger ["EmptyDetector", [1352.9851,1086.1484,0]];
			z3 setTriggerArea[400,400,0,false];
			z3 setTriggerActivation ["LOGIC", "PRESENT", true];
			z3 setTriggerStatements ["time >3", "nul=[""z3"",[1,0,1],[""3"",4,10,5],[8],[4],[],[0,0,0,0,0]] spawn DAC_Zone;", ""];
			z3 setTriggerTimeout [0, 0, 0, true];
			publicVariable "z3";
		};
		case 3: {
			z4 = createTrigger ["EmptyDetector", [1241.5656,2522.0552,0]];
			z4 setTriggerArea[550,550,0,false];
			z4 setTriggerActivation ["LOGIC", "PRESENT", true];
			z4 setTriggerStatements ["time >3", "nul=[""z4"",[1,0,1],[""5"",4,10,7],[5],[5],[],[0,0,0,0,0]] spawn DAC_Zone;", ""];
			z4 setTriggerTimeout [0, 0, 0, true];
			publicVariable "z4";
		};
		case 4: {
			c1 = createTrigger ["EmptyDetector", [377.91187,3256.5747,0]];
			c1 setTriggerArea[200,200,0,false];
			c1 setTriggerActivation ["LOGIC", "PRESENT", true];
			c1 setTriggerStatements ["time >3", "nul=[""c1"",[21,0,1],[""3"",3,3,10],[],[],[1,1,200,0,100,20,[z1,z2,z3,z4]],[0,0,0,6,0]] spawn DAC_Zone;", ""];
			c1 setTriggerTimeout [0, 0, 0, true];
			publicVariable "c1";
		};
		case 5: {
			c2 = createTrigger ["EmptyDetector", [2915.5208,683.44873,0]];
			c2 setTriggerArea[450,450,0,false];
			c2 setTriggerActivation ["LOGIC", "PRESENT", true];
			c2 setTriggerStatements ["time >3", "nul=[""c2"",[22,0,1],[""4"",4,3,10],[3],[3],[1,1,80,0,100,20,[z1,z3]],[0,0,0,6,0]] spawn DAC_Zone;", ""];
			c2 setTriggerTimeout [0, 0, 0, true];
			publicVariable "c2";
		};
		case 6: {
			c3 = createTrigger ["EmptyDetector", [84.209961,845.17041,0]];
			c3 setTriggerArea[200,200,0,false];
			c3 setTriggerActivation ["LOGIC", "PRESENT", true];
			c3 setTriggerStatements ["time >3", "nul=[""c3"",[23,0,1],[""4"",3,3,15],[""2"",3,1,15],[""2"",3,1,15],[1,1,200,0,100,30,[z1,z3,z4]],[0,0,0,6,0]] spawn DAC_Zone;", ""];
			c3 setTriggerTimeout [0, 0, 0, true];
			publicVariable "c3";
		};
		case 7: {
			c4 = createTrigger ["EmptyDetector", [3854.5313,2143.8335,0]];
			c4 setTriggerArea[300,300,0,false];
			c4 setTriggerActivation ["LOGIC", "PRESENT", true];
			c4 setTriggerStatements ["time >3", "nul=[""c4"",[24,0,1],[""3"",4,3,10],[""4"",2,1,10],[],[1,1,10,0,100,30,[z1,z5]],[0,0,0,0,0]] spawn DAC_Zone;", ""];
			c4 setTriggerTimeout [0, 0, 0, true];
			publicVariable "c4";
		};
		case 8: {
			mc1 = createTrigger ["EmptyDetector", [702.89374,518.75537,0]];
			mc1 setTriggerArea[200,200,0,false];
			mc1 setTriggerActivation ["LOGIC", "PRESENT", true];
			mc1 setTriggerStatements ["time >3", "nul=[""mc1"",[31,0,1],[""6"",3,3,20],[],[],[1,1,200,0,100,20,[z10]],[2,2,2,2,0]] spawn DAC_Zone;", ""];
			mc1 setTriggerTimeout [0, 0, 0, true];
			publicVariable "mc1";
		};
		case 9: {
			z10 = createTrigger ["EmptyDetector", [2026.5631,2032.4133,0]];
			z10 setTriggerArea [2000,2000,0,true];
			z10 setTriggerActivation ["LOGIC", "PRESENT", true];
			z10 setTriggerStatements ["time >3", "nul=[""z10"",[1,0,1],[20],[10],[10],[],[0,0,0,0,0]] spawn DAC_Zone;", ""];
			z10 setTriggerTimeout [0, 0, 0, true];
			publicVariable "z10";
		};	
		case 10: {
			Resupply = createTrigger ["EmptyDetector", [-2421.1118,5773.958,0]];
			Resupply setTriggerArea[10,10,0,false];
			Resupply setTriggerActivation ["LOGIC","PRESENT",true];
			if (HCPresent) then {
				Resupply setTriggerStatements ["daytime > resup && {HCName == name player}", "nul = [] spawn dfResupply; [""Resupply fired by HC"", ""hcstartdebug"", [false, true, false] ] call CBA_fnc_debug;", ""];
			} else {
				Resupply setTriggerStatements ["daytime > resup && {isServer}", "nul = [] spawn dfResupply; [""Resupply fired by server"", ""hcstartdebug"", [false, true, false] ] call CBA_fnc_debug;", ""];
			};
			publicVariable "Resupply";
		};
		case 11: {
			Fiter_sortie = createTrigger ["EmptyDetector", [-2146.7456,5774.916,0]];
			Fiter_sortie setTriggerArea[10,10,0,false];
			Fiter_sortie setTriggerActivation ["LOGIC","PRESENT",true];
			if (HCPresent) then {
				Fiter_sortie setTriggerStatements ["time > sortie && {HCName == name player}", "nul=[] spawn dfFiters;  [""Fiters fired by HC"", ""hcstartdebug"", [false, true, false] ] call CBA_fnc_debug;", ""];
			} else {
				Fiter_sortie setTriggerStatements ["time > sortie && {isServer}", "nul=[] spawn dfFiters; [""Fiters fired by server"", ""hcstartdebug"", [false, true, false] ] call CBA_fnc_debug;", ""];
			};
			publicVariable "Fiter_sortie";
		};
		case 12: {
			Invasion = createTrigger ["EmptyDetector", [-2678.4612,5760.5249,0]];
			Invasion setTriggerArea[10,10,0,false];
			Invasion setTriggerActivation ["LOGIC","PRESENT",true];
			if (HCPresent) then {
				Invasion setTriggerStatements ["daytime > inv && {HCName == name player}", "nul=[] execVM ""dead\invasion.sqf"";  [""Invasion fired by HC"", ""hcstartdebug"", [false, true, false] ] call CBA_fnc_debug;", ""];
			} else {
				Invasion setTriggerStatements ["daytime > inv && {isServer}", "nul=[] execVM ""dead\invasion.sqf"";  [""Invasion fired by HC"", ""hcstartdebug"", [false, true, false] ] call CBA_fnc_debug;", ""];
			};
			publicVariable "Invasion";
		};
		case 13: {
			Raid_Detect = createTrigger ["EmptyDetector", [2191,2412,0]];
			Raid_Detect setTriggerArea[4800,4800,0,false];
			Raid_Detect setTriggerActivation ["WEST","PRESENT",true];
			Raid_Detect setTriggerStatements ["this && {{_x isKindOf ""air""} count thislist > 0}", "siren_on=true; publicvariable ""siren_on"";", "siren_on=false; publicvariable ""siren_on"";"];
			publicVariable "Raid_Detect";
		};		
	};	
};
nul = [2] execVM "tpwcas\tpwcas_script_init.sqf"; 
if (HCPresent) then {
	_id = nil; _grp = []; _wps = []; _wp = []; _init = []; _id = owner HeadlessChicken;
	{
		switch (side _x) do {
			case east: {
				{_grp set [(count _grp), _x]} foreach units _x;
			};
			case resistance: {
				{_wps set [(count _wps), _x]} foreach units _x;
			};
			case civilian: {
				{_wp set [(count _wp), _x]} foreach units _x;
			};
			case "AMBIENT LIFE": {
				{_init set [(count _init), _x]} foreach units _x;
			};
		}; 
	} foreach allGroups;
	{_x setOwner _id} foreach _grp;
	{_x setOwner _id} foreach _wps;
	{_x setOwner _id} foreach _wp;
	{_x setOwner _id} foreach _init;
	//{_x setOwner _id} forEach units Ocelot;
};
_grp = nil; _i = nil; _pos = nil; _init = nil; _wps = nil; _id = nil; _wp = nil; _j = nil;
sleep 25;
waitUntil {sleep 10; (DAC_Basic_Value > 0)}; 
waituntil {sleep 10; (Dead_DAC_Ready)};
{
	waituntil {sleep 1; DAC_Release_Action == 0};
	nul=[group _x,1,[z10],10,2,1,[1,1,1],0,false] spawn DAC_fInsertGroup;
} forEach [Maq_1, Maq_2, Maq_3, Maq_4, Maq_5, Maq_6];