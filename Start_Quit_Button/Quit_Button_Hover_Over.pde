void quitButtonHoverOver(){
 
  if ( noNowReallyStart && mouseX>QuitButtonX &&  mouseX<QuitButtonX+QuitButtonWidth && mouseY>QuitButtonY && mouseY<QuitButtonY+QuitButtonHeight) {
    QuitButtonColour = yellow;//Remember Knight Mode
  } else {
  QuitButtonColour = purple;//Remember Day Mode
  } 
}// End quitButtonHoverOver
