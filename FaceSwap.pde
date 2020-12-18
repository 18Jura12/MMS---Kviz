import megamu.mesh.*; // potreban library na ovom linku: http://leebyron.com/mesh/

//Klizač se pomiće grubo i pritiskom mišem na segment ili 
//navigiranjem strelicama sa tipkovnice

PImage prvi;
PImage drugi;

//Ovdje čuvamo točke iz datoteke
float [][] points1 = new float[43][2];
float [][] points2 = new float[43][2];

//Ovdje spremamo trokute dobivene trijangulacijom
ArrayList<Triangle> triangles = new ArrayList<Triangle>();

int i = 0;
float x = 100;
boolean showTime = true;
boolean calcTime = false;
int startTime = 0;
int endTime = 0;

//koeficijent transformacije
float amt = 0;

void setup() {
   size(600,600,P2D);
   
   prvi = loadImage("prvi.png");
   drugi = loadImage("Doggie.png");

   load(loadStrings("prvi.data"), points1);
   load(loadStrings("Doggie.data"), points2);
   
   //klasa iz libraryja u kojoj je trijanguliran skup točaka
   Delaunay d1 = new Delaunay(points1);
   
   //Nalazi trokute iz linija koje sadrži klasa Delaunay
   findTriangles(d1, points2);
   
}

//Učitavanje točaka iz datoteke
void load(String[] file, float[][] points) {
  int i = 0;
  for(String s: file){
    String [] k = s.split("\t");
    points[i][0] = Float.parseFloat(k[0]); //Potrebno je polje float-ova za funkcioniranje klasa iz mesh
    points[i][1] = Float.parseFloat(k[1]);
    i++;
  }
}
void draw() {
  
   background(0);
   if(showTime) {
     textSize(25);
     text(endTime - startTime, width-100, height-30);
  }
  
  if(calcTime)
    startTime = millis();
    
  morph();
  
  if(calcTime)
    endTime = millis();
    
  calcTime = false;
  
  //crtanje klizaca
  for(int i = 25; i <= width-25; i+=11) {
   stroke(255);
   line(i, height-80, i, height-60);
  }
  stroke(255);
  line(25, height-70, width-25, height-70);
  line(25+(width-50)*amt, height-90, 25+(width-50)*amt, height-50);
   
}

void keyPressed() {
  if (key == ' ') {
    showTime = !showTime;
  } 
  if (key == CODED) {
    if( keyCode == RIGHT) {
        calcTime = true;
        if(i == 50) {
          i = 50;
        } else {
          i++;
        }
        amt = (float)i/50;
    }
    if(keyCode == LEFT) {
      calcTime = true;
        if(i == 0) {
          i = 0;
        } else {
          i--;
        }
        amt = (float)i/50;
    }
  }
}

void mouseDragged() {
   if (mouseY > height-100) {
    calcTime = true;
    x = constrain(mouseX-(mouseX-25)%11, 25, width-25);
    i = (mouseX-25)/11;
    amt = map(x, 25, width-25, 0, 1);
  }
}
