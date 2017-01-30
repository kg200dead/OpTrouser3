private ["_chap", "_typo"];
_chap = _this select 0;
_typo = typeOf _chap;
removeAllWeapons _chap;
removeBackPack _chap;
removeAllItems _chap;
_chap removeWeapon "ItemRadio";
_chap removeWeapon "ItemGPS";
switch (_typo) do 
{
	case "I44_Man_B_Army_AB_CO_StenMk5": 
	{
		{
			_chap addMagazine "I44_32rd_9x19_Ball_Sten";
			_chap addMagazine "I44_6rd_12x20R_Ball_WebleyMk6";
		} forEach [1,2,3,4,5,6,7,8]; 
		{
			_chap addMagazine "I44_HandGrenade_No36M";
			_chap addMagazine "I44_6rd_12x20R_Ball_WebleyMk6";
		} forEach [1,2]; 
		
		_chap addWeapon "I44_StenMk5"; 
		_chap addWeapon "I44_WebleyMk6";
		_chap addWeapon "Binocular"; 
		_chap addWeapon "ItemMap"; 
		_chap addBackpack "I44_Bag_BABSten";
	}; 
	case "I44_Man_B_Army_AB_NCO_StenMk5": 
	{
		{
			_chap addMagazine "I44_32rd_9x19_Ball_Sten";
			_chap addMagazine "I44_6rd_12x20R_Ball_WebleyMk6";
			_chap addMagazine "I44_6rd_12x20R_Ball_WebleyMk6";
		} forEach [1,2,3,4,5,6,7,8]; 
		{
			_chap addMagazine "I44_HandGrenade_No36M";
			_chap addMagazine "I44_6rd_12x20R_Ball_WebleyMk6";
		} forEach [1,2]; 
		
		_chap addWeapon "I44_StenMk5"; 
		_chap addWeapon "I44_WebleyMk6";
		_chap addWeapon "Binocular"; 
		_chap addWeapon "ItemMap"; 
		_chap addBackpack "I44_Bag_BABSten";
	}; 
	case "I44_Man_B_Army_AB_SMLENo4Mk1_No82": 
	{
		{_chap addMagazine "I44_10rd_77x56R_Ball_LeeEnfield"} forEach [1,2,3,4,5,6,7,8]; 
		{_chap addMagazine "I44_HandGrenade_No36M"; 
			_chap addMagazine "I44_10rd_77x56R_Ball_LeeEnfield";
		} forEach [1,2]; 
		
		_chap addWeapon "I44_LeeEnfieldNo4Mk1"; 
		_chap addBackpack "I44_Bag_BABNo4Mk1";
	}; 
	case "I44_Man_B_Army_AB_ATCrew_SMLEdNo4Mk1": 
	{
		{_chap addMagazine "I44_10rd_77x56R_Ball_LeeEnfield"} forEach [1,2,3,4,5,6]; 
		{_chap addMagazine "I44_HandGrenade_No36M";
			_chap addMagazine "I44_Grenade_PIATMk3";
		} forEach [1,2]; 
		
		_chap addWeapon "I44_LeeEnfieldNo4Mk1"; 
		_chap addBackpack "I44_Bag_BABPIAT";
	}; 
	case "I44_Man_B_Army_AB_PIAT": 
	{		
		{_chap addMagazine "I44_6rd_12x20R_Ball_WebleyMk6";} forEach [1,2,3,4,5,6,7,8]; 
		{
			_chap addMagazine "I44_Grenade_PIATMk3";
			_chap addMagazine "I44_Grenade_PIATMk3";
			_chap addMagazine "I44_HandGrenade_No36M";
			_chap addMagazine "I44_6rd_12x20R_Ball_WebleyMk6";
		} forEach [1,2]; 
		
		_chap addWeapon "Binocular";
		_chap addWeapon "I44_WebleyMk6";
		_chap addWeapon "I44_PIAT"; 
		_chap addBackpack "I44_Bag_BABPIAT";
	}; 
	case "I44_Man_B_Army_AB_Medic": 
	{
		{_chap addMagazine "I44_10rd_77x56R_Ball_LeeEnfield";} forEach [1,2,3,4,5,6,7,8]; 
		{_chap addMagazine "I44_HandGrenade_No36M";} forEach [1,2]; 
		
		_chap addWeapon "I44_LeeEnfieldNo4Mk1"; 
		_chap addBackpack "I44_Bag_BABMedic";		
	};
	case "I44_Man_B_Army_AB_BrenMk1": 
	{
		{_chap addMagazine "I44_6rd_12x20R_Ball_WebleyMk6";} forEach [1,2,3,4,5,6,7,8]; 
		{_chap addMagazine "I44_30rd_77x56R_Mix_Bren";} forEach [1,2,3,4,5]; 
		_chap addMagazine "I44_HandGrenade_No36M";
		_chap addMagazine "I44_HandGrenade_No36M";
		
		_chap addWeapon "I44_WebleyMk6";
		_chap addWeapon "I44_BrenMk1"; 
		_chap addBackpack "I44_Bag_BABBren";		
	};
	case "I44_Man_B_Army_AB_GunCrew_SMLEdNo4Mk1": 
	{		
		{_chap addMagazine "I44_10rd_77x56R_Ball_LeeEnfield"} forEach [1,2,3]; 
		{
			_chap addMagazine "I44_30rd_77x56R_Mix_Bren";
			_chap addMagazine "I44_HandGrenade_No36M";
		} forEach [1,2];
		
		_chap addWeapon "I44_LeeEnfieldNo4Mk1";
		_chap addBackpack "I44_Bag_BABBren";
	};
	case "I44_Man_B_Army_AB_Engr_GrenadeNo75": 
	{		
		{_chap addMagazine "I44_10rd_77x56R_Ball_LeeEnfield"} forEach [1,2,3,4,5]; 
		_chap addMagazine "I44_Mine_AT_GrenadeNo75";
		{	
			_chap addMagazine "I44_HandGrenade_No36M";
			_chap addMagazine "I44_Item_M2DemoCharge";
		} forEach [1,2];
		
		_chap addWeapon "I44_LeeEnfieldNo4Mk1"; 
		_chap addBackpack "I44_Bag_BABNo4Mk1";
	};
	case "I44_Man_B_Army_AB_RTO":
	{		
		{_chap addMagazine "I44_10rd_77x56R_Ball_LeeEnfield"} forEach [1,2,3,4,5,6]; 
		{	
			_chap addMagazine "I44_Mine_AT_GrenadeNo75";
			_chap addMagazine "I44_HandGrenade_No36M";
		} forEach [1,2];
		
		_chap addWeapon "I44_LeeEnfieldNo4Mk1"; 
		_chap addBackpack "I44_Bag_BABRadio";
	};
	case "I44_Man_B_Army_AB_Sapper_M2":
	{		
		{_chap addMagazine "I44_10rd_77x56R_Ball_LeeEnfield"} forEach [1,2,3,4,5]; 
		_chap addMagazine "I44_Mine_AT_GrenadeNo75";
		_chap addMagazine "I44_HandGrenade_No36M";
		{	
			_chap addMagazine "I44_Item_M2DemoCharge";
		} forEach [1,2,3];
		
		_chap addWeapon "I44_LeeEnfieldNo4Mk1"; 
		_chap addBackpack "I44_Bag_BABNo4Mk1";
	};
	case "I44_Man_B_Army_AB_Sapper_M37":
	{		
		{_chap addMagazine "I44_10rd_77x56R_Ball_LeeEnfield"} forEach [1,2,3,4,5]; 
		_chap addMagazine "I44_Mine_AT_GrenadeNo75";
		{	
			_chap addMagazine "I44_HandGrenade_No36M";
			_chap addMagazine "I44_Item_M37DemoKit";
		} forEach [1,2];
		
		_chap addWeapon "I44_LeeEnfieldNo4Mk1"; 
		_chap addBackpack "I44_Bag_BABNo4Mk1";
	};
	default 
	{		
		{_chap addMagazine "I44_10rd_77x56R_Ball_LeeEnfield"} forEach [1,2,3,4,5]; 
		_chap addMagazine "I44_HandGrenade_No36M";
		_chap addMagazine "I44_HandGrenade_No36M";	
		_chap addWeapon "I44_LeeEnfieldNo4Mk1"; 
		_chap addBackpack "I44_Bag_BABNo4Mk1";
	};
};
_chap addWeapon "I44_MedpackLarge";
_chap addWeapon "I44_MedpackSmall";
_chap addWeapon "I44_itemBayonet";
_chap addWeapon "I44_itemShovel";
_chap addWeapon "ItemWatch";
_chap addWeapon "ItemCompass";
_chap = nil;
_typo = nil;