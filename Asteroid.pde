class Asteroid extends Floater 
{
  public double speed;
  public Asteroid()
  {
    speed = Math.random() *2 -1;
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8; 
    yCorners[0] = -8; 
    xCorners[1] = -8;
    yCorners[1] = 8;
    xCorners[2] = 8;
    yCorners[2] = 8;
    myColor = color(255);
    myCenterX = myCenterY = 300;
    myXspeed = Math.random() * 3 -1;
    myYspeed = Math.random() * 3 -1;
    myPointDirection = 0;
  }
  //a move() method that also turns (rotates) each Asteroid at its own speed
  public void move()
  {
    turn(speed);
    super.move();
  }
  public double getCenterX()
  {
    return myCenterX;
  }
  public double getCenterY()
  {
    return myCenterY;
  }
}
