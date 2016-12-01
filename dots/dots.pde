float pos;
float[] angle1;
float[] angle2;
float[] dots;

void setup () {
 size(640,640,P2D);
 stroke(0,0,100);
 strokeWeight(10);
 pos = height;
 
 dots = new float[width/4];
 angle1 = new float[width/4];
 angle2 = new float[width/4];
 for (int i = 0; i < width/4; i++) {
  dots[i] = i*55;
  angle1[i] = i;
  angle2[i] = i;
 }
 
}

void draw () {
  background(0,100,0);
  
  for (int i = 0; i < width/4; i++) {
    float y1 = (sin(angle1[i]) * pos/2) + pos/2;
    float y2 = (sin(angle2[i]) * pos/2) + pos/2;
    line(dots[i],y1,dots[i],y2);
    line(y1,dots[i],y2,dots[i]);
    angle1[i] += 0.01;
    angle2[i] += 0.012;
  }
  
}