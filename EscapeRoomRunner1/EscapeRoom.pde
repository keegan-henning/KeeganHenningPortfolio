public class EscapeRoom {
  PImage p1;
  int count;
  boolean moveOn;
  int textx=7; 
  int texty=20;
  String text;
  int whichCupText;
  int whichDoorText;
  int whichSinkText;
  int whichSpoonText;
  int whichToiletText;
  int whichPhotoText;
  

  public EscapeRoom() {
    p1=loadImage("images/EscapeR.jpg");
  }
  void setup() { //"resets" the room
    moveOn = false;
    count=0;
    text = "";
    whichCupText = 0;
    whichDoorText = 0;
    whichSinkText = 0;
    whichSpoonText = 0;
    whichToiletText = 0;
    whichPhotoText = 0;
  }

  void display() {
    textSize(20);
    text(text, textx, texty);
    image(p1, 10, 25);
    p1.resize(800, 600);
    text("jail cell", 700, texty);
  }
  
  //Display text when you hover over things
  void hover() {
    cursor(HAND);
    
    if ( mouseX>400&&mouseX<470&&mouseY>200&&mouseY<300) { //Cup
      if(whichCupText == 0) {
      text = "(Cup)-holds hot liquids";
      } else if (whichCupText == 1) {
       text = "Used for water not escape";
      } else {
        whichCupText = 0;
      }
      
    }else if(mouseX>700&&mouseX<820&&mouseY>200&&mouseY<500){ //Door
    if(whichDoorText == 0) {
      text = "(Door)-the easy way out";
       } else if (whichDoorText == 1) {
         text = "Its Locked, what could open it?";
       }else {
         whichDoorText = 0;
       }
       
    }else if(mouseX>220&&mouseX<255&&mouseY>400&&mouseY<440){ //Spoon
    if(whichSpoonText == 0) {
      text = "(Plastic Spoon)- utensil for eating";
    }else if (whichSpoonText == 1) {
      text = "Plastic can not dig through concrete, what is stronger?";
    }else {
      whichSpoonText = 0;
    }
    
    }else if(mouseX>100&&mouseX<220&&mouseY>340&&mouseY<470){ //Toilet
    if(whichToiletText == 0) {
      text = "(Toilet)- waste disposal";
    }else if (whichToiletText == 1) {
      text = "Bolted to ground, what is not?";
    }else {
      whichToiletText = 0;
    }
    
    }else if (mouseX>470&&mouseX<540&&mouseY>140&&mouseY<200) { //Photograph
      if(whichPhotoText == 0) {
      text = "(Photograph)-increases motivation to escape";
      } else if (whichPhotoText == 1) {
       text = "";
      } else {
        whichPhotoText = 0;
      }
      
    } else if (mouseX>0&&mouseX<100&&mouseY>400&&mouseY<450) { // Faucet
      text = "(Loose Faucet)- made of aluminum, provides water";
    }
  }
  
  //This is called once per click
  void click() {
    textSize(20);
    if (mouseX>400&&mouseX<470&&mouseY>200&&mouseY<300) { //Cup
      count++;
      whichCupText++;
      println("Not working");
      
    } else if(mouseX>700&&mouseX<820&&mouseY>200&&mouseY<500){ //Door
      count++;
      whichDoorText++;
      println("Not working");
      
    } else if(mouseX>220&&mouseX<255&&mouseY>400&&mouseY<440){ //Spoon
     count++;
     whichSpoonText++;
     println("not spoon");
      
    } else if(mouseX>100&&mouseX<220&&mouseY>340&&mouseY<470){ //Toilet
      count++;
      whichToiletText++;
      
    } else if (mouseX>0&&mouseX<100&&mouseY>400&&mouseY<450) { // Faucet
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
