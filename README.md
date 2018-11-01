# Segment Selection

To install this macro, simply download the file Segment_Selection.ijm and copy it into the plugins/Analyze folder within your ImageJ folder. Restart ImageJ; the tool should now be available from the ImageJ menu under Plugins > Analyze > Segment Selection.

To use this tool as intended in Braunger et al., 2019:

1. Trace the RPE on the first retinal hemisphere using the Segmented Line tool. Right-click when done. Add this line to the ROI manager (Edit > Selection > Add to Manager, or press Ctrl-T). (Rename the saved selection within the ROI manager as desired.)

2. Repeat for the second retinal hemisphere.

3. With the trace of the first retinal hemisphere selected within in the ROI manager, start the plugin. Enter the number of desired measurement points (default: 9). This will create perpendicular lines at defined intervals along the selected curve to define measurement points. Enable "Show All" within the ROI to see all of them at once.

4. Repeat for the second retinal hemisphere.

5. Either select all entries within the ROI manager and use "Flatten" to embed them into the image for export and final measurement in another tool, or measure the layer of interest by creating Straight Lines at each measurement point that span the layer. Add each thusly created measurement line to the ROI manager.

6. Select all measurement lines within the ROI manager and use Analyze > Measure to obtain line lengths. This can be conveniently exported for downstream data recording and analysis. (Measurement options can be adjusted in Analyze > Set Measurements. Consider deselecting all entries here.)

Make sure the image's scale is set correctly (pixels need to correspond to a physical unit of length). Either calibrate manually using Analyze > Set Scale, or try opening the image using Fiji's Bio-Formats Importer, which is very good at doing this automatically for you. 

7. Document your analysis: select all entries within the ROI manager, right click, and click Save. This will allow you to revisit your analysis at a later time.  
