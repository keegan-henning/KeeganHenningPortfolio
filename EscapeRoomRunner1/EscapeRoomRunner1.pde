
int roomNum;

EscapeRoom room0;
Room1 room1;
Room2 room2; //2=new Room2();
Menu menu; //= new Menu();


void setup() {
  menu = new Menu();
  room0 = new EscapeRoom();
  room1 = new Room1();
  room2 =new Room2();
  size(820, 640);
  menu.setup();
  room0.setup();
  room1.setup();
  room2.setup();
  roomNum = -1;
}

void draw() {
  background(0);
  System.out.println(roomNum);
  if (roomNum == -1) {
    menu.display();
    if (menu.changeScenes()) {
      roomNum=0;
    }
  } else if (roomNum == 0) {
    room0.display();
    room0.hover();
    if (room0.changeScenes()) {
      roomNum = 1;
    }
    if (room0.roomFailed()) {
      roomNum=-1;
    }
  } else if (roomNum == 1) {
    room1.display();
    room1.hover();
    if (room1.changeScenes()) {
      roomNum= 2;
    }
    if (room1.roomFailed()) {
      roomNum=-1;
    }
  } else if (roomNum == 2) {
    room2.click();
    room2.display();
  } else {
    roomNum = -1;
    if (room2.changeScenes()) {
      roomNum= 3;
    }
    if (room2.roomFailed()) {
      roomNum=-1;
    }
  }
}

void mousePressed() { //Processing calls this when you press and release the mouse
  if (roomNum == -1) {
    //We're not clicking in the menu area
  } else if (roomNum == 0) {
    room0.click();
  } else if (roomNum == 1) {
    room1.click();
  } else if (roomNum == 2) {
  } else {
  }
}
