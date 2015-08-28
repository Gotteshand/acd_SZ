/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_NORTH_Krya_Nera_props.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/

if (!acd_SZ_NORTH_Krya_Nera) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO PROPS WILL BE BUILT: acd_SZ_NORTH_Krya_Nera = %1 ###", acd_SZ_NORTH_Krya_Nera];
};
diag_log format ["### ACD: SAFE ZONE: LOADING: acd_SZ_NORTH_Krya_Nera_props ###"];
acd_fnc_buildTerminal = {
    private ["_fnc","_trigger","_center","_side"];
    _fnc = {
        {
            _trigger = createTrigger [
                "EmptyDetector",
                _side modelToWorld _x
            ];
            _trigger setVariable ["parent", _side];
            _trigger setTriggerArea [5, 5, 0, false];
            _trigger setTriggerActivation ["ANY", "PRESENT", true];
            _trigger setTriggerStatements [
                "this",
                format [
                    "
                        (thisTrigger getVariable 'parent')
                            animate ['Door_%1A_move', 1];
                        (thisTrigger getVariable 'parent') 
                            animate ['Door_%1B_move', 1];
                    ", _forEachIndex + 7
                ],
                format [
                    "
                        (thisTrigger getVariable 'parent') 
                            animate ['Door_%1A_move', 0];
                        (thisTrigger getVariable 'parent') 
                            animate ['Door_%1B_move', 0];
                    ", _forEachIndex + 7
                ]
            ];
            _side setVariable [format [
                "bis_disabled_Door_%1", 
                _forEachIndex + 7
            ], 1, true];
        } forEach _this;
    };
    _center = "Land_Airport_center_F" createVehicleLocal [0,0,0];
    _center  setDir (_this select 0);
    _center  setPosATL (_this select 1);
    _side = "Land_Airport_left_F" createVehicleLocal [0,0,0];
    _side attachTo [_center, [19.6722,-4.61768,4.04246]];
    detach _side;
    [
        [-0.62,-15.16,-7],
        [-0.62,15.16,-7]
    ] call _fnc;
    _side = "Land_Airport_right_F" createVehicleLocal [0,0,0];
    _side attachTo [_center, [-19.5177,-4.61768,4.04246]];
    detach _side;
    [
        [0.62,-15.16,-7],
        [0.62,15.16,-7]
    ] call _fnc;
};
[325,[9215.37,21528.2,0.28]] call acd_fnc_buildTerminal;

