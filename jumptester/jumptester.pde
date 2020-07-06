int X = 250;
int Y =200;
color up;
color down;
color left;
color right;
boolean w = false;
boolean a = false;
boolean d = false;
void setup() {
  size(500, 400);
  noStroke();
}

void draw() {
  background(255);
  //Draws Plataform
  fill(50, 255, 20);
  rect(0, 350, 500, 400);
  //Ball
  //Draws Ball
  fill(255, 20, 50);
  ellipse(X, Y, 30, 30);
  //Makes Ball Fall
  down = get(X, Y+15);
  if (down != color(50, 255, 20) ) {
    Y = Y+6;
  }
  //Creates border on World
  if (X <= 15) {
    X+= 5;
  }
  if (X >= 485) {
    X-= 5;
  }
  //Checks for Jump
  if (w && !a && !d) {
    Y-=15;
  }
  //Checks for Veritcal Jumping
  if (w && a && !d) {
    Y-=15;
    X-=5;
  }
  if (w && d && !a) {
    Y-=15;
    X+=5;
  }
  //Checks for Left
  if (a && !d && !w) {
    X-=5;
  }
  //Checks for Right
  if (d && !a && !w) {
    X+=5;
  }
}
//sees which keys are being pressed
void keyPressed() {
  if (key == 'w') {
    w = true;
  }
  if (key == 'a') {
    a = true;
  }
  if (key == 'd') {
    d = true;
  }
}
//Sees which keys are being released
void keyReleased() {
  if (key == 'w') {
    w = false;
  }
  if (key == 'a') {
    a = false;
  }
  if (key == 'd') {
    d = false;
  }
}
