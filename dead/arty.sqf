private ["_arty", "_tgtarray", "_tgt", "_ammo", "_reloadtime", "_shellcount", "_tgtpos", "_i"];
_arty = _this select 0;
_tgtarray = _this select 1;

_tgt  = _tgtarray select 0;
_ammo  = getArtilleryAmmo [_arty] select 0;


//10 seconds to reload is for the
//longest reloading artillery piece. 
//MLRS can reload faster, but they get buggy.
_reloadtime = 10;

// The number of times you want the _arty to check for range
// and fire (if in range).
_shellcount = 10;

_arty addMagazineTurret [_ammo, [0]];

sleep _reloadtime;

// prevents firing at aircraft
if(isTouchingGround _tgt ) then {	

for "_i" from 1 to (_shellcount) do {
      _tgtpos = position _tgt;
      _isInRange = _tgtpos inRangeOfArtillery [[_arty], _ammo ];

     if (_isInRange) then {
	_arty doArtilleryFire [_tgtpos, _ammo, 1]; 
	_arty addMagazineTurret [_ammo, [0]];
               sleep _reloadtime;
           } else {
	//Try moving the target area marker	
	hint "Too close or far for artillery";
    };
};	
};

// mortar1 doArtilleryFire [[3000, 120, 1000], "8Rnd_82mm_Mo_shells", 3];
// https://forums.bistudio.com/topic/154838-finally-got-artillery-working-right/
// https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST
// https://community.bistudio.com/wiki/Arma_3_Assets