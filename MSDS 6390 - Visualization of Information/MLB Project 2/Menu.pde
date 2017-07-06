class Menu {

  String[] labels;
  color[] states;
  Dimension dimension;
  Button[] buttons;
  int layer;

  Menu() {
  }

  Menu(Dimension dimension, String[] labels, color[] states, int layer) {
    this.dimension = dimension;
    this.labels = labels;
    this.states = states;
    this.layer = layer;
    buttons = new Button[labels.length];

    generate();
  }

  void generate() {

    float btnW, btnH;
    btnW = dimension.w/buttons.length;
    btnH = dimension.h;

    for (int i=0; i<buttons.length; i++) {
      PVector pos;
      Dimension dim;
      pos = new PVector(btnW * i, layer * btnH);
      dim = new Dimension(btnW, btnH);
      buttons[i] = new Button(pos, dim, labels[i], states);
    }
  }

  void display() {
    for (int i=0; i<buttons.length; i++) {
      buttons[i].display();
    }

    createMenuEvents();
  }

  void createMenuEvents() {
    for (int i=0; i<buttons.length; i++) {
      // pressed
      if (buttons[i].isHit() && mousePressed) {
        select(i);
        buttons[i].labelCol = states[3];
        // mouse over
      } else if (buttons[i].isHit() && !buttons[i].isSelected) {
        buttons[i].labelCol = states[2];
        buttons[i].labelTextCol = #000000;
        // selected
      } else if (buttons[i].isSelected) {
        buttons[i].labelCol = states[1];
        buttons[i].labelTextCol = #000000;
        // default
      } else {
        buttons[i].labelCol = states[0];
        buttons[i].labelTextCol = #ffffff;
      }
    }
  }
  void select(int isSelectedID) {
    for (int i=0; i<buttons.length; i++) {
      if (i==isSelectedID) {
        buttons[i].isSelected = true;
      } else {
        buttons[i].isSelected = false;
      }
    }
  }

  String getSelected() {
    String btn;
    for (int i=0; i<buttons.length; i++) {
      if (buttons[i].isSelected) {
        return buttons[i].label;
      }
    }
    return "";
  }
}