class Catcher {
  float xPos; // x-Location
  float yPos; // y-Location
  float r; // radius

  Catcher(float radius) {
    r = radius;
  }

  void setLocation(float x, float y) {
    xPos = x; // set xPos to x
    yPos = y; // set yPos to y
  }


  void display() {
    noStroke();
    fill(128, 103, 184); // Changes the color of ellipse
    ellipse(xPos, yPos, r*2, r*2); // Ellipse is drawn at xPos, yPos and has a diameter of r*2 and r*2
  }

  // Checking for ball caught
  boolean dropCaught(Drop drop) {
    float distance = dist(xPos, yPos, drop.xPos, drop.yPos); // Calculate distance

    // Compare distance to radius
    if (distance < r) {
      return true;  //caught!
    } else {
      return false;  //not caught
    }
  }
}