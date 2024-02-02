// Aidan Slovik | wed sep 20, 2023 | Etch-a-sketch
int x, y;

void setup() {
  size(400, 400);
  frameRate(10);
  // set start coordinates
  x=100;
  y=200;
  //background(255, 0, 0);
}

void draw() {
  stroke(random(255), random(255),random(255));
  
  //stroke(0);
  strokeWeight(3);
  //drawName();
  //noLoop();
}

//algorithm for your first name
void drawName() {
  moveDown(100);
  moveUp(50);
  moveRight(70);
  moveLeft(70);
  moveUp(50);
  moveRight(70);
  moveDown(100);
  moveRight(100);
  moveUp(50);
  moveLeft(70);
  moveUp(50);
  moveRight(70);
}

void moveRight(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y);
  }
  x=x+(rep);
}
void moveDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y+i);
  }
  y=y+(rep);
}
void moveLeft(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y);
  }
  x=x-(rep);
}
void moveUp(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y-i);
  }
  y=y-(rep);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      moveUp(10);
    } else if (keyCode == LEFT) {
      moveLeft(10);
    } else if (keyCode == RIGHT) {
      moveRight(10);
    } else if (keyCode == DOWN) {
      moveDown(10);
    }
  }


  if (key == 'w' || key == 'W') {
    moveUp(10);
  } else if (key == 'a' || key == 'A') {
    moveLeft(10);
  } else if (key == 's' || key == 'S') {
    moveDown(10);
  } else if (key == 'd' || key == 'D') {
    moveRight(10);
  }
}



void mousePressed() {
  saveFrame("line-######.png");
}
