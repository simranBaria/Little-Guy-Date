class Button {
  // Initialize variables
  int x, y, w, h;
  color colour, highlight;
  
  // Constructor
  Button(int x, int y, int w, int h, color colour, color highlight) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.colour = colour;
    this.highlight = highlight;
  }
  
  //Function to display button
  void display() {
    // Draw the button
    noStroke();
    rectMode(CORNER);
    
    // Highlight the button if it's being hovered over
    if(rollover()) fill(highlight);
    else fill(colour);
    
    rect(x, y, w, h);
  }
  
  // Function to check if the button is being hovered over
  boolean rollover() {
    // Check if mouse coordinates are within bounds
    if((mouseX >= x && mouseX <= (x + w)) && (mouseY >= y && mouseY <= (y + h))) return true;
    else return false;
  }
  
  // Function to set x
  void setX(int x) {
    this.x = x;
  }
  
  // Function to set w
  void setW(int w) {
    this.w = w;
  }
}
