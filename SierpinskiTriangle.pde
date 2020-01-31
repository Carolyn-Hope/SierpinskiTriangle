double layers = 0;
public void setup()
{
size(800,800);
}
public void draw()
{
  background(255);
  noStroke();
  fill(100,0,255);
  if(layers < 5){
    layers += .01;
  }
  sierpinski(100,100,600,(int)layers);
}
/*public void mouseDragged()//optional
{

}*/
public void sierpinski(float x, float y, float len, int layers) {
  if(layers <= 0){
    rect(x, y, len, len);
  }
  else{
    for(int ix = 0; ix < 3; ix++){
      for(int iy = 0; iy < 3; iy++){
        if(iy != 1 || ix != 1){
          sierpinski(x + ix*len/3, y + iy*len/3, len/3, layers - 1);
        }
      }
    }
  }
}
