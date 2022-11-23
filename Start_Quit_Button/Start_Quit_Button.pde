//Global Variables
Boolean start=false,noNowReallyStart=false;
float QuitButtonX,QuitButtonY,QuitButtonWidth, QuitButtonHeight;
int appWidth,appHeight;
color QuitButtonColour, yellow=#FFFF00 , purple=#FF00FF ;
//
void setup()
{
  size (1200,1000);
  appWidth = width ;
  appHeight = height ;
//Poupulation
float centerX = appWidth * 1/2 ; //Point
float centerY = appHeight * 1/2 ;//Point
QuitButtonX= centerX - (appWidth * 1/4 );
QuitButtonY=centerY - (appHeight * 1/4)  ;
QuitButtonWidth =  appWidth * 1/2;//Line not point thus use formula
QuitButtonHeight = appHeight * 1/2;//Line not point thus use formula
};//End setup
//
void draw ()
{
if(noNowReallyStart==true){//Actual start IF
  background(255,255,255);//Night Mode not considered yet
  //
  //Logical Rectangle
  println("X-Value",QuitButtonX, mouseX ,QuitButtonX+QuitButtonWidth );
  println("Y-Value" ,QuitButtonY ,mouseY ,QuitButtonY+QuitButtonHeight);
  //
  //Quit Button Hover Over Feature
  if ( noNowReallyStart && mouseX>QuitButtonX &&  mouseX<QuitButtonX+QuitButtonWidth && mouseY>QuitButtonY && mouseY<QuitButtonY+QuitButtonHeight) {
    QuitButtonColour = yellow;//Remember Knight Mode
  } else {
  QuitButtonColour = purple;//Remember Day Mode
  } //End Hover Over
  //
  fill(QuitButtonColour);
  rect( QuitButtonX,QuitButtonY,QuitButtonWidth, QuitButtonHeight);//Quit Button
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
