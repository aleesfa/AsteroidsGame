class Spaceship extends Floater  
{   
    public Spaceship()
    {
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -4; 
      yCorners[0] = -8; 
      xCorners[1] = -2;
      yCorners[1] = -2;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = 16;
      yCorners[3] = 0;
      myColor = 255;
      myCenterX = myCenterY = 200;
      myXspeed = myYspeed = 0;
      myPointDirection = 0;
    }
    public double getDirection()
    {
      return myPointDirection;
    }
    public void setDirection(double x)
    {
      myPointDirection = x;
    }
    public double getCenterX()
    {
      return myCenterX;
    }
    public double getCenterY()
    {
      return myCenterY;
    }
    public void setCenterX(double y)
    {
      myCenterX = y;
    }
    public void setCenterY(double z)
    {
      myCenterY = z;
    }
    public void setXSpeeds(double s)
    {
      myXspeed = s;
    }
    public void setYSpeeds(double sTwo)
    {
      myYspeed = sTwo;
    }
    public double getXSpeed()
    {
      return myXspeed;
    }
    public double getYSpeed()
    {
      return myYspeed;
    }
}
