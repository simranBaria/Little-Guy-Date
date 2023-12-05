class Button {
  // Initialize variables
  int x, y, w, h;
  color colour;
  
  // Constructor
  Button(int x, int y, int w, int h, color colour) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.colour = colour;
  }
  
  //Function to display button
  void display() {
    // Draw the button
    noStroke();
    rectMode(CORNER);
    fill(colour);
    rect(x, y, w, h);
  }
  
  // Function to check if the button has been clicked
  boolean clicked() {
    // Check if mouse coordinates are within bounds
    if((mouseX >= x && mouseX <= (x + w)) && (mouseY >= y && mouseY <= (y + h))) return true;
    else return false;
  }
  
  // Function to set x
  void setX(int x) {
    this.x = x;
  }
  
  // Function to set y
  void setY(int y) {
    this.y = y;
  }
  
  // Function to set w
  void setW(int w) {
    this.w = w;
  }
  
  // Function to set h
  void setH(int h) {
    this.h = h;
  }
}
