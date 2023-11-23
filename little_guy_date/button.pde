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
    rectMode(CORNER);
    fill(colour);
    rect(x, y, w, h);
  }
  
  // Function to check if the button has been clicked
  boolean clicked(int mX, int mY) {
    // Check if mouse coordinates are within bounds
    if((mX >= x && mX <= (x + w)) && (mY >= y && mY <= y)) return true;
    else return false;
  }
}
