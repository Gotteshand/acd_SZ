/*
	ACD_SZ - Exile Safe Zones
	acd_fnc_createSensorsAndMarkers.sqf
	by d4n1ch
	mailto: d.e@acd.su

*/
/*#####################################################################################################################################*/
private["_debug_local","_sz_names_arr","_sz_name"];
if(acd_debug)then{
	_debug_local = true;
}else{
	_debug_local = false;
};
_debug_local = true;
if (!isServer) exitWith {diag_log format ["### ACD: acd_fnc_createSensorsAndMarkers: NOT A SERVER ###"];};
if (!isNil "acd_SZ_enabled_list") then {
diag_log format ["### ACD: Creating Markers and Sensors ###"];
_sz_names_arr = acd_SZ_enabled_list;
{
	_sz_name = _x;
	_sz_marker_var = format["%1_Marker",_sz_name];
	_isSafe = call compile format["%1_IS_SAFE",_sz_name];
	_pos = call compile format["%1_position",_sz_name];
	if(_debug_local)then{diag_log format ["### ACD: acd_fnc_createSensorsAndMarkers: _sz_name = %1, _isSafe = %2, _pos = %3 ###", _sz_name,_isSafe,_pos];};
	if(_isSafe)then{
		/*
			SZ Marker
		*/
		_sz_marker_name = format["Trader_City_%1_Marker",_sz_name];
		_sz_trigger_name = format["_%1_Trigger",_sz_name];
		
		_sz_marker_var = createMarker [_sz_marker_name,_pos];
		_sz_marker_name setMarkerShape "ELLIPSE";
		_sz_marker_name setMarkerSize [175,175];
		_sz_marker_name setMarkerBrush "SolidBorder";
		_sz_marker_name setMarkerColor "ColorBlue";
		_sz_marker_name setMarkerAlpha 1;
		_sz_marker_name setMarkerText "Trader City";
		/*
			SZ Sensor
		*/
		_sz_sensor_var = format["_%1_Sensor",_sz_name];
		_sensor_arr = call compile format["%1_triggerArea",_sz_name];
		
		_sz_sensor_var = createTrigger ["EmptyDetector",_pos];
		_sz_sensor_var setTriggerArea _sensor_arr;
		_sz_sensor_var setTriggerStatements ["(vehicle player) in thisList","call ExileClient_object_player_event_onEnterSafezone","call ExileClient_object_player_event_onLeaveSafezone"];
		_sz_sensor_var setTriggerActivation ["ANY","PRESENT",true];

		
	} else {
		/*
			Trading Outpost Marker
		*/
		_sz_marker_name = format["Black_Market_%1_Marker",_sz_name];
		
		_sz_marker_var = createMarker [_sz_marker_name,_pos];
		_sz_marker_name setMarkerShape "ICON";
		_sz_marker_name setMarkerType "MinefieldAP";
		_sz_marker_name setMarkerSize [0.60000002,0.60000002];
		_sz_marker_name setMarkerColor "ColorBlack";
		_sz_marker_name setMarkerText "Black market";	
	};
	
	
}forEach _sz_names_arr;

diag_log format ["### ACD: Markers and Sensors created ###"];
}else{
	diag_log format ["### ACD: acd_fnc_createSensorsAndMarkers: acd_SZ_enabled_list isNil ###"];
};
/*#####################################################################################################################################*/
