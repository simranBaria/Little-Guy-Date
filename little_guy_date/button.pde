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
    noStroke();
    rectMode(CORNER);
    fill(colour);
    rect(x, y, w, h);
  }
  
  // Function to check if the button has been clicked
  boolean clicked() {
    //println("called");
    // Check if mouse coordinates are within bounds
    if((mouseX >= x && mouseX <= (x + w)) && (mouseY >= y && mouseY <= (y + h))) {
      //println("clicked");
      return true;
    }
    else {
      //println("false");
      return false;
    }
  }
}
