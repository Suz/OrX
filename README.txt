Notes on OR program:  SR Kiihne, 24-02-2004

Oriented MAS nmr spectra
I have tested this on spectra from jr0203 #22-26
These are 31P MAS spectra with spin rates 500 - 2000Hz of DOPC oriented on rolled kitchen film. 

The fits generally give a value for the orientation angle that is 5¡ from the expected value (95 vs 90 degrees). The fitting minimizes several parameters, however, careful inspection is needed to make sure that other parameters are set appropriately. Of particular note are: 

offset, wiso: Compare simulated and experimental spectra to make sure the peaks are centered on each other. Change the wiso as necessary to get good alignment of the isotropic peaks. (see also spin rate, below)
 
CSA delta: Check the sideband pattern. If the relative peak intensities never come out right, try changing delta. eta should remain zero for motionally averaged spectra.

Spin rate: You can see this when comparing simulated and experimental because the isotropic peak will line up properly, but the sidebands will be slightly off. It seems to be more significant in slower spinning spectra. The spin rate can be a few hertz away from the experimental setting: I find that 505 works much better than 500 for fitting jr0203 #23. 

Installation:
Place the program files in an appropriate directory.
Open matlab.

Open the matlab path window and add the 'appropriate directory' to the matlab path. Save.

In principle, the program is now usable.

Usage:
In matlab, type 'edit OR_inputs'.
This should open a window with the file containing the input information that matlab needs to start the fitting. If it doesn't work, then there's probably a problem with the path. 

In matlab, change the current directory (cd) to the directory containing the data you want to fit.  example: /nmr/jr0203/23/pdata/1/
The routine currently only works on processed data, which Bruker stores as '1r' in the directory /pdata/(process_number)/. If you make this the current directory, it will find the data. It will also write the results to the same directory. 

The routine loads the Bruker data format appropriately, but doesn't read the parameters. You have to put these into the input file. The input file has comments defining them. Just save the values when you have what you want. A copy will be saved with the output.

Running:
Once you have the program on the matlab path, the proper values in the input, and matlab can find the experimental data, you just type OR_main, and the program will try to fit a simulation to your data. 

If you get an error that the maximum iterations have been exceeded, inspect the output file and change the inputs to be closer to these values. After a few iterations, you should get convergence and a chi-squared of < 1e-2. You may need to run several times with different isotropic shifts, spin rates, and CSA deltas. 

Good luck!!
