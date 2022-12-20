
  // Get path to temp directory
  tmp = getDirectory("Data");
  if (tmp=="")
      exit("No temp directory available");
 
  // Create a directory in temp
  myDir = tmp+"testdata"+File.separator;
  File.makeDirectory(myDir);
  if (!File.exists(myDir))
      exit("Unable to create directory");
  print("");
  print(myDir);
  
//  // Open your file of interest
  File.openDialog(tmp);
  	title = File.name;
  	name = tmp + title + File.separator;
  	print(name);


  	
  	
  // Import The Image File
run("Bio-Formats Importer", "open=[name] autoscale color_mode=Default concatenate_series open_all_series rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT");
nickname = getTitle + "_hdf5" + File.separator;
//nickpath = nickname + "HDF5" + File.separator;
  saveAs("tiff", myDir+getTitle);
  run("Export HDF5", "select=[nickname] exportpath = [myDir] datasetname = data compressionlevel=0");
    close();
  
  // run("Export HDF5", "select=[C:/Users/MicrobeJ/Documents/Zenglab/Matthew Theodore/Data/RNA FISH/2022.12.19_startingfromscratch/scratchdata/testdata/1.h5] exportpath=[C:/Users/MicrobeJ/Documents/Zenglab/Matthew Theodore/Data/RNA FISH/2022.12.19_startingfromscratch/scratchdata/testdata/1.h5] datasetname=data compressionlevel=0 input=[ - 2022.11.14_LZ22225_0min_inf_data.001 - Split to MP.nd2 (series 001).tif]");
  
  
  run("Split Channels");
	title = getTitle();
	saveAs(myDir+ title);
	 
	close();
	title = getTitle();
	saveAs(myDir+title); 
	close();
	title = getTitle();
	saveAs(myDir+title); 
	close();
 


 