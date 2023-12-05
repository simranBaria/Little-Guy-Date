class Heart {
  // Initialize variables
  PVector position, velocity;
  int centre, range, left, right;
  float a;
  
  // Constructor
  Heart(int x, int y, float a) {
    position = new PVector(x, y);
    
    // Variable for opacity
    this.a = a;
    
    // Variable for the initial x position
    centre = x;
    
    // Variable for the range the heart can move from the centre position
    range = int(random(100, 200));
    left = centre - range;
    right = centre + range;
    
    velocity = setPath();
  }
  
  // Function to display heart
  void display() {
    // Draw the heart
    stroke(255, 115, 144, a);
    strokeWeight(1);
    fill(255, 115, 144, a);
    beginShape();
    bezier(position.x, position.y, position.x + 10, position.y - 10, position.x + 10, position.y, position.x, position.y + 10);
    bezier(position.x, position.y, position.x - 10, position.y - 10, position.x - 10, position.y, position.x, position.y + 10);
    endShape();
  }
  
  // Function to update heart
  void update() {
    position.add(velocity);
    
    // Flip the x speed if the heart reached the end of it's range
    if(atBounds()) velocity = setPath();
    
    // Put the heart back at the bottom if it went off screen
    if(dist(0, height + 10, 0, position.y) >= height + 10) position.y = height + 10;
  }
  
  // Function to change opacity
  void setA(float a) {
    this.a = a;
  }
  
  // Function to check if the heart is at the edge of it's range
  boolean atBounds() {
    if(dist(centre, 0, position.x, 0) >= range) return true;
    else return false;
  }
  
  // Function to set a randomized path for the heart to follow
  PVector setPath() {
    // Use a random 2d vector to create a path
    PVector path = PVector.random2D();
    path.mult(5);
    
    // Rotate the vector if it's out of bounds
    if(path.y > 0) path.rotate(PI);
    if(position.x <= left && path.x < 0) path.rotate(HALF_PI);
    else if(position.x >= right && path.x > 0) path.rotate(-HALF_PI);
    
    return path;
  }
}
