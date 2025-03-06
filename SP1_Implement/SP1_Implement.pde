//Colors for group names cyan and yellow
int[] colorGName ={#16DDF5, #F3FA47};
//Fonts for both Groupnames and for capitalized country names
PFont groupF, countryF;
//Arrays for all information needed for columns, names and files
PImage[] flags; //Declaring flags as my variable for country files
String[] columnA = {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"}; //columns for countries with their specified names
String[] columnB = {"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"};
String[] columnC = {"FRANCE", "AUSTRALIA", "PERU", "DENMARK"};
String[] columnD = {"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"};
String[] countriesF = {"Russia.png", "Saudi.png", "egypt.png", "Uruguay.png", //All country flag files
  "Portugal.png", "Spain.png", "Moro.png", "Iran.png", "France.png", "Aussie.png",
  "Peru.png", "Denmark.png", "Argen.png", "Iceland.png", "Croatia.png", "Nigeria.png"};
String[] groups = {"GROUP A", "GROUP B", "GROUP C", "GROUP D"}; //Group names for each group of columns

DisplayAll display; // giving class the variable display
// setup runs once
void setup() {
  size(800, 450); // Size of sketch
  flags = new PImage[countriesF.length];
  for (int i = 0; i < countriesF.length; i++) {
    flags[i] = loadImage(countriesF[i]); // Load each flag image
  } // fonts and creating new object
  groupF = loadFont("SegoeUI-Bold-30.vlw");
  countryF = loadFont("LeelawadeeUI-30.vlw");
  display = new DisplayAll(groupF, countryF, colorGName, groups, countriesF, flags);
}

void draw() { 
  background(42, 55, 87);
  // Line in the middle with a strokeWeight of 3
  stroke(255);
  strokeWeight(3);
  line(400, 0, 400, 450);

  //calling method with object display
  //displaying our end result with x, y, groups array and color array
  display.createDisplay(width/5.5, height/20, 0, columnA, 0);
  display.createDisplay(width/5.5, height/1.82, 1, columnB, 1);
  display.createDisplay(2*width/2.87, height/20, 2, columnC, 0);
  display.createDisplay(2*width/2.87, height/1.82, 3, columnD, 1);
}
