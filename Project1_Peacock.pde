/* 
  Joy Bates
  Project 1
  Peacock
*/

void setup() {
  size (600,600); // can be changed
}

void draw() {
  background(0); // change
  facingLeft();
}

// ------------------------------------------------------
void facingLeft() {
  fill(255); // change
  pushMatrix();
    rotate(PI/8)
    ellipse(width/2, height/2, 30,50);
  popMatrix();
}

void facingRight() {
  // rotation of facingLeft() ?
}

void facingAway() {
  
}

void facingForward() {
  
}
