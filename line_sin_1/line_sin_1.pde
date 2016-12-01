float[] angle;
float[] lines;
int h;
int w;


void setup () {
 size(640,640,P3D);
 strokeWeight(10);
 frameRate(30);
 h = height;
 w = width;
 blendMode(ADD);
 
 lines = new float[w];
 angle = new float[w];
 for (int i = 0; i < w; i++) {
  lines[i] = i * 20;
  angle[i] = i * 0.1;
 }
 
}

void draw () {
  background(0);
  stroke(0,0,200);
  for (int p = -1000; p <= 1000; p += 20) {
    wave(p);
  } 
  
  
  //saveFrame("line_sin/####.tif");
  
}

void wave(float pos) {
  for (int i = 0; i < w; i++) {
    float y = (sin(angle[i]) * h/10) + h/2;
    y = y + pos;
    line(lines[i],y - 5,lines[i],y + 5);
    angle[i] += 0.0002;
  }
}