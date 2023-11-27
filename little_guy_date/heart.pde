class Heart {
  // Initialize variables
  PVector position, velocity;
  int centre, a, range;
  
  // Constructor
  Heart(int x, int y, int a, int xSpeed, int ySpeed) {
    position = new PVector(x, y);
    velocity = new PVector(xSpeed, ySpeed);
    
    // Variable for opacity
    this.a = a;
    
    // Variable for the initial x position
    centre = x;
    
    // Variable for the range the heart can move from the centre position
    range = int(random(100, 200));
  }
  
  // Function to display heart
  void display() {
    // Draw the heart
    stroke(255, 115, 144, a);
    fill(255, 115, 144, a);
    beginShape();
    bezier(position.x, position.y, position.x + 10, position.y - 10, position.x + 10, position.y, position.x, position.y + 10);
    bezier(position.x, position.y, position.x - 10, position.y - 10, position.x - 10, position.y, position.x, position.y + 10);
    endShape();
  }
  
  // Function to update heart
  void update() {
    position.add(velocity);
    
    //println(dist(position.x, position.y, centre, position.y));
    // Flip the x speed if the heart reached the end of it's range
    if(dist(centre, 0, position.x, 0) >= range) {
      println("flip");
      println(range);
      //println(dist(position.x, position.y, centre, position.y));
      velocity.x *= -1;
    }
    
    // Put the heart back at the bottom if it went off screen
    if(dist(0, height + 10, 0, position.y) >= height + 10) {
      position.y = height + 10;
    }
  }
  
  // Function to change opacity
  void setA(int a) {
    this.a = a;
  }
}
