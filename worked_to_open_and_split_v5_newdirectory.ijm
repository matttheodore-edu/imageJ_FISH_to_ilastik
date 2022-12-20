
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
	newname = File.nameWithoutExtension;

 // Create a directory in temp
  myDir = tmp + newname + File.separator;
  File.makeDirectory(myDir);
  if (!File.exists(myDir))
      exit("Unable to create directory");
  print("");
  print(myDir);
  	
	 	

run("Bio-Formats Importer", "open=[name] autoscale color_mode=Default concatenate_series open_all_series rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT");
  nickpath = myDir + newname + ".h5";
  nickname = myDir + newname + ".h5";
  nickinput =getTitle + ".tif";
  
    saveAs("tiff", myDir + newname);


run("Export HDF5", "select=[nickpath] exportpath = [nickname] datasetname=data compressionlevel=0 input = [nickinput]");


// turns out the whole ordeal was just that I needed spaces before my variable names... after the equals sign ..  wow

  
  run("Split Channels");
  title = getTitle();
  nickpath = getDirectory("current") + title + ".h5";
  nickname = getDirectory("current") + title + ".h5";
  nickinput =getTitle + ".tif";
saveAs(myDir+ title);
run("Export HDF5", "select=[nickpath] exportpath = [nickname] datasetname=data compressionlevel=0 input = [nickinput]");
	 close();
	 
  title = getTitle();
  nickpath = getDirectory("current") + title + ".h5";
  nickname = getDirectory("current") + title + ".h5";
  nickinput =getTitle + ".tif";
saveAs(myDir+ title);
run("Export HDF5", "select=[nickpath] exportpath = [nickname] datasetname=data compressionlevel=0 input = [nickinput]");
	 close();  
  title = getTitle();
  nickpath = getDirectory("current") + title + ".h5";
  nickname = getDirectory("current") + title + ".h5";
  nickinput =getTitle + ".tif";
saveAs(myDir+ title);
run("Export HDF5", "select=[nickpath] exportpath = [nickname] datasetname=data compressionlevel=0 input = [nickinput]");
	 close();
 
 
 