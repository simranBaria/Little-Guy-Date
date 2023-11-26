class Question {
  // Initialize variables
  String question, goodAnswer, badAnswer;
  Button goodButton, badButton;
  
  // Constructor
  Question(String question, String goodAnswer, String badAnswer) {
    this.question = question;
    this.goodAnswer = goodAnswer;
    this.badAnswer = badAnswer;
    
    goodButton = new Button(150, 100, 100, 50, color(255, 212, 244));
    badButton = new Button(550, 100, 100, 50, color(255, 212, 244));
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
    text(goodAnswer, 200, 130);
    text(badAnswer, 600, 130);
  }
}
