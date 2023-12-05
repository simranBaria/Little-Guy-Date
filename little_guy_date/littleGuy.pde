class LittleGuy {
  // Initialize variables
  int style, x, y;
  String expression;
  
  // Constructor
  LittleGuy(int style) {
    // Create
    this.style = style;
    this.x = 0;
    this.y = 0;
    expression = "neutral";
  }
  
  // Function to set character position
  void setPosition(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  // Function to display character
  void display() {
    rectMode(CORNER);
    noStroke();
    
    // Display the character based on the style
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
  
  // Function to draw style 1
  void draw1() {
    
    // Body
    fill(174, 32, 25);
    quad(x - 30, y, x + 30, y, x + 60, y + 120, x - 60, y + 120);
    fill(234, 236, 238);
    rect(x, y, 30, 120);
    
    // Head
    fill(233, 200, 155);
    rect(x - 40, y - 60, 100, 40);
    rect(x - 40, y - 20, 80, 20);
    ellipse(x + 40, y - 20, 40, 40);
    
    // Bandage
    fill(236, 228, 218);
    rect(x - 30, y - 60, 90, 10);
    fill(190, 180, 169);
    triangle(x - 30, y - 50, x - 30, y - 40, x, y - 50);
    
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
    
    // Eyes
    expression();
  }
  
  // Function to draw style 2
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
    fill(38, 21, 123);
    rect(x, y, 30, 120);
    
    // Head
    fill(231, 201, 172);
    rect(x - 40, y - 60, 100, 40);
    rect(x - 40, y - 20, 80, 20);
    ellipse(x + 40, y - 20, 40, 40);
    
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
    
    // Eyes
    expression();
  }
  
  // Function to draw style 3
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
    
    // Eyes
    expression();
  }
  
  // Function to draw style 4
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
    
    // Eyes
    expression();
  }
  
  // Function to draw style 5
  void draw5() {
    // Hair 1
    fill(236, 204, 131);
    quad(x - 40, y - 10, x - 30, y, x - 40, y + 60, x - 60, y + 30);
    quad(x + 40, y + 60, x + 60, y + 40, x + 50, y + 10, x + 30, y);
    quad(x + 30, y, x + 60, y, x + 70, y + 30, x + 50, y + 40);
    quad(x + 60, y + 20, x + 70, y + 10, x + 60, y - 10, x + 40, y);
    quad(x + 30, y - 10, x + 60, y + 10, x + 80, y, x + 70, y - 20);
    quad(x + 30, y - 10, x + 70, y - 20, x + 70, y - 80, x + 20, y - 100);
    quad(x + 20, y - 100, x + 30, y - 120, x + 60, y - 120, x + 70, y - 80);
    
    // Hairtie
    fill(195, 93, 167);
    quad(x + 10, y - 90, x + 20, y - 100, x + 60, y - 80, x + 60, y - 70);
    
    // Body
    fill(213, 116, 170);
    quad(x - 30, y, x + 30, y, x + 60, y + 120, x - 60, y + 120);
    
    // Head
    fill(255, 219, 193);
    rect(x - 60, y - 60, 100, 40);
    rect(x - 40, y - 20, 80, 20);
    ellipse(x - 40, y - 20, 40, 40);
    
    // Hair 2
    fill(236, 204, 131);
    quad(x - 60, y - 20, x - 70, y, x - 80, y + 20, x - 60, y + 40);
    quad(x - 60, y - 60, x - 70, y - 50, x - 70, y, x - 60, y - 20);
    quad(x - 80, y - 90, x - 70, y - 50, x - 40, y - 40, x - 40, y - 70);
    quad(x - 40, y - 70, x - 40, y - 60, x - 10, y - 30, x - 10, y - 70);
    quad(x - 10, y - 70, x - 10, y - 60, x + 20, y - 30, x + 20, y - 70);
    quad(x + 20, y - 70, x + 20, y + 40, x + 40, y + 20, x + 30, y);
    quad(x + 20, y - 70, x + 30, y + 10, x + 60, y - 30, x + 60, y - 70);
    quad(x - 40, y - 70, x - 30, y - 100, x + 40, y - 90, x + 60, y - 70);
    triangle(x - 80, y - 90, x - 40, y - 70, x - 30, y - 100);
    rect(x + 30, y - 10, 20, 20);
    
    // Eyes
    expression();
  }
  
  // Function to draw style 6
  void draw6() {
    // Hair 1
    fill(44, 26, 17);
    quad(x - 70, y - 20, x - 60, y + 10, x - 50, y + 30, x - 60, y - 20);
    quad(x - 60, y - 20, x - 50, y + 30, x - 40, y + 10, x - 40, y);
    quad(x - 40, y, x - 30, y, x - 30, y + 50, x - 50, y + 10);
    quad(x + 30, y, x + 30, y + 60, x + 50, y, x + 40, y - 40);
    quad(x + 40, y - 40, x + 60, y, x + 50, y + 30, x + 40, y + 20);
    quad(x + 40, y - 40, x + 40, y - 50, x + 60, y - 40, x + 70, y);
    quad(x + 40, y - 40, x + 70, y, x + 60, y + 20, x + 40, y);
    
    // Body
    fill(19, 45, 127);
    quad(x - 30, y, x + 30, y, x + 60, y + 120, x - 60, y + 120);
    fill(255, 0, 98);
    rect(x - 30, y, 30, 120);
    
    // Head
    fill(104, 60, 36);
    rect(x - 60, y - 60, 100, 40);
    rect(x - 40, y - 20, 80, 20);
    ellipse(x - 40, y - 20, 40, 40);
    
    // Hair 2
    fill(44, 26, 17);
    quad(x - 80, y - 60, x - 80, y, x - 70, y - 20, x - 60, y - 60);
    quad(x - 70, y - 20, x - 60, y - 20, x - 50, y - 40, x - 60, y - 60);
    quad(x - 90, y - 60, x - 60, y - 60, x - 40, y - 90, x - 80, y - 70);
    quad(x - 70, y - 60, x - 40, y - 30, x - 20, y - 50, x - 40, y - 90);
    quad(x - 60, y - 100, x - 40, y - 110, x + 30, y - 100, x - 40, y - 90);
    quad(x - 20, y - 50, x - 20, y - 40, x - 10, y - 40, x + 20, y - 60);
    quad(x - 40, y - 90, x - 20, y - 50, x + 20, y - 60, x + 30, y - 100);
    quad(x + 30, y - 100, x + 20, y - 60, x + 40, y + 10, x + 50, y);
    quad(x + 30, y - 100, x + 60, y - 80, x + 70, y - 50, x + 40, y - 40);
    triangle(x + 40, y - 50, x + 70, y - 50, x + 70, y - 30);
    
    // Eyes
    expression();
  }
  
  // Method to change the expression
  void setExpression(String expression) {
    this.expression = expression;
  }
  
  // Method to draw the expression
  void expression() {
    fill(0);
    // Player characters
    if(style < 4) {
      switch(expression) {
        case "neutral":
        noStroke();
        ellipse(x + 5, y - 30, 10, 20);
        ellipse(x + 45, y - 30, 10, 20);
        break;
        
        case "happy":
        // Eyes
        noFill();
        stroke(0);
        strokeWeight(5);
        arc(x + 5, y - 15, 20 , 10, PI + QUARTER_PI, TWO_PI - QUARTER_PI);
        arc(x + 45, y - 15, 20 , 10, PI + QUARTER_PI, TWO_PI - QUARTER_PI);
        
        // Blush
        noStroke();
        fill(255, 115, 144, 127.5);
        ellipse(x - 5, y - 10, 30, 10);
        ellipse(x + 55, y - 10, 30, 10);
        break;
        
        case "sad":
        noStroke();
        ellipse(x + 5, y - 30, 10, 20);
        ellipse(x + 45, y - 30, 10, 20);
        stroke(0);
        strokeWeight(5);
        line(x - 5, y - 35, x + 10, y - 40);
        line(x + 40, y - 40, x + 55, y - 35);
        break;
      }
    }
    // Date characters
    else {
      switch(expression) {
        case "neutral":
        noStroke();
        ellipse(x - 45, y - 30, 10, 20);
        ellipse(x - 5, y - 30, 10, 20);
        break;
        
        case "happy":
        // Eyes
        noFill();
        stroke(0);
        strokeWeight(5);
        arc(x - 45, y - 15, 20 , 10, PI + QUARTER_PI, TWO_PI - QUARTER_PI);
        arc(x - 5, y - 15, 20 , 10, PI + QUARTER_PI, TWO_PI - QUARTER_PI);
        
        // Blush
        noStroke();
        fill(255, 115, 144, 127.5);
        ellipse(x - 55, y - 10, 30, 10);
        ellipse(x + 5, y - 10, 30, 10);
        break;
        
        case "angry":
        noStroke();
        ellipse(x - 45, y - 30, 10, 20);
        ellipse(x - 5, y - 30, 10, 20);
        stroke(0);
        strokeWeight(5);
        line(x - 55, y - 45, x - 40, y - 40);
        line(x - 10, y - 40, x + 5, y - 45);
        break;
      }
    }
  }
}
