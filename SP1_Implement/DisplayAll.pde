class DisplayAll {
  PFont groupF, countryF;
  int[] colorGName;
  String[] groups, countriesF;
  PImage[] flags;

// Constructor to initialize class instances
  DisplayAll(PFont groupF, PFont countryF, int[] colorGName, String[] groups, String[] countriesF, PImage[] flags) {
    this.groupF = groupF;
    this.countryF = countryF;
    this.colorGName = colorGName;
    this.groups = groups;
    this.countriesF = countriesF;
    this.flags = flags;
  }

  // Method to create the display of groups and countries
  void createDisplay(float x, float y, int groupIndex, String[] column, int colorIndex) {
    textFont(groupF, 18); // Set font for group names
    fill(colorGName[colorIndex]); // Set color for group names
    text(groups[groupIndex], x, y); // Display group name

    // Display each country in the column
    for (int i = 0; i < column.length; i++) {
      //Squares for the end of the column
      float rectY = y + 10 + i * 45; // Adjust space for larger columns
      fill(255);
      rect(x - 150, rectY, 387, 30);
      drawShadow(x - 91, rectY - 1, 14, 31); // Adjust shadow size
      image(flags[groupIndex * 4 + i], x - 150, rectY - 1, 65, 33); // Adjust flag size
      textFont(countryF, 28);
      fill(0);
      text(column[i], x - 59, rectY + 26); // Adjust text position

      noStroke(); 
      fill(colorGName[colorIndex]);
      rect(x+230, rectY, 10, 30); // Adjust square at the end of every column
    }
  }

  // Method to draw a gradient shadow
  void drawShadow(float x, float y, float w, float h) {
    noFill();
    int gradient = int(w); // Number of steps for the gradient
    for (int i = 0; i <= gradient; i++) {
      int opacity = 70 - (70 * i / gradient); // give shadow, a disappearing effect
      stroke(0, 0, 0, opacity); // set the color for opacity
      line(x + i, y, x + i, y + h); //draw gradient line
    }
  }
}
