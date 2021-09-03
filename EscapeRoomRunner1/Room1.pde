class Room1 {
  PImage p2;
  String text;
  Boolean moveOn;
  int count;
  int textx=7; 
  int texty=20;
  int whichGrillText;
  int whichDoorRText;
  int whichDoorLText;

  public Room1() {
    p2=loadImage("images/EscapeR1.jpg");
  }

  void setup() {
    moveOn = false;
    count=0;
    text= "";
    whichGrillText = 0;
    whichDoorRText = 0;
    whichDoorLText= 0;
  }

  void display() {
    textSize(20);
    text("Hallway- facuet broke door lock", 500, texty);
    textSize(20);
    text(text, textx, texty);

    image(p2, 10, 25);
    p2.resize(800, 600);
  }

  void hover() {
    cursor(HAND);

    if ( mouseX>650&&mouseX<750&&mouseY>450&&mouseY<500) { //Grill
      if (whichGrillText == 0) {
        text = "(Grill)- provides ventilation";
      } else if (whichGrillText == 1) {
        text = "Too small to fit in";
      } else {
        whichGrillText = 0;
      }
      
    } else if ( mouseX>90&&mouseX<150&&mouseY>300&&mouseY<380) { //DoorL
      if (whichDoorLText == 0) {
        text = "(Door)- limited opportunity";
      } else if (whichDoorLText == 1) {
        text = "are you trying to go back";
      } else {
        whichDoorLText = 0;
      }
      
    } else if ( mouseX>430&&mouseX<490&&mouseY>300&&mouseY<380) { //DoorR
      if (whichDoorRText == 0) {
        text = "(Door)- limited opportunity";
      } else if (whichDoorRText == 1) {
        text = "are you trying to go back";
      } else {
        whichDoorRText = 0;
      }
    } else if (mouseX>190&&mouseX<280&&mouseY>250&&mouseY<400) { // Door
      text = "(Door)- most likely locked";
    }
  }

  void click() {
    if ( mouseX>650&&mouseX<750&&mouseY>450&&mouseY<550) { //Grill
      count++;
      whichGrillText++;
      println("Not working");
      
    }else if (  mouseX>90&&mouseX<150&&mouseY>300&&mouseY<380) { //DoorL
      count++;
      whichDoorLText++;
      println("Not working");
      
    }else  if (  mouseX>430&&mouseX<490&&mouseY>300&&mouseY<380) { //DoorR
      count++;
      whichDoorRText++;
      println("Not working");
      
    } else if (mouseX>190&&mouseX<280&&mouseY>250&&mouseY<400) { // Door
      text =  "Success";
      moveOn = true;
    }
  }
  boolean changeScenes() {
    if (moveOn) {
      this.setup(); //resets count and moveOn in case we come back again
      return true;
    }
    return false;
  }

  boolean roomFailed() {
    if (count>=3) {
      this.setup();
      return true;
    } else {
      return false;
    }
  }
}
