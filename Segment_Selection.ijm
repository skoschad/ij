// create dialog
Dialog.create("Segment Selection - Option");
Dialog.addString("Number of measurement points: ", "9");
Dialog.show()
number_of_measurement_points = parseInt(parseInt(Dialog.getString()));

// main
sel_name = getInfo("selection.name")
run("Fit Spline", "straighten");
wait(2000);
getSelectionCoordinates(x, y);
type_of_selection = selectionType();
inc = x.length/(number_of_measurement_points+1); //used to be: inc = x.length/10;

SegmentSelection(x, y);


function SegmentSelection(x, y) {
	previous_roi_items = roiManager("count");  //only for renaming in the ROI manager
	found_segments = 0;  // only for renaming in the ROI manager

	for (i=inc; i<x.length; i+=inc) {
		found_segments++;
		// compute linear equation of perpendicular line
		a = (y[i] - y[i-1]) / (x[i] - x[i-1]);
		c = 400;
		newx_1 = x[i]+c;  
		newy_1 = -1/a * c + y[i];  
		newx_2 = x[i]-c;
		newy_2 = -1/a * (-c) + y[i];
		makeLine(newx_1, newy_1, newx_2, newy_2);
		
		// add selection to ROImanager
		roiManager("Add");
		roiManager("select", previous_roi_items+found_segments-1);
		roiManager("Rename", sel_name+"_"+found_segments);
	}
}

function PrintArray(a) {
	arraystr = "";
	for (i=0; i<a.length; i++) {
		arraystr = arraystr+a[i]+",";
	}
	print(arraystr);
}