class Star //note that this class does NOT extend Floater
{
  int col;
  double x, y;
  public Star()
  {
    col = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    x =  Math.random()*400;
    y =  Math.random()*400;
  }
  public void show()
  {
    fill(col);
    ellipse((int)x, (int)y, 1, 1);
  }
}

