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
// 
  if(key==' ' && start==true ) noNowReallyStart =  true;
  //
  //Prototype keyboard quit button or shortcut
  if ( key=='Q' || key=='q') exit();
  if ( keyCode == BACKSPACE ) exit();
  //
};// End keyPressed
//
void mousePressed () 
{
  //
  //OS Level Start Button
  start = true;
  println("To Sart Press The Space Bar");
  //
  //Quit Button:Logical Rectangle,see println in draw()
  if (noNowReallyStart && mouseX>QuitButtonX &&  mouseX<QuitButtonX+QuitButtonWidth && mouseY>QuitButtonY && mouseY<QuitButtonY+QuitButtonHeight) exit();
  //
};// End mousePressed
//
//End Main Program
