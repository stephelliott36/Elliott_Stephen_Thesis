# Elliott_Stephen_Thesis
Contains the files and datasets for the senior thesis 

##### DATA #####
Data is stored in CSV files, 20_linear.csv is the entire Script: NMR Matrix CSV file, 
20_linear_rows is column 1 of 20_linear.csv, or the chemical shift,
20_linear_cols is the rest of 20_linear.csv with column 1 removed
The other data files maintain this same naming convention

##### Instructions #####
1. Download Visual Studio Code
2. Download the R-extension for VS Code
3. Clone the MVA-plots git repository linked here https://github.com/phenological/mva-plots 
4.	Download ‘ropls’ package from Bioconductor 1.34.0 link: https://bioconductor.org/packages/release/bioc/html/ropls.html 
5. Copy package_install.R into the MVA-plots folder saved to your laptop and run it in the R terminal
To run, click anywhere in the code file, press ctrl + a and then ctrl + enter to run.
6.	Run each R file in order (exclude Tests), not all need to be run, but certain R scripts are dependent on others. 
7.	Run the test-test_data.R, test-PCA.R, test-oplsda.R, test-oplsdaPredict.R and test-plotLoadings.R. files, 
They should all say "test passed"
8. copy runPCA.R and runOPLSDA.R to the MVA-plots folder saved to your laptop
9. Edit the directory(ies) in lines 4 and 5 of runPCA.R and runOPLSDA.R to ensure they are the 
directories for the desired files on your device saved as Script: NMR Matrix CSV files
(note): by left clicking on the file and clicking "copy path" you can get this path. 
You will likely have to write each backslash twice because backslashes are special in R
10. If you have completed the steps correctly, run runPCA.R and runOPLSDA.R 
and they should produce the desired PCA and oplsda data files as well as a graph of the plotloadings
