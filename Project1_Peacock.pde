/* 
  Joy Bates
  Project 1
  Peacock
*/

int correctionForRotation; // do trig to find this. 
int left_EllipseWidth = 40;
int left_EllipseHeight = 55;

// coordinates for the original/rightmost feather of facingLeft
int x1Feather = 307;
int y1Feather = 360;
int x2Feather = 350;
int y2Feather = 350;
int x3Feather = 280;
int y3Feather = 280;
int x4Feather = 350;
int y4Feather = 290;

void setup() {
  size (600,600); // can be changed
}

void draw() {
  background(#C9FFFC); // pastel blue
 
  bodyOfPeacock(-1*QUARTER_PI); // facing left
  facingLeft(5,13, 11,19, 15,24); // values are the shifts from original/rightmost feather
 
  bodyOfPeacock(QUARTER_PI); 
  
  // for debugging and drawing purposes
  pushMatrix();
    //translate(100,500);
    text(pmouseX, 100, 500);
    //translate(5,0);
    text(pmouseY, 130, 500);
  popMatrix();
}

// ------------------------------------------------------
void bodyOfPeacock(float rotation) {
  pushMatrix();
    noStroke();
    fill(2, 175, 32); // green
    rotate(rotation);
      ellipse((width/2) - 350, (height/2) + 150, left_EllipseWidth,left_EllipseHeight);
  popMatrix();
}

// ------------------------------------------------------
void facingLeft(int xchange1,int ychange1, int xchange2,int ychange2, int xchange3,int ychange3) {
// feathers
  pushMatrix();
      stroke(0,0,0); // temp
      noFill();
        // rightmost feather
        bezier(x1Feather,y1Feather, x2Feather,y2Feather, x3Feather,y3Feather, x4Feather,y4Feather);
        // 2nd from right feather
        bezier(x1Feather-xchange1,y1Feather-ychange1, x2Feather-xchange1,y2Feather-ychange1, x3Feather-xchange1,y3Feather-ychange1, x4Feather-xchange1,y4Feather-ychange1);
        // 3rd from right feather
        bezier(x1Feather-xchange2,y1Feather-ychange2, x2Feather-xchange2,y2Feather-ychange2, x3Feather-xchange2,y3Feather-ychange2, x4Feather-xchange2,y4Feather-ychange2);
        // leftmost feather
        bezier(x1Feather-xchange3,y1Feather-ychange3, x2Feather-xchange3,y2Feather-ychange3, x3Feather-xchange3,y3Feather-ychange3, x4Feather-xchange3,y4Feather-ychange3);
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
