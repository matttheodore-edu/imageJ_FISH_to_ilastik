
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

 // Create a directory in temp for full dataset
  myDir = tmp + newname + File.separator;
  File.makeDirectory(myDir);
  if (!File.exists(myDir))
      exit("Unable to create directory");
  print("");
  print(myDir);
  
  // Create a directory in temp
  myDirsplit = myDir + "/split" + File.separator;
  File.makeDirectory(myDirsplit);
  if (!File.exists(myDirsplit))
      exit("Unable to create directory");
  print("");
  print(myDir);
  
   // Create a directory in temp for subset dataset
  myDir2 = tmp + newname + "subset" + File.separator;
  File.makeDirectory(myDir2);
  if (!File.exists(myDir2))
      exit("Unable to create directory");
  print("");
  print(myDir2);
  
  // Create a directory in temp
  myDirsplit2 = myDir2 + "/split" + File.separator;
  File.makeDirectory(myDirsplit2);
  if (!File.exists(myDirsplit2))
      exit("Unable to create directory");
  print("");
  print(myDirsplit2);
  	
	 	

run("Bio-Formats Importer", "open=[name] autoscale color_mode=Default concatenate_series open_all_series rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT");
  nickpath = myDir + newname + ".h5";
  nickname = myDir + newname + ".h5";
  nickinput =getTitle + ".tif";
  
    saveAs("tiff", myDir + newname); 

run("Export HDF5", "select=[nickpath] exportpath = [nickname] datasetname=data compressionlevel=0 input = [nickinput]"); 

  run("Split Channels");
  title = getTitle();
  nickpath = myDirsplit + title + "split" + ".h5";
  nickname = myDirsplit + title + ".h5";
  nickinput =getTitle + ".tif";
saveAs(myDirsplit+ title);
run("Export HDF5", "select=[nickpath] exportpath = [nickname] datasetname=data compressionlevel=0 input = [nickinput]");
	 close();
	 
  title = getTitle();
  nickpath = myDirsplit + title + ".h5";
  nickname = myDirsplit + title + ".h5";
  nickinput =getTitle + ".tif";
saveAs(myDirsplit+ title);
run("Export HDF5", "select=[nickpath] exportpath = [nickname] datasetname=data compressionlevel=0 input = [nickinput]");
	 close(); 
	  
  title = getTitle();
  nickpath = myDirsplit + title + ".h5";
  nickname = myDirsplit + title + ".h5";
  nickinput =getTitle + ".tif";
saveAs(myDirsplit+ title);
run("Export HDF5", "select=[nickpath] exportpath = [nickname] datasetname=data compressionlevel=0 input = [nickinput]");
	 close();
	 
	 /// so at this point all the channel only images should be closed
    
run("Make Subset...", "channels=1-3 slices=1-3 frames=1,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95");
  newname2 = newname + "-subset" ;
  nickpath2 = myDir2 + newname2 + ".h5";
  nickname2 = myDir2 + newname2 + ".h5";
  nickinput2 = getTitle + ".tif"; 

	saveAs("tiff", myDir2 + newname2);
	

run("Export HDF5", "select=[nickpath2] exportpath = [nickname2] datasetname=data compressionlevel=0 input = [nickinput2]");

// now should be the subset only channels

  run("Split Channels");
  title = getTitle();
  nickpath = myDirsplit2 + title + "split" + ".h5";
  nickname = myDirsplit2 + title + ".h5";
  nickinput =getTitle + ".tif";
saveAs(myDirsplit2 + title);
run("Export HDF5", "select=[nickpath] exportpath = [nickname] datasetname=data compressionlevel=0 input = [nickinput]");
	 close();
	 
  title = getTitle();
  nickpath = myDirsplit2 + title + ".h5";
  nickname = myDirsplit2 + title + ".h5";
  nickinput =getTitle + ".tif";
saveAs(myDirsplit2 + title);
run("Export HDF5", "select=[nickpath] exportpath = [nickname] datasetname=data compressionlevel=0 input = [nickinput]");
	 close(); 
	  
  title = getTitle();
  nickpath = myDirsplit2 + title + ".h5";
  nickname = myDirsplit2 + title + ".h5";
  nickinput =getTitle + ".tif";
saveAs(myDirsplit2 + title);
run("Export HDF5", "select=[nickpath] exportpath = [nickname] datasetname=data compressionlevel=0 input = [nickinput]");
	 close();


// turns out the whole ordeal was just that I needed spaces before my variable names... after the equals sign ..  wow

  

	 
	 // adding three more to cover the subset images as well
	 
	 
 
 
 