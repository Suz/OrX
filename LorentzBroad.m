function window = LorentzBroad(npts,lb,sw)%% calculate window function for applying to spectra% SRK 10-02-2004window= linspace(0,(npts-1), npts);window = exp(-window*pi*lb/2/sw); 