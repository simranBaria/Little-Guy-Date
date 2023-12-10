class Question {
  // Initialize variables
  String question, goodAnswer, badAnswer;
  Button goodButton, badButton;
  int goodX, badX;
  
  // Constructor
  Question(String question, String goodAnswer, String badAnswer) {
    this.question = question;
    this.goodAnswer = goodAnswer;
    this.badAnswer = badAnswer;
    
    // Button x positions
    goodX = 200;
    badX = 600;
    
    // Create buttons
    goodButton = new Button(goodX - 50, 100, 100, 50, color(255, 212, 244), color(208, 150, 192));
    badButton = new Button(badX - 50, 100, 100, 50, color(255, 212, 244), color(208, 150, 192));
  }
  
  // Function to display the question
  void display() {
    // Question
    font = createFont("Spectral-Medium", 35);
    fill(255);
    textFont(font);
    textAlign(CENTER);
    textSize(25);
    text(question, width / 2, 50);
    
    // Buttons
    goodButton.display();
    badButton.display();
    
    // Answers
    fill(255);
    text(goodAnswer, goodX, 130);
    text(badAnswer, badX, 130);
  }
  
  // Function to set the x position of the good answer button
  void setGoodX(int goodX) {
    this.goodX = goodX;
  }
  
  // Function to set the x position of the bad answer button
  void setBadX(int badX) {
    this.badX = badX;
  }
}
