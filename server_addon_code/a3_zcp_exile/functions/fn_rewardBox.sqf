private['_ZCP_RWB_capturePosition','_ZCP_RWB_currentCapper','_ZCP_RWB_capName','_ZCP_RWB_captureRadius',
'_ZCP_RWB_boxType','_ZCP_RWB_data','_ZCP_RWB_y','_ZCP_RWB_x'];

_ZCP_RWB_data = _this select 0;
_ZCP_RWB_currentCapper = _ZCP_RWB_data select 0;
_ZCP_RWB_capName = _ZCP_RWB_data select 1;
_ZCP_RWB_capturePosition = _ZCP_RWB_data select 2;
_ZCP_RWB_captureRadius = _ZCP_RWB_data select 4;

_ZCP_RWB_boxType = _this select 1;

_ZCP_RWB_x = random  _ZCP_RWB_captureRadius;
_ZCP_RWB_y = random  _ZCP_RWB_captureRadius;

if( random 1 > 0.5) then {
    _ZCP_RWB_x = 0 - _ZCP_RWB_x;
};

if( random 1 > 0.5) then {
    _ZCP_RWB_y = 0 - _ZCP_RWB_y;
};

_ZCP_RWB_capturePosition set[0, (_ZCP_RWB_capturePosition select 0) + _ZCP_RWB_x];
_ZCP_RWB_capturePosition set[1, (_ZCP_RWB_capturePosition select 1) + _ZCP_RWB_y];

[_ZCP_RWB_capturePosition, _ZCP_RWB_boxType] spawn ZCP_fnc_spawnCrate;

diag_log text format ["[ZCP]: %1 received a %3 for %2.",name _ZCP_RWB_currentCapper,_ZCP_RWB_capName, _ZCP_RWB_boxType];

