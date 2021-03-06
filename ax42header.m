%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright (C) 2020 - INPE - CubeDesign Virtual
% Carlos L GOMES BATISTA - LabV&VSiS
%
% Limited use for the CubeDesign Virtual
% Tracking, Telemetry and Commands Subsystem Challenge
%
% Date of creation: 14/09/2020
%
% Version: 1.0
%
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function ax42_header = ax42header(from_call,from_ssid,to_call,to_ssid)
  SYNC_BYTE = hex2dec('2A');
  CALLSIGN_SIZE = 6;
  CONTROL = hex2dec('03');
  PID = hex2dec('F0');
  %
  for i=1:CALLSIGN_SIZE 
    aux_from(i) = double(from_call(i));
    aux_to(i) = double(to_call(i));
  end
  %
  ax42_header = [SYNC_BYTE aux_from from_ssid aux_to to_ssid CONTROL PID];
end