//Global Variables
Boolean start=false,noNowReallyStart=false;
int QuitButtonX,QuitButtonY,QuitButtonWidth, QuitButtonHeight;
int appWidth,appHeight;
//
void setup()
{
  size (1200,1000);
  appWidth = width ;
  appHeight = height ;
//Poupulation
QuitButtonX= 2/4 ;
QuitButtonY=  2/4;
QuitButtonWidth=2/4 ;
 QuitButtonHeight=2/4 ;
};//End setup
//
void draw ()
{
if(noNowReallyStart==true){//Actual start IF
  background(0);//Night Mode not considered yet
  rect( QuitButtonX,QuitButtonY,QuitButtonWidth, QuitButtonHeight);//Quit Button
}//End IF-start
};//End draw
//
void keyPressed ()
{
//
  if(key==' ' && start==true ) noNowReallyStart =  true;
  ///Prototype keyboard quit button or shortcut
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
  
};// End mousePressed
//
//End Main Program
