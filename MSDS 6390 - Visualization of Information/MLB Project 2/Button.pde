class Button {
  // Properties
  PVector position;
  Dimension dimension;
  String label;
  color labelCol, labelTextCol;
  color offState, onState, overState, pressState;
  color[] states = {
    offState, onState, overState, pressState
  };
  boolean hasBorder = false;
  boolean isSelected = false;
  int mouseClickCount=0;

  // Constructors
  Button() {
  }

  Button(PVector position, Dimension dimension, 
    String label, color[] states) {
    this.position = position;
    this.dimension = dimension;
    this.label = label;
    labelCol = states[0];
    labelTextCol = #ffffff;
    offState = states[0];
    onState = states[1];
    overState = states[2];
    pressState = states[3];
    this.states = states;
  }
  
  // Methods
  boolean isHit() {
    if (mouseX >= position.x && mouseX <= position.x + dimension.w &&
      mouseY >= position.y && mouseY <= position.y + dimension.h) {
      return true;
    }
    return false;
  }

  void display() {
    if (hasBorder) {
      stroke(100);
    } else {
      noStroke();
    }
    fill(labelCol);
    rect(position.x, position.y, dimension.w, dimension.h);

    fill(labelTextCol);
    float tw = textWidth(label);
    textAlign(LEFT, CENTER);
    text(label, position.x +(dimension.w-tw)/2.0, position.y + dimension.h/2);
  }
}