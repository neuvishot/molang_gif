PImage[] molgif;
int molFrames;
int flip;

PImage[] congrats;
int molcong;
int conflip;

PFont cheese;

void setup() {
  size(600, 600);
  molcong = 41;
  congrats = new PImage[molcong];
  int rah = 0;
   while (rah < molcong) {
    congrats[rah] = loadImage("frame_"+rah+"_delay-0.04s");
    rah++;
  }
  
  cheese = createFont("CheeseOrange-Regular.ttf", 50);// the number beside is size
  
  molFrames = 40;
  molgif = new PImage[molFrames];
  int frame = 0;
  while (frame < molFrames) {
    molgif[frame] = loadImage("frame_"+frame+"_delay-0.07s.gif");
    frame++;
  }
}

void draw() {
  image(molgif[flip], 0, 0, width, height);
    if (frameCount % 3 == 0) flip++;
    if (flip == molFrames) {
      flip = 0;
    }
    
    textFont(cheese);
    text("kasghf", 300, 300);
    
    
  }