private ["_objs"];
_objs = [
	["Land_Wreck_CarDismantled_F",[9179.93,21672.4,0.0158501],2.72727,[[0.0475818,0.998867,0],[0,0,1]],false],
	["Land_Wreck_Hunter_F",[9173.44,21672.6,0.000115395],329.545,[0,0,1],true],
	["Land_Wreck_Offroad_F",[9191.59,21679.8,0],59.5454,[0,0,1],true],
	["Land_Wreck_Truck_dropside_F",[9186.34,21680.9,0],325.455,[0,0,1],true],
	["Land_Tyres_F",[9175.62,21675.4,0.00876427],28.6364,[0,0,1],true],
	["Land_Wreck_Truck_F",[9159.02,21662.8,0],326.364,[[-0.553919,0.832571,0],[0,0,1]],false],
	["TyreBarrier_01_black_F",[9178.81,21674.5,0],0,[[0,1,0],[0,0,1]],false],
	["Land_cargo_addon02_V1_F",[9181.99,21679,0],146.364,[[0.55392,-0.83257,0],[0,-0,1]],false],
	["Land_Ground_sheet_OPFOR_F",[9179.05,21672.3,-2.19345e-005],94.5455,[0,0,1],true],
	["Land_CampingTable_F",[9183.47,21679,0],325.455,[[-0.56706,0.823676,0],[0,0,1]],false],
	["Land_CampingChair_V2_F",[9184.75,21678.4,0],104.091,[[0.969911,-0.243461,0],[0,-0,1]],false],
	["Land_CampingChair_V2_F",[9183.37,21681,0],343.182,[[-0.289336,0.957228,0],[0,0,1]],false],
	["Land_CampingChair_V2_F",[9182.33,21680,0],306.818,[[-0.800541,0.599278,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0.0672827],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0.134565],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0.201848],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0.269131],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0.336413],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0.403696],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0.470979],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0.538261],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0.605544],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0.672827],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0.740109],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0.807392],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_folded_F",[9179.29,21679.5,0.874675],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_CampingChair_V1_F",[9182.3,21678.3,0],326.364,[[-0.55392,0.83257,0],[0,0,1]],false],
	["Land_CampingChair_V1_F",[9183.98,21677.7,0],161.818,[[0.312033,-0.950071,0],[0,-0,1]],false],
	["Land_CampingChair_V1_F",[9176.4,21679.5,0],326.364,[[-0.55392,0.83257,0],[0,0,1]],false],
	["Land_GasTank_01_khaki_F",[9175.77,21673.9,0],280.455,[[-0.983399,0.181455,0],[0,0,1]],false],
	["Land_Camping_Light_off_F",[9183.65,21679.2,0.811243],0,[[0,1,0],[0,0,1]],false],
	["Exile_Sign_TraderCity",[9197.18,21695.2,0.0827427],146.818,[[0.547294,-0.836941,0],[0,-0,1]],false],
	["Exile_Sign_TraderCity",[9239.45,21565.2,0.0827417],146.818,[[0.547294,-0.836941,0],[0,-0,1]],false],
	["Exile_Sign_TraderCity",[9298.49,21563,0.0539818],232.728,[[-0.795764,-0.605606,0],[-0,0,1]],false],
	["Land_DieselGroundPowerUnit_01_F",[9175.99,21677.8,0],324.545,[[-0.580056,0.814577,0],[0,0,1]],false],
	["CargoNet_01_barrels_F",[9174.38,21677.5,-0.0137243],53.1818,[0,0,1],true],
	["Land_WaterTank_F",[9193.45,21688.9,3.8147e-006],57.2727,[0,0,1],true],
	["Land_CampingChair_V1_F",[9197.07,21687.1,0.132775],323.636,[[-0.592907,0.805271,0],[0,0,1]],false],
	["CargoNet_01_box_F",[9185.19,21682.6,0.884871],55,[[0.818653,0.573227,0.0348995],[-0.028588,-0.0200175,0.999391]],false],
	["Land_ScrapHeap_2_F",[9165.69,21668.6,0.118985],274.091,[[-0.997394,0.0700232,-0.0174028],[-0.0120503,0.0761479,0.997024]],false],
	["Land_Tyres_F",[9202.08,21662.8,-0.00254154],28.6364,[0,0,1],true],
	["MapBoard_altis_F",[9181.85,21683.4,0],327.273,[[-0.540641,0.841253,0],[0,0,1]],false],
	["Land_Metal_rack_Tall_F",[9177.59,21680.7,0],326.818,[[-0.547298,0.836938,0],[0,0,1]],false],
	["Land_CarService_F",[9194.58,21651.9,0.81494],144.545,[[0.579975,-0.814447,0.0174524],[-0.0101235,0.0142162,0.999848]],false],
	//customs
	["Land_ButaneCanister_F",[9187.08,21649.3,0.816645],103.636,[[0.971813,-0.235753,0],[0,-0,1]],false],
	["Land_CampingTable_F",[9187.77,21649.8,3.43323e-005],323.654,[[-0.59266,0.805453,0],[0,0,1]],false],
	["Land_BucketNavy_F",[9188.35,21650.2,0.803673],284.091,[[-0.96991,0.243463,0],[0,0,1]],false],
	["Land_CarBattery_01_F",[9187.4,21649.2,0.812311],143.181,[[0.599289,-0.800533,0],[0,-0,1]],false],
	["Land_ButaneCanister_F",[9187.63,21649.6,0.816645],191.818,[[-0.204804,-0.978803,0],[-0,0,1]],false],
	["Land_ButaneCanister_F",[9187.11,21649.2,0.816645],278.181,[[-0.989823,0.142301,0],[0,0,1]],false],
	["Land_ButaneCanister_F",[9187.19,21649.3,0.816645],151.818,[[0.472274,-0.881452,0],[0,-0,1]],false],
	["Land_Bucket_painted_F",[9188.22,21649.9,0.796772],0,[[0,1,0],[0,0,1]],false],
	["Land_Bucket_painted_F",[9189.02,21650.8,0.864097],104.545,[[0.967951,-0.25114,0],[0,-0,1]],false],
	["Land_CanisterPlastic_F",[9188.64,21651.3,-0.0286932],54.0909,[[0.809949,0.586501,0],[0,0,1]],false],
	["Land_BucketNavy_F",[9188.48,21650.3,-0.00323105],95.0001,[[0.996195,-0.0871574,0],[0,-0,1]],false],
	["Land_BucketNavy_F",[9188.21,21650.1,-0.00323105],333.636,[[-0.444072,0.895991,0],[0,0,1]],false],
	["Land_CanisterPlastic_F",[9187.55,21648.7,-0.0120945],233.182,[0,0,1],true],
	["Land_KartTrolly_01_F",[9188.81,21648.9,0],197.727,[[-0.304482,-0.952518,0],[-0,0,1]],false],
	["Land_CanisterPlastic_F",[9188.81,21648.9,0.180083],284.546,[0,0,1],true],
	["Land_LampShabby_F",[9190.5,21647.4,0],237.273,[[-0.841256,-0.540637,0],[-0,0,1]],false],
	["Land_LampShabby_F",[9175.99,21679.2,9.53674e-007],143.182,[[0.599275,-0.800543,0],[0,-0,1]],false],
	["Land_ToolTrolley_02_F",[9180.78,21676.5,0],323.182,[[-0.599275,0.800544,0],[0,0,1]],false],
	["Land_WeldingTrolley_01_F",[9197.22,21658.6,0],69.5455,[[0.93695,0.349463,0],[0,0,1]],false],
	["Land_CampingChair_V1_F",[9187.95,21648,0.00313759],20.4371,[[0.349179,0.937056,0],[0,0,1]],false],
	["Land_cargo_addon02_V2_F",[9184.68,21646.7,0],324.091,[[-0.586499,0.80995,0],[0,0,1]],false],
	["Land_SolarPanel_2_F",[9193.36,21643.6,-0.000164032],234.546,[0,0,1],true],
	["Land_PowerGenerator_F",[9190.81,21645.1,0],233.182,[[-0.800543,-0.599275,0],[-0,0,1]],false],
	["Land_PalletTrolley_01_yellow_F",[9183.37,21646.1,0],0,[[0,1,0],[0,0,1]],false],
	["Land_CncBarrierMedium_F",[9184.35,21644.1,0],143.636,[[0.592913,-0.805267,0],[0,-0,1]],false],
	//waste dump
	["Land_FuelStation_Build_F",[9191.17,21635.9,0.0375957],324.545,[[-0.580056,0.814577,0],[0,0,1]],false],
	["Land_FuelStation_Feed_F",[9187.55,21635.3,0],233.636,[[-0.80527,-0.592909,0],[-0,0,1]],false],
	["Land_FuelStation_Feed_F",[9189.2,21632.9,0],233.636,[[-0.80527,-0.592909,0],[-0,0,1]],false],
	["Land_FuelStation_Sign_F",[9187.04,21636.5,0.55447],327.273,[[-0.540641,0.841253,0],[0,0,1]],false],
	["Land_Factory_Conv1_Main_F",[9144,21641.4,0.275207],145.454,[[0.567065,-0.823673,0],[0,-0,1]],false],
	["Land_LuggageHeap_05_F",[9136.36,21655.5,0.112248],0,[[0,1,0],[0,0,1]],false],
	["Land_GarbageBags_F",[9139.24,21649.1,0],0,[[0,1,0],[0,0,1]],false],
	["Land_GarbageBarrel_01_F",[9151.37,21635,0],0,[[0,1,0],[0,0,1]],false],
	["Land_GarbagePallet_F",[9138.47,21651.9,0],198.182,[[-0.312034,-0.950071,0],[-0,0,1]],false],
	["Land_GarbagePallet_F",[9137.55,21649.9,0],39.5455,[[0.636691,0.771119,0],[0,0,1]],false],
	["Land_GarbageWashingMachine_F",[9135.43,21652.1,0],0,[[0,1,0],[0,0,1]],false],
	["Land_JunkPile_F",[9137.86,21647.5,0],354.091,[[-0.10295,0.994686,0],[0,0,1]],false],
	["Land_Tyre_F",[9137.52,21646,0],0,[[0,1,0],[0,0,1]],false],
	["Land_WheelieBin_01_F",[9147.42,21633.4,0],323.636,[[-0.592908,0.80527,0],[0,0,1]],false],
	["Land_cargo_house_slum_ruins_F",[9133.91,21648.7,-0.196328],235.455,[[-0.823677,-0.56706,0],[-0,0,1]],false],
	["Land_JunkPile_F",[9133.61,21653.5,0],167.727,[[0.212565,-0.977147,0],[0,-0,1]],false],
	["Land_ScrapHeap_2_F",[9139.99,21659.5,-0.0660019],239.47,[[-0.861368,-0.507982,0],[-0,0,1]],false],
	//air trader and customs
	["Land_JetEngineStarter_01_F",[9175.05,21501.2,-0.0759811],324.545,[[-0.580063,0.814571,0],[0,0,1]],false],
	["Land_SatellitePhone_F",[9172.32,21513.5,0.815092],96.3636,[[0.993838,-0.110838,0],[0,-0,1]],false],
	["Land_CampingTable_F",[9172.85,21513.9,0.00384331],323.584,[[-0.593642,0.804729,0],[0,0,1]],false],
	["Land_FoodContainer_01_F",[9173.36,21514.3,0.0204849],0,[0,0,1],true],
	["Land_MobileLandingPlatform_01_F",[9183.5,21482.5,0],0,[[0,1,0],[0,0,1]],false],
	["Land_RotorCoversBag_01_F",[9170.9,21511.3,0],0,[[0,1,0],[0,0,1]],false],
	["Land_AirIntakePlug_02_F",[9175.2,21515.6,0],0,[[0,1,0],[0,0,1]],false],
	["Land_AirIntakePlug_04_F",[9179.6,21517.4,0],0,[[0,1,0],[0,0,1]],false],
	["Land_AirIntakePlug_05_F",[9173.44,21514.3,0.805912],0,[[0,1,0],[0,0,1]],false],
	["Land_AirIntakePlug_03_F",[9177.17,21517,-0.00874329],0,[[0,1,0],[0,0,1]],false],
	["Land_FoodContainer_01_F",[9179.63,21518.5,0.0204849],151.364,[0,0,1],true],
	["Land_HelicopterWheels_01_assembled_F",[9176.13,21516.2,0],315.455,[[-0.701475,0.712694,0],[0,0,1]],false],
	["Land_WheelChock_01_F",[9180.22,21494.8,3.62396e-005],180.455,[0,0,1],true],
	["Land_WheelChock_01_F",[9180.07,21495.2,4.57764e-005],243.637,[0,0,1],true],
	["Land_RotorCoversBag_01_F",[9170.82,21510.7,0],84.0909,[[0.994686,0.102951,0],[0,0,1]],false],
	["Land_RotorCoversBag_01_F",[9178.81,21516.2,-0.0310555],166.818,[[0.228042,-0.973651,0],[0,-0,1]],false],
	// food and hardware
	["Land_WheelCart_F",[9252.67,21537,0.101553],129.091,[[0.776145,-0.630554,0],[0,-0,1]],false],
	["Land_Icebox_F",[9232.79,21534.8,0.183167],54.091,[[0.80995,0.5865,0],[0,0,1]],false],
	["Fridge_01_closed_F",[9231.95,21535.9,0.177656],144.091,[[0.586499,-0.80995,0],[0,-0,1]],false],
	["Land_ShelvesMetal_F",[9234.58,21536,0.178682],144.091,[[0.586499,-0.80995,0],[0,-0,1]],false],
	["Land_WaterCooler_01_new_F",[9235.47,21541.9,0],52.7276,[[0.795765,0.605605,0],[0,0,1]],false],
	["Land_WaterCooler_01_new_F",[9222.55,21532.9,0],234.091,[[-0.80995,-0.586499,0],[-0,0,1]],false],
	["Land_Sacks_goods_F",[9230.28,21532.2,0.200787],325.455,[[-0.567053,0.823681,0],[0,0,1]],false],
	["Land_Sacks_goods_F",[9235.88,21536.3,0.200787],234.091,[[-0.80995,-0.586499,0],[-0,0,1]],false],
	["Land_WoodenCart_F",[9226.33,21554.1,0.0930653],53.6364,[[0.805271,0.592907,0],[0,0,1]],false],
	["Land_CratesShabby_F",[9236.99,21537,0.156815],54.9999,[[0.819151,0.573578,0],[0,0,1]],false],
	["Land_CratesWooden_F",[9231.35,21534,0.190187],234.545,[[-0.814571,-0.580063,0],[-0,0,1]],false],
	["Land_Pallets_stack_F",[9261.53,21538.1,0.0625648],234.091,[[-0.809949,-0.5865,0],[-0,0,1]],false],
	["Land_Bricks_V1_F",[9260.75,21539.3,0.0267086],325,[[-0.573576,0.819152,0],[0,0,1]],false],
	["Land_Bricks_V2_F",[9260.07,21540.4,0.0120945],326.818,[[-0.547298,0.836938,0],[0,0,1]],false],
	["Land_ToolTrolley_01_F",[9256.6,21534,0],54.5455,[[0.814576,0.580057,0],[0,0,1]],false],
	//etc props
	["Land_PaperBox_open_full_F",[9250.39,21557.2,0],122.727,[[0.841254,-0.54064,0],[0,-0,1]],false],
	["Land_Pallet_MilBoxes_F",[9253.42,21552.5,0],196.363,[[-0.281729,-0.959494,0],[-0,0,1]],false],
	["Land_CampingTable_F",[9251.71,21554,6.29425e-005],191.37,[[-0.197147,-0.980374,0],[-0,0,1]],false],
	["Land_Suitcase_F",[9250.52,21555.9,0.00734711],175.909,[[0.0713394,-0.997452,0],[0,-0,1]],false],
	["Exile_Cosmetic_MG",[9256.14,21549.2,0.0267487],99.5458,[[0.986153,-0.165836,0],[0,-0,1]],false],
	["Land_PaperBox_open_empty_F",[9248.17,21543.3,0],325.455,[[-0.56706,0.823676,0],[0,0,1]],false],
	["Land_LuggageHeap_04_F",[9247.1,21561.4,0],51.8182,[[0.786053,0.618159,0],[0,0,1]],false],
	["Land_Suitcase_F",[9246.02,21560.7,0],0,[[0,1,0],[0,0,1]],false],
	["Land_LuggageHeap_03_F",[9249.41,21558.8,0],144.091,[[0.586501,-0.809948,0],[0,-0,1]],false],
	["Land_CampingChair_V1_F",[9251.9,21552.8,0],76.3636,[[0.971811,0.23576,0],[0,0,1]],false],
	["Land_TablePlastic_01_F",[9244.34,21560.1,-0.0556984],326.818,[[-0.547298,0.836938,0],[0,0,1]],false],
	["Land_Laptop_unfolded_scripted_F",[9244.81,21560.5,0.822697],125.909,[[0.809949,-0.586501,0],[0,-0,1]],false],
	["Target_F",[9238.64,21556.2,0],294.545,[[-0.909632,0.415416,0],[0,0,1]],false],
	["MapBoard_seismic_F",[9255.3,21550.9,0],49.5455,[[0.760921,0.648845,0],[0,0,1]],false],
	["Land_WoodenTable_large_F",[9244,21549,0],325,[[-0.573576,0.819152,0],[0,0,1]],false],
	["OfficeTable_01_new_F",[9236.26,21525.3,5.20948],55,[[0.819152,0.573576,0],[0,0,1]],false],
	["MapBoard_altis_F",[9233.34,21527.8,5.21217],266.364,[[-0.997987,-0.0634239,0],[-0,0,1]],false],
	["Land_PaperBox_closed_F",[9242.64,21551.2,0],325.909,[[-0.560509,0.828148,0],[0,0,1]],false],
	["Land_PaperBox_open_empty_F",[9241.62,21552.7,0],325.455,[[-0.56706,0.823676,0],[0,0,1]],false],
	["Land_Pallet_MilBoxes_F",[9247.1,21544.8,0],144.545,[[0.58006,-0.814574,0],[0,-0,1]],false],
	["Land_Ammobox_rounds_F",[9251.04,21554.1,0.816467],212.273,[[-0.53395,-0.845516,0],[-0,0,1]],false],
	["Land_CanisterFuel_F",[9244.63,21560.1,0],0,[[0,1,0],[0,0,1]],false],
	["Land_File2_F",[9251.46,21554.2,0.809616],0,[[0,1,0],[0,0,1]],false],
	["Land_File1_F",[9252.16,21554,0.807417],167.273,[[0.220311,-0.97543,0],[0,-0,1]],false],
	["Land_FMradio_F",[9244.02,21559.9,0.826277],138.636,[[0.660835,-0.750531,0],[0,-0,1]],false],
	["Land_BottlePlastic_V2_F",[9244.23,21560.3,0.827162],0,[[0,1,0],[0,0,1]],false],
	["Land_DuctTape_F",[9243.73,21549.6,0.84952],0,[[0,1,0],[0,0,1]],false],
	["Land_FireExtinguisher_F",[9242.84,21550,0.0136051],252.727,[[-0.954902,-0.296921,0],[-0,0,1]],false],
	["Land_PCSet_01_case_F",[9244.51,21548.3,0],236.364,[[-0.832569,-0.553921,0],[-0,0,1]],false],
	["Land_PCSet_01_screen_F",[9243.74,21548.6,0.85346],235,[[-0.819152,-0.573576,0],[-0,0,1]],false],
	["Land_PCSet_01_keyboard_F",[9243.94,21548.8,0.856234],235.909,[[-0.828149,-0.560508,0],[-0,0,1]],false],
	["Land_PCSet_01_mouse_F",[9243.95,21549.4,0.847593],234.545,[[-0.814576,-0.580057,0],[-0,0,1]],false],
	["Land_MobilePhone_smart_F",[9244.71,21548.5,0.849245],0,[[0,1,0],[0,0,1]],false]
];

