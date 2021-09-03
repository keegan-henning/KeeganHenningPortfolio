public class Room2 { //Keypad
  PImage p3;
  int textx=7;
  int texty= 20;
  int k=125;
  int count;
  int xrow1=140;
  int xrow2=290;
  int xrow3 =450;
  String text;
  Boolean moveOn;
  Boolean roomFailed;
 

  public Room2() {
    p3=loadImage("images/1.jpg");
  }
  void setup() {
    moveOn=false;
    roomFailed=false;
    count=0;
    text="";
  }
  void display() {
    background(155, 155, 155);
    textSize(20);
    text("keypad- door led to hallway", 550, texty);
    text("Passwords just got changed", 20, 20);
    image(p3, 50, 50);
    p3.resize(500, 120);
    
    noFill();
    rect(100, 200, k, k); //1
    rect(100, 350, k, k); //2
    rect(100, 500, k, k); //3
    rect(250, 200, k, k); //4
    rect(250, 350, k, k); //5
    rect(250, 500, k, k); //6
    rect(400, 200, k, k);//7
    rect(400, 350, k, k);//8
    rect(400, 500, k, k);//9
    
  
    text("1",xrow1, 275);
    text("2",xrow2, 275);
    text("3",xrow3, 275);
    text("4",xrow1, 425);
    text("5",xrow2, 425);
    text("6",xrow3, 425);
    text("7",xrow1, 570);
    text("8",xrow2, 570);
    text("9",xrow3, 570);
  }

  void click() {
    if (mousePressed==true );
    moveOn = true;
  }
  boolean changeScenes() {
    if (moveOn) {
      this.setup(); //resets count and moveOn in case we come back again
      return true;
    }
    return false;
  }
  boolean roomFailed() {
    if (count>=3)
    return true;
    return false;
  }
}
