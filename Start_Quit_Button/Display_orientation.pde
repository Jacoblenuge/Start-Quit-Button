void displayOrientation() {println("\t\t\tWidth="+width, "\tHeight="+height);
println("Display Monitor:", "\twidth:"+displayWidth, "\theight:"+displayHeight);
//
//Fitting CANVAS into Monitor Display
if ( appWidth > displayWidth ) appWidth=0; //CANVAS-width will not fit
if ( appHeight > displayHeight ) appHeight=0; //CANVAS-width will not fit
//
//Outputting instructions to user when errors with above
if ( appWidth==0 || appHeight==0 ) println("STOP, is broken"); //OR
if ( appWidth!=0 && appHeight!=0 ) println("Display: Good to Go"); //AND
//
String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
String orientation = ( appWidth >= appHeight ) ? ls : p ;
println(DO, orientation);
if (orientation == p ) println(instruct); //Later, output to CANVAS
 //Display & Orientation Algorithms not considered yet
}//End displayOrientation
