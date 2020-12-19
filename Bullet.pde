class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myXspeed = theShip.getXSpeed();
    myYspeed = theShip.getYSpeed();
    myPointDirection = theShip.getDirection();
    //check 0.6 or 6.0
    accelerate(6.0);
  }
  public void show()
  {
    //make circular bullets
    fill(127, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
}