if (acd_SZ_NORTH_Krya_Nera_Hardware_Trader) then {
	_objs = _objs + [["Exile_Sign_Hardware",[9249.74,21538.4,-0.0888233],54.9999,[[0.819151,0.573578,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Hardware",[9256.83,21533.8,-0.0888233],145,[[0.573576,-0.819152,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_Hardware",[9257.29,21532.9,-0.0888233],325,[[-0.573576,0.819152,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Hardware_Small",[9247.95,21541.3,-0.593672],55.0002,[[0.819155,0.573573,0],[0,0,1]],false]];
};
if (acd_SZ_NORTH_Krya_Nera_Fast_Food_Trader) then {
	_objs = _objs + [["Exile_Sign_Food",[9234.52,21534.5,0.509611],144.545,[[0.580063,-0.814571,0],[0,-0,1]],false]];
};
if (acd_SZ_NORTH_Krya_Nera_Armory_Trader) then {
	_objs = _objs + [["Exile_Sign_Armory_Small",[9243.4,21547.9,-0.595539],55.0001,[[0.819153,0.573575,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Armory",[9252.79,21555.8,0.316683],54.9996,[[0.819148,0.573582,0],[0,0,1]],false]];
};
if (acd_SZ_NORTH_Krya_Nera_Equipment_Trader) then {
	_objs = _objs + [["Exile_Sign_Equipment",[9247.39,21562.3,0.316109],11.8179,[[0.204802,0.978803,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Equipment",[9238.26,21554.9,-0.0768528],54.9997,[[0.819149,0.57358,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Equipment_Small",[9240.26,21552.3,-0.598721],54.9995,[[0.819147,0.573583,0],[0,0,1]],false]];
};
if (acd_SZ_NORTH_Krya_Nera_Specops_Trader) then {
	_objs = _objs + [["Exile_Sign_SpecialOperations_Small",[9245.67,21544.7,-0.609268],54.9998,[[0.81915,0.573579,0],[0,0,1]],false]];	
	_objs = _objs + [["Exile_Sign_SpecialOperations",[9254.83,21546.7,0.318136],145,[[0.573571,-0.819156,0],[0,-0,1]],false]];
};
if (acd_SZ_NORTH_Krya_Nera_Office_Trader) then {
	_objs = _objs + [["Exile_Sign_Office_Small",[9238.24,21532.5,4.23399],145,[[0.573576,-0.819152,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_Office_Small",[9239.95,21536.9,-0.531889],235,[[-0.819152,-0.573576,0],[-0,0,1]],false]];
};
if (acd_SZ_NORTH_Krya_Nera_Waste_Dump_Trader) then {
	_objs = _objs + [["Exile_Sign_WasteDump",[9148.83,21634.4,0.317389],325.455,[[-0.567059,0.823677,0],[0,0,1]],false]];
};
if (acd_SZ_NORTH_Krya_Nera_Aircraft_Trader) then {
	_objs = _objs + [["Exile_Sign_Aircraft",[9180.17,21496.1,-0.0337811],54.9996,[[0.819148,0.573582,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Aircraft_Small",[9186.01,21492.9,-0.607029],235,[[-0.819151,-0.573579,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Aircraft_Small",[9193.69,21499.8,-0.607029],235,[[-0.819151,-0.573579,0],[-0,0,1]],false]];
};
if (acd_SZ_NORTH_Krya_Nera_Aircraft_Customs_Trader) then {
	_objs = _objs + [["Exile_Sign_AircraftCustoms",[9174.64,21513.2,0.121796],145,[[0.573583,-0.819148,0],[0,-0,1]],false]];
};
if (acd_SZ_NORTH_Krya_Nera_Vehicle_Trader) then {
	_objs = _objs + [["Exile_Sign_Vehicles",[9176.48,21674.2,0.308447],326.363,[[-0.553923,0.832568,0],[0,0,1]],false]];
};
if (acd_SZ_NORTH_Krya_Nera_Vehicle_Customs_Trader) then {
	_objs = _objs + [["Exile_Sign_VehicleCustoms",[9188,21649.5,-0.0942593],143.636,[[0.592913,-0.805267,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_VehicleCustoms",[9188.03,21649.5,-0.0942593],323.636,[[-0.592913,0.805266,0],[0,0,1]],false]];
};

{
	private ["_obj"];
	if (acd_debug) then {
	diag_log format ["### _x = %1 ###",_x];
	};
	_obj = (_x select 0) createVehicleLocal [0,0,0];
	if (_x select 4) then {
		_obj setDir (_x select 2);
		_obj setPos (_x select 1);
	} else {
		_obj setPosATL (_x select 1);
		_obj setVectorDirAndUp (_x select 3);
	};
	_obj enableSimulation false;
	if (acd_debug) then {
	diag_log format ["### _obj = %1 ###",_obj];
	};
} foreach _objs;
if (acd_SZ_NORTH_Krya_Nera_IS_SAFE) then {
/*
	SZ Marker
*/
acd_SZ_NORTH_Krya_Nera_marker = createMarker ["North_TraderCityMarker", [9192.48,21519.3,16.9193]];
"North_TraderCityMarker" setMarkerShape "ELLIPSE";
"North_TraderCityMarker" setMarkerSize [200,200];
"North_TraderCityMarker" setMarkerColor "ColorBlue";
"North_TraderCityMarker" setMarkerBrush "SolidBorder";
"North_TraderCityMarker" setMarkerAlpha 1;
"North_TraderCityMarker" setMarkerText "BmGJ Trader City";
/*
	SZ Sensor
*/
ExileTrader = createTrigger ["EmptyDetector",[9192.48,21519.3,16.9193]];
ExileTrader setTriggerArea [220,300,55,true];
ExileTrader setTriggerStatements ["(vehicle player) in thisList","call ExileClient_object_player_event_onEnterSafezone","call ExileClient_object_player_event_onLeaveSafezone"];
ExileTrader setTriggerActivation ["ANY","PRESENT",true];
} else {
/*
	Trading Outpost Marker
*/
acd_SZ_NORTH_Krya_Nera_marker = createMarker ["North_TraderCityMarker",[9192.48,21519.3,16.9193]];
"North_TraderCityMarker" setMarkerShape "ICON";
"North_TraderCityMarker" setMarkerType "MinefieldAP";
"North_TraderCityMarker" setMarkerSize [0.60000002,0.60000002];
"North_TraderCityMarker" setMarkerColor "ColorBlack";
"North_TraderCityMarker" setMarkerText "Black market";	
};	
