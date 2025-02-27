
%   Copyright 2010 The MathWorks, Inc.
%             2014 Dr. Olaf Hagendorf, HS Wismar

function blkStruct = slblocks
  blkStruct.Name        = 'Mbed Target'; %Display name
  blkStruct.OpenFcn     = 'mbed_lib'; %Library name
  blkStruct.MaskDisplay = '';

  Browser(1).Library    = 'mbed_lib'; %Library name
  Browser(1).Name       = 'Mbed Target';%Display name
  Browser(1).IsFlat  = 0;

  blkStruct.Browser     = Browser;

  % Define information for model updater
  blkStruct.ModelUpdaterMethods.fhSeparatedChecks = @ecblksUpdateModel;
