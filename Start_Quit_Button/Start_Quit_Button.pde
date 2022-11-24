//Global Variables
Boolean start=false,noNowReallyStart=false;
float QuitButtonX,QuitButtonY,QuitButtonWidth, QuitButtonHeight;
int appWidth,appHeight;
color QuitButtonColour, yellow=#FFFF00 , purple=#FF00FF ; 
//
void setup()
{
   frameRate(10);
  size (1200,1000);
  displayOrientation();
  appWidth = width ;
  appHeight = height ;
 Population();
};//End setup
//
void draw ()
{

if(noNowReallyStart==true){//Actual start IF
 ProgramDraw();
}//End IF-start
//
};//End draw
//
void keyPressed ()
{

//User Initiated Start Screen
  if(key==' ' && start==true ) noNowReallyStart =  true;
  //
 
  //
  keyboardShortCuts();
};// End keyPressed
//
void mousePressed () 
{
  //
  OS_Start();
  //
  //Quit Button:Logical Rectangle,see println in draw()
  if (noNowReallyStart && mouseX>QuitButtonX &&  mouseX<QuitButtonX+QuitButtonWidth && mouseY>QuitButtonY && mouseY<QuitButtonY+QuitButtonHeight) exit();
  //
};// End mousePressed
//
//End Main Program
