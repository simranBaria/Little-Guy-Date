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
    
    goodX = 200;
    badX = 600;
    
    goodButton = new Button(goodX - 50, 100, 100, 50, color(255, 212, 244));
    badButton = new Button(badX - 50, 100, 100, 50, color(255, 212, 244));
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
  
  void setGoodX(int goodX) {
    this.goodX = goodX;
  }
  
  void setBadX(int badX) {
    this.badX = badX;
  }
}
