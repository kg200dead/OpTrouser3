private ["_jabo", "_magsjb1", "_magsjb2", "_timer"];
_jabo = true;
fiters reveal [BoomBox1, 4];
fiters reveal [BoomBox2, 4];	
fiter1 doWatch BoomBox1;
fiter2 doWatch BoomBox2;
fiter1 selectweapon "I44_BombLauncherGP250";
fiter2 selectweapon "I44_Rocket_Launcher";	
fiter1 doTarget BoomBox1;
fiter2 doTarget BoomBox2;
_timer = time + 300;
while {sleep 5;_jabo} do 
{
	fiter1 doFire BoomBox1;
	fiter2 doFire BoomBox2;
	_magsjb1 = (vehicle fiter1) ammo "I44_BombLauncherGP250";
	_magsjb2 = (vehicle fiter2) ammo "I44_Rocket_Launcher";
	if ((time>=_timer) || {_magsjb1==0} || {_magsjb2<=2}) then {_jabo = false};
};
[fiter1, fiter2] doWatch objNull;
[fiter1, fiter2] doTarget objNull;
{deleteVehicle _x;} forEach [BoomBox1, BoomBox2, BombsAway];
/*_jaboexfil = fiters addWaypoint [getMarkerPos "exfil", 0];
_jaboexfil setWaypointStatements ["true", "nul=[(units fiters)] spawn dfDSpawnAir;"];
_jaboexfil setWaypointType "MOVE";
_jaboexfil setWaypointSpeed "NORMAL";
_jaboexfil setWaypointBehaviour "AWARE";
_jaboexfil setWaypointCombatMode "RED";
_jaboexfil setWaypointFormation "WEDGE";	
_jaboexfil setWaypointCompletionRadius 600;
*/
_jabo = nil;
_magsjb1 = nil;
_magsjb2 = nil;     