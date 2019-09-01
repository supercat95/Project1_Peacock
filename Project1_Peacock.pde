/* 
  Joy Bates
  Project 1
  Peacock
*/

int correctionForRotation; // do trig to find this. 
int left_EllipseWidth = 40;
int left_EllipseHeight = 55;

void setup() {
  size (600,600); // can be changed
}

void draw() {
  background(#C9FFFC); // pastel blue
  facingLeft();
  
  // for debugging and drawing purposes
  pushMatrix();
    //translate(100,500);
    text(pmouseX, 100, 500);
    //translate(5,0);
    text(pmouseY, 130, 500);
  popMatrix();
}

// ------------------------------------------------------
void facingLeft() {
  // body of peacock
  pushMatrix();
    noStroke();
    fill(#02AF20); // green. make variables for RGB(2, 175, 32)
    rotate((-1*PI)/4);
      ellipse((width/2) - 350, (height/2) + 150, left_EllipseWidth,left_EllipseHeight);
  popMatrix();
  // feather
  pushMatrix();
      stroke(0,0,0); // temp
      noFill();
        bezier (307,360, 350,350, 280,280, 350,290);
  popMatrix();
}

void facingRight() {
  // rotation of facingLeft() ?
}

void facingAway() {
  
}

void facingForward() {
  
}

// ------------------------------------------------------
// peacock follows the cursor 
void followUser() {
  
}

// determines which facing function should be called
void whichDirection() {
  // booleans
}
