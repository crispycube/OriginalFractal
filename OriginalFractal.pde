public void setup(){
  size(400, 400);
  fill(256, 0, 0);

}
public void draw(){
  myFractal(200, 200, 100, 100, 5);
}

public void myFractal(int x, int y, float R, float r, int petals){
  if(R < 1){
    return;
  }
  
  petalRing(x, y, 0, R, r, petals);
  
  myFractal(x, y, 2 * R /3, 2 * r / 3, petals);
}

public void petalRing(int x, int y, float theta, float R, float r, int petals){
  ellipse(x + R * (float)Math.cos(theta), y + R * (float)Math.sin(theta), r, r);
  if(theta >= 2*Math.PI){
    return;
  }
  petalRing(x, y, theta + (float)Math.PI/(petals), R, r, petals);
}
