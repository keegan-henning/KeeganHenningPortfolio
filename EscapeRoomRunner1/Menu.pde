public class Menu {

  public Menu() {
  }
  void setup() {
    background(0);
    
  }
  void display() {
    textSize(40);
    text("Prison Escape", 310, 220);
    textSize(20);
    text("You are in prison and need to escape. \nUse objects to escape from the rooms." + "\n" + "Grabbing too many objects will get you caught." + "\n" + "press any key to begin", 220, 250);
  }
  boolean changeScenes() {
    if (keyPressed == true ) {
      return true;
    }
    return false;
  }
}
