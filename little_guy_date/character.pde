class Character {
  int style, x, y;
  
  Character(int style, int x, int y) {
    this.style = style;
    this.x = x;
    this.y = y;
  }
  
  void setPosition(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void display() {
    noStroke();
    switch(style) {
      case 1:
      draw1();
      break;
      
      case 2:
      draw2();
      break;
     
      case 3:
      draw3();
      break;
      
      case 4:
      draw4();
      break;
      
      case 5:
      draw5();
      break;
      
      case 6:
      draw6();
      break;
    }
  }
  
  void draw1() {
    // Body
    fill(174, 32, 25);
    quad(x - 30, y, x + 30, y, x + 60, y + 120, x - 60, y + 120);
    
    // Head
    fill(233, 200, 155);
    rect(x - 40, y - 60, 100, 40);
    rect(x - 40, y - 20, 80, 20);
    ellipse(x + 40, y - 20, 40, 40);
    
    // Eyes
    fill(0);
    ellipse(x + 5, y - 30, 10, 20);
    ellipse(x + 45, y - 30, 10, 20);
    
    // Hair
    fill(57, 35, 12);
    quad(x - 40, y - 80, x - 20, y - 100, x + 20, y - 100, x - 10, y - 80);
    quad(x - 70, y - 40, x - 60, y - 60, x - 60, y - 70, x - 50, y - 50);
    quad(x - 70, y - 10, x - 60, y - 20, x - 60, y - 40, x - 50, y - 20);
    quad(x - 60, y + 10, x - 50, y - 20, x - 50, y - 40, x - 30, y - 30);
    quad(x - 30, y + 10, x - 30, y - 10, x - 40, y - 30, x - 40, y - 10);
    quad(x - 40, y - 30, x - 30, y - 10, x - 40, y + 10, x - 50, y - 10);
    quad(x + 60, y - 20, x + 60, y - 80, x + 70, y - 60, x + 70, y - 30);
    triangle(x + 60, y - 20, x + 70, y - 30, x + 80, y - 10);
    quad(x + 20, y - 60, x + 50, y - 50, x + 60, y - 40, x + 60, y - 60);
    quad(x - 10, y - 60, x + 20, y - 60, x + 40, y - 50, x + 20, y - 50);
    quad(x - 10, y - 90, x + 60, y - 90, x + 80, y - 70, x - 10, y - 70);
    quad(x - 60, y - 40, x - 30, y - 50, x - 30, y - 30, x - 50, y - 20);
    rect(x - 60, y - 70, 30, 40);
    rect(x - 50, y - 80, 110, 20);
    quad(x - 60, y - 70, x - 50, y - 80, x - 30, y - 50, x - 10, y - 60);
  }
  
  void draw2() {
    // Hair 1
    fill(54, 20, 7);
    triangle(x + 30, y, x + 50, y, x + 50, y + 20);
    quad(x + 40, y, x + 50, y + 10, x + 70, y, x + 70, y - 70);
    triangle(x + 50, y, x + 70, y - 30, x + 80, y - 10);
    rect(x - 40, y, 20, 20);
    
    // Body
    fill(72, 15, 81);
    quad(x - 30, y, x + 30, y, x + 60, y + 120, x - 60, y + 120);
    
    // Head
    fill(231, 201, 172);
    rect(x - 40, y - 60, 100, 40);
    rect(x - 40, y - 20, 80, 20);
    ellipse(x + 40, y - 20, 40, 40);
    
    // Eyes
    fill(0);
    ellipse(x + 5, y - 30, 10, 20);
    ellipse(x + 45, y - 30, 10, 20);
    
    // Hair 2
    fill(54, 20, 7);
    triangle(x - 40, y + 30, x - 40, y - 20, x - 30, y + 20);
    triangle(x - 60, y + 20, x - 40, y - 20, x - 40, y + 10);
    quad(x - 70, y - 10, x - 60, y - 30, x - 40, y - 10, x - 50, y + 10);
    quad(x - 60, y - 60, x - 20, y - 40, x - 40, y - 10, x - 60, y - 30);
    quad(x - 60, y - 60, x - 30, y - 80, x + 50, y - 60, x - 20, y - 40);
    quad(x - 50, y - 100, x - 30, y - 80, x - 40, y - 70, x - 50, y - 90);
    quad(x - 40, y - 90, x + 20, y - 100, x + 60, y - 80, x - 30, y - 70);
    quad(x + 50, y - 60, x + 60, y - 80, x + 70, y - 70, x + 60, y - 40);
    rect(x - 20, y - 80, 80, 20);
  }
  
  void draw3() {
    // Hair 1
    fill(37, 37, 39);
    triangle(x - 70, y, x - 60, y + 20, x - 60, y);
    triangle(x - 60, y, x - 50, y + 20, x - 50, y);
    triangle(x - 50, y + 10, x - 40, y + 20, x - 40, y + 10);
    triangle(x - 40, y + 10, x - 30, y + 30, x - 30, y);
    quad(x + 30, y, x + 60, y - 20, x + 40, y + 10, x + 30, y + 30);
    quad(x + 40, y + 10, x + 50, y + 20, x + 60, y - 10, x + 60, y - 20);
    
    // Body
    fill(121, 123, 186);
    quad(x - 30, y, x + 30, y, x + 60, y + 120, x - 60, y + 120);
    
    // Head
    fill(238, 217, 204);
    rect(x - 40, y - 60, 100, 40);
    rect(x - 40, y - 20, 80, 20);
    ellipse(x + 40, y - 20, 40, 40);
    
    // Eyes
    fill(0);
    ellipse(x + 5, y - 30, 10, 20);
    ellipse(x + 45, y - 30, 10, 20);
    
    // Hair 2
    fill(37, 37, 39);
    quad(x - 80, y - 40, x - 70, y - 70, x - 50, y - 80, x - 60, y - 60);
    quad(x - 60, y - 80, x - 40, y - 90, x - 30, y - 90, x - 30, y - 80);
    quad(x - 30, y - 90, x - 20, y - 100, x, y - 100, x - 10, y - 90);
    triangle(x - 10, y - 90, x + 40, y - 100, x + 70, y - 90);
    quad(x - 60, y - 60, x - 50, y - 80, x - 20, y - 40, x - 30, y - 30);
    rect(x - 70, y - 60, 20, 60);
    rect(x - 50, y - 60, 10, 70);
    quad(x - 40, y - 60, x - 30, y - 60, x - 30, y, x - 40, y + 10);
    triangle(x - 20, y - 40, x - 20, y - 30, x, y - 50);
    triangle(x, y - 50, x, y - 30, x + 10, y - 40);
    triangle(x + 10, y - 40, x + 20, y - 30, x + 30, y - 50);
    triangle(x + 30, y - 50, x + 30, y - 40, x + 40, y - 50);
    triangle(x + 40, y - 50, x + 50, y - 50, x + 50, y - 40);
    quad(x + 50, y - 50, x + 60, y - 30, x + 80, y - 70, x + 60, y - 90);
    triangle(x + 70, y - 10, x + 70, y - 30, x + 80, y - 30);
    quad(x + 60, y - 60, x + 70, y - 60, x + 70, y - 20, x + 60, y + 10);
    rect(x + 70, y - 70, 10, 40);
    quad(x - 50, y - 80, x - 30, y - 90, x, y - 50, x - 20, y - 40);
    rect(x - 30, y - 90, 90, 40);
    triangle(x, y - 50, x + 10, y - 40, x + 30, y - 50);
  }
  
  void draw4() {
    // Hair 1
    fill(165, 42, 34);
    triangle(x - 70, y - 20, x - 50, y - 20, x - 50, y + 10);
    triangle(x - 50, y - 10, x - 30, y, x - 30, y + 20);
    rect(x - 70, y - 40, 10, 20);
    
    // Body
    fill(109, 82, 189);
    quad(x - 30, y, x + 30, y, x + 60, y + 120, x - 60, y + 120);
    
    // Head
    fill(255, 217, 197);
    rect(x - 60, y - 60, 100, 40);
    rect(x - 40, y - 20, 80, 20);
    ellipse(x - 40, y - 20, 40, 40);
    
    // Eyes
    fill(0);
    ellipse(x - 45, y - 30, 10, 20);
    ellipse(x - 5, y - 30, 10, 20);
    
    // Hair 2
    fill(165, 42, 34);
    triangle(x - 60, y - 60, x - 60, y - 30, x - 50, y - 60);
    triangle(x - 50, y - 60, x - 50, y - 40, x - 40, y - 60);
    triangle(x - 40, y - 60, x - 30, y - 40, x - 30, y - 60);
    triangle(x - 30, y - 60, x - 10, y - 30, x - 10, y - 60);
    triangle(x - 10, y - 60, x, y - 40, x, y - 60);
    triangle(x, y - 60, x + 20, y - 40, x + 20, y - 60);
    quad(x + 20, y - 60, x + 20, y - 50, x + 30, y - 30, x + 30, y - 60);
    quad(x + 30, y - 40, x + 50, y - 40, x + 60, y - 20, x + 60, y - 10);
    quad(x + 30, y - 60, x + 50, y - 40, x + 50, y - 20, x + 30, y + 10);
    triangle(x + 30, y - 30, x + 50, y - 20, x + 40, y + 10);
    quad(x + 50, y - 60, x + 60, y - 40, x + 60, y - 30, x + 50, y - 40);
    triangle(x - 60, y - 90, x - 40, y - 100, x - 40, y - 90);
    triangle(x - 60, y - 70, x - 50, y - 60, x - 80, y - 20);
    quad(x - 80, y - 50, x - 70, y - 70, x - 40, y - 100, x - 60, y - 60);
    triangle(x - 70, y - 10, x - 70, y - 40, x - 50, y - 60);
    quad(x - 50, y - 80, x - 40, y - 100, x - 10, y - 100, x + 20, y - 80);
    quad(x - 60, y - 80, x + 40, y - 80, x + 70, y - 60, x - 60, y - 60);
    triangle(x + 10, y - 110, x + 10, y - 80, x + 40, y - 80);
    rect(x + 30, y - 60, 20, 20);
  }
  
  void draw5() {
    // Body
    fill(121, 123, 186);
    quad(x - 30, y, x + 30, y, x + 60, y + 120, x - 60, y + 120);
    
    // Head
    fill(238, 217, 204);
    rect(x - 60, y - 60, 100, 40);
    rect(x - 40, y - 20, 80, 20);
    ellipse(x - 40, y - 20, 40, 40);
    
    // Eyes
    fill(0);
    ellipse(x - 45, y - 30, 10, 20);
    ellipse(x - 5, y - 30, 10, 20);
  }
  
  void draw6() {
    // Body
    fill(121, 123, 186);
    quad(x - 30, y, x + 30, y, x + 60, y + 120, x - 60, y + 120);
    
    // Head
    fill(238, 217, 204);
    rect(x - 60, y - 60, 100, 40);
    rect(x - 40, y - 20, 80, 20);
    ellipse(x - 40, y - 20, 40, 40);
    
    // Eyes
    fill(0);
    ellipse(x - 45, y - 30, 10, 20);
    ellipse(x - 5, y - 30, 10, 20);
  }
}
